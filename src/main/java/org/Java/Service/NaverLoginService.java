package org.Java.Service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Java.DAO.MemberDAO;
import org.Java.VO.MemberVO;
import org.Java.VO.Page;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class NaverLoginService implements Page {
	@Override
	public String Service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("네이버로그인");
		if(request.getParameter("token") == null) {
			request.setAttribute("title", "Loading......");
			return "Naver_Login";
		}
		String token = request.getParameter("token"); // 네이버 로그인 접근 토큰;
		System.out.println("token = "+token);
        String header = "Bearer " + token; // Bearer 다음에 공백 추가


        String apiURL = "https://openapi.naver.com/v1/nid/me";


        Map<String, String> requestHeaders = new HashMap<>();
        requestHeaders.put("Authorization", header);
        String responseBody = get(apiURL,requestHeaders);
        //String rs = responseBody.substring(responseBody.indexOf("\"respones\":"));
        JSONParser parser = new JSONParser();
        JSONObject obj = null;
        try {
        	obj = (JSONObject) parser.parse(responseBody);
        }catch(org.json.simple.parser.ParseException e) {
        	e.printStackTrace();
        }
        Map<String, String> p = (Map<String,String>) obj.get("response");
        System.out.println(obj);
        System.out.println();
        String id = p.get("id");
        MemberVO vo = new MemberVO();
        vo.setId("nv_"+id);
        vo.setEmail(p.get("email"));
        vo.setPhone(p.get("mobile"));
        vo.setName(p.get("name"));
        vo.setBirth(p.get("birthyear")+"-"+p.get("birthday"));
        MemberVO logMember = MemberDAO.getinstance().CheckLogin_API(vo.getId());
        if(logMember == null) {
        	request.setAttribute("vo", vo);
        	System.out.println("미가입 회원");
        	return "Member_Insert";
        }else {
        	request.setAttribute("log", logMember.getId());
        	System.out.println("기존 회원");
        	return "Main";
        }
	}
	 private static String get(String apiUrl, Map<String, String> requestHeaders){
	        HttpURLConnection con = connect(apiUrl);
	        try {
	            con.setRequestMethod("GET");
	            for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
	                con.setRequestProperty(header.getKey(), header.getValue());
	            }
	            int responseCode = con.getResponseCode();
	            if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
	                return readBody(con.getInputStream());
	            } else { // 에러 발생
	                return readBody(con.getErrorStream());
	            }
	        } catch (IOException e) {
	            throw new RuntimeException("API 요청과 응답 실패", e);
	        } finally {
	            con.disconnect();
	        }
	    }


	    private static HttpURLConnection connect(String apiUrl){
	        try {
	            URL url = new URL(apiUrl);
	            return (HttpURLConnection)url.openConnection();
	        } catch (MalformedURLException e) {
	            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
	        } catch (IOException e) {
	            throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
	        }
	    }


	    private static String readBody(InputStream body){
	        InputStreamReader streamReader = new InputStreamReader(body);


	        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
	            StringBuilder responseBody = new StringBuilder();


	            String line;
	            while ((line = lineReader.readLine()) != null) {
	                responseBody.append(line);
	            }


	            return responseBody.toString();
	        } catch (IOException e) {
	            throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
	        }
	    }
	
}
