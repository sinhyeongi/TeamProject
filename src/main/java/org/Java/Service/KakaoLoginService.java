package org.Java.Service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Array;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.Java.DAO.MemberDAO;
import org.Java.VO.MemberVO;
import org.Java.VO.Page;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class KakaoLoginService implements Page {

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("자바서버");
		String access_token = request.getParameter("access_token"); //토큰
		System.out.println("토큰 = " + access_token);//토큰값 출력
		HttpSession session = request.getSession();
		MemberVO vo = getMember(access_token);
		System.out.println("로그인시도 I  D =  " + vo.getId());
		System.out.println("로그인시도 name =  " + vo.getNinkname());
		int check = MemberDAO.getinstance().checkId(vo.getId());
		
		if(check == 0) {
			System.out.println("존재하지 않는 아이디");
			//아이디 닉네임 저장
			return "Main";
		}else {
			//로그인 성공 시
			System.out.println("존재하는 아이디");
			session.setAttribute("id", vo.getId());
			return "Login";
		}
	}
	
	public MemberVO getMember(String access_token) {
		String name = "";
		
//		final String AUTH_HOST = "https://kauth.kakao.com";
//		final String tokenRequestUrl = AUTH_HOST + "/oauth/token";
//		
//		String CLIENT_ID ="";			//해당 앱의 REST API KEY정보.
//		String REDIRECT_URI = "";		//해당 앱의 설정된 uri.
//		String code = "";				//로그인 과정 중 얻은 authorization값
//		String token_type = "token_type";
		
		
		String getPersnalInfoUrl ="https://kapi.kakao.com/v2/user/me"; //로그인 후 사용자 정보 받아오기 위한 url
		
		HttpsURLConnection conn = null;
		OutputStreamWriter writer = null;
		BufferedReader reader = null;
		InputStreamReader isr = null;
		URL url = null;
		StringBuilder sb = new StringBuilder();
		JSONObject result = null;
		MemberVO vo=null;
		
		try {
			// URL 객채 생성
			url = new URL(getPersnalInfoUrl);
			System.out.println(url);
			// URL을 참조하는 객체를 URLConnection 객체로 변환
			conn = (HttpsURLConnection)url.openConnection();
			
			// 커넥션 request 값 설정(key,value) 
			conn.setRequestProperty("Authorization", "Bearer " +access_token.trim());
			conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			conn.setRequestProperty("charset", "UTF-8");
			
			// 커넥션 request 방식 "POST"으로 설정
			conn.setRequestMethod("POST");
			// 받아온 데이터 출력 가능 상태로 변경 (default : false)
			conn.setDoOutput(true);
			
			writer = new OutputStreamWriter(conn.getOutputStream(), "UTF-8");
			writer.flush();
			writer.close();
			// log.info("header전송")
			
			int responseCode = conn.getResponseCode();
			System.out.println("Sending 'POST' request to URL : "+getPersnalInfoUrl);
			System.out.println("Response Code: "+ responseCode);
			
			reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			// 데이터 입력 스트림에 담기
			while(reader.ready()) {//line이 null이 아니라면
				sb.append(reader.readLine());
			}
			System.out.println("response=" + sb.toString());
			
			conn.disconnect();
		} catch (IOException e) {
			System.out.println("IOException err");
			e.printStackTrace();
		}
//				// JSON데이터에서 "data"라는 JSONObject를 가져온다.
//				JSONObject data = (JSONObject) result.get("data");
//				// JSONObject에서 Array데이터를 get하여 JSONArray에 저장한다.
//				JSONArray array = (JSONArray) data.get("movies");
		try {
			// JSONParser에 입력 스트림에 담은 JSON데이터(sb.toString())를 넣어 파싱한 다음 JSONObject로 반환한다.
			result = (JSONObject) new JSONParser().parse(sb.toString());
			StringBuilder out = new StringBuilder();
			out.append(result.get("status") + ":" + result.get("status_message")+"\n");
			System.out.println("properties = "+result.get("properties"));
			
			//맵으로 변환
			Map<String, String> properties = (Map<String, String>)result.get("properties");
			String nickname = properties.get("nickname");
			String id = (String) result.get("id").toString();
			System.out.println("nickname = " + properties.get("nickname"));
			
			vo = new MemberVO();
			vo.setNinkname(nickname);
			vo.setId(id);
		} catch (ParseException e) {
			System.out.println("parseExceiption err");
			e.printStackTrace();
		}
		return vo;		
	}

}