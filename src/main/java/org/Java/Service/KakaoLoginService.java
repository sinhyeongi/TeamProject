package org.Java.Service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.DAO.Member_InfoDAO;
import org.Java.VO.MemberVO;
import org.Java.VO.Page;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class KakaoLoginService implements Page {

	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("카카오로그인");
		if(request.getParameter("token") == null) {
			request.setAttribute("title", "Loading......");
			return "Kakao_Login";
		}
		String token = request.getParameter("token"); //카카오 로그인 토큰
		System.out.println("토큰 = " + token);//토큰값 출력
		String header = "Bearer " + token; // Bearer 다음에 공백 추가
		
		String apiURL = "https://kapi.kakao.com/v2/user/me";
		
		
		Map<String, String> requestHeaders = new HashMap<>();
		requestHeaders.put("Authorization", header);
		//requestHeaders.put("Authorization", "Bearer " + token);
		String responseBody = getResponseBody(apiURL,requestHeaders);
		
		JSONParser parser = new JSONParser();
		JSONObject obj = null;
		
		try {
			obj = (JSONObject) parser.parse(responseBody);
		}catch(org.json.simple.parser.ParseException e) {
			e.printStackTrace();
		}
		Map<String,String> properties = (Map)obj.get("properties");
		System.out.println("id = "+obj.get("id").toString());
		String id = obj.get("id").toString();
		for(Map.Entry<String, String> property : properties.entrySet()) {
			System.out.println("key = " + property.getKey());
			System.out.println("value = " + property.getValue()); 
		}
		MemberVO vo = new MemberVO();
		vo.setId("ka_"+id);
		vo.setNickname(properties.get("nickname"));

		MemberVO logMember = MemberDAO.getinstance().CheckLogin_API(vo.getId());
		
		
        if(logMember == null) {
        	request.setAttribute("vo", vo);
        	System.out.println("미가입 회원");
        	return "Member_Insert";
        }else {
        	logMember.setInfo(Member_InfoDAO.getInstance().getData(logMember.getId()));
        	request.getSession().setAttribute("log", logMember.getId());
        	request.getSession().setAttribute("log_level", logMember.getInfo().getLevel());
        	System.out.println("기존 회원");
        	return "Main";
        }
//		HttpSession session = request.getSession();
//		MemberVO vo = getMember(token);
//		System.out.println("로그인시도 I  D =  " + vo.getId());
//		System.out.println("로그인시도 name =  " + vo.getNinkname());
//		int check = MemberDAO.getinstance().checkId(vo.getId());
//		
//		if(check == 0) {
//			System.out.println("존재하지 않는 아이디");
//			//아이디 닉네임 저장
//			return "Main";
//		}else {
//			//로그인 성공 시
//			System.out.println("존재하는 아이디");
//			session.setAttribute("id", vo.getId());
//			return "Login";
//		}
	}
	private static String getResponseBody(String apiUrl,Map<String, String> requestHeaders) {
		//url 연결
		HttpURLConnection con = connect(apiUrl);
		
		try {
			//메소드 POST
			con.setRequestMethod("POST");
			for(Map.Entry<String, String> header : requestHeaders.entrySet()) {
				//Map<String, String> requestHeaders
				//key에 있는 값을 request property로 설정
				con.setRequestProperty(header.getKey(), header.getValue());
			}
			int responseCode = con.getResponseCode();
			System.out.println("responseCode = "+responseCode);
			if ( responseCode == HttpURLConnection.HTTP_OK) {// 정상 호출
				return readBody(con.getInputStream());
			}else { // 에러 발생
				return readBody(con.getErrorStream());
			}
		} catch (IOException e) {
            throw new RuntimeException("API 요청과 응답 실패", e);
        } finally {
            con.disconnect();
        }
		
	}
	private static HttpURLConnection connect(String apiUrl) {
		try {
			//String apiURL = "https://kapi.kakao.com/v2/user/me";
			URL url = new URL(apiUrl);
			return (HttpURLConnection)url.openConnection();
        } catch (MalformedURLException e) {
            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
        } catch (IOException e) {
            throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
		}
	}
	
	private static String readBody(InputStream body) {
		InputStreamReader streamReader = new InputStreamReader(body);
		
		try(BufferedReader lineReader = new BufferedReader(streamReader)) {
			StringBuilder result = new StringBuilder();
			String line;
			while((line = lineReader.readLine()) != null) {
				result.append(line);
			}
			
			return result.toString();
		} catch (IOException e) {
			 throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
		}
		
	}
	
//	public MemberVO getMember(String access_token) {
//		String name = "";
//		
////		final String AUTH_HOST = "https://kauth.kakao.com";
////		final String tokenRequestUrl = AUTH_HOST + "/oauth/token";
////		
////		String CLIENT_ID ="";			//해당 앱의 REST API KEY정보.
////		String REDIRECT_URI = "";		//해당 앱의 설정된 uri.
////		String code = "";				//로그인 과정 중 얻은 authorization값
////		String token_type = "token_type";
//		
//		
//		String getPersnalInfoUrl ="https://kapi.kakao.com/v2/user/me"; //로그인 후 사용자 정보 받아오기 위한 url
//		
//		HttpsURLConnection conn = null;
//		OutputStreamWriter writer = null;
//		BufferedReader reader = null;
//		InputStreamReader isr = null;
//		URL url = null;
//		StringBuilder sb = new StringBuilder();
//		JSONObject result = null;
//		MemberVO vo=null;
//		
//		try {
//			// URL 객채 생성
//			url = new URL(getPersnalInfoUrl);
//			System.out.println(url);
//			// URL을 참조하는 객체를 URLConnection 객체로 변환
//			conn = (HttpsURLConnection)url.openConnection();
//			
//			// 커넥션 request 값 설정(key,value) 
//			conn.setRequestProperty("Authorization", "Bearer " +access_token.trim());
//			conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
//			conn.setRequestProperty("charset", "UTF-8");
//			
//			// 커넥션 request 방식 "POST"으로 설정
//			conn.setRequestMethod("POST");
//			// 받아온 데이터 출력 가능 상태로 변경 (default : false)
//			conn.setDoOutput(true);
//			
//			writer = new OutputStreamWriter(conn.getOutputStream(), "UTF-8");
//			writer.flush();
//			writer.close();
//			// log.info("header전송")
//			
//			int responseCode = conn.getResponseCode();
//			System.out.println("Sending 'POST' request to URL : "+getPersnalInfoUrl);
//			System.out.println("Response Code: "+ responseCode);
//			
//			reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//			// 데이터 입력 스트림에 담기
//			while(reader.ready()) {//line이 null이 아니라면
//				sb.append(reader.readLine());
//			}
//			System.out.println("response=" + sb.toString());
//			
//		} catch (IOException e) {
//			System.out.println("IOException err");
//			e.printStackTrace();
//		} finally{
//			conn.disconnect();
//		}
////				// JSON데이터에서 "data"라는 JSONObject를 가져온다.
////				JSONObject data = (JSONObject) result.get("data");
////				// JSONObject에서 Array데이터를 get하여 JSONArray에 저장한다.
////				JSONArray array = (JSONArray) data.get("movies");
//		try {
//			// JSONParser에 입력 스트림에 담은 JSON데이터(sb.toString())를 넣어 파싱한 다음 JSONObject로 반환한다.
//			result = (JSONObject) new JSONParser().parse(sb.toString());
//			StringBuilder out = new StringBuilder();
//			out.append(result.get("status") + ":" + result.get("status_message")+"\n");
//			System.out.println("properties = "+result.get("properties"));
//			
//			//맵으로 변환
//			Map<String, String> properties = (Map<String, String>)result.get("properties");
//			String nickname = properties.get("nickname");
//			String id = (String) result.get("id").toString();
//			System.out.println("nickname = " + properties.get("nickname"));
//			
//			vo = new MemberVO();
//			vo.setNinkname(nickname);
//			vo.setId(id);
//		} catch (ParseException e) {
//			System.out.println("parseExceiption err");
//			e.printStackTrace();
//		}
//		return vo;		
//	}

}