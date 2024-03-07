package org.Java.Util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class AddressUtil_kakao{
	public static String getXY(String addr) throws UnsupportedEncodingException{
		 // REST API 키. 카카오 개발자 사이트에서 발급받은 키를 여기에 입력하세요.
        String apiKey = "6505adeac5ede92be0eb70d12bd2766d";
        // 검색하고자 하는 주소
        String address = addr;
        // 주소값 UTF-8로 인코딩 *미인코딩시 오류 발생 할수있음
        String encodeaddress = URLEncoder.encode(address, "UTF-8");
        // 카카오 주소 검색 API 요청 URL
        String requestUrl = "https://dapi.kakao.com/v2/local/search/address.json?query=" + encodeaddress;
        String x = "";
        String y = "";
        String area = "";
        System.out.println("들어옴");
        HttpURLConnection conn = null;
        BufferedReader br = null;
        try {
            URL url = new URL(requestUrl);
            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Authorization", "KakaoAK " + apiKey);

            int responseCode = conn.getResponseCode();
            System.out.println(responseCode);
         
            if (responseCode == 200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
            }
            String inputLine;
            StringBuilder response_s = new StringBuilder();
            while ((inputLine = br.readLine()) != null) {
                response_s.append(inputLine);
            }
            // JSON 응답 파싱
            JSONParser parser = new JSONParser();
            JSONObject jsonObj = (JSONObject) parser.parse(response_s.toString());
            JSONArray documents = (JSONArray) jsonObj.get("documents");
            JSONObject firstItem = (JSONObject) documents.get(0);
            y = (String) firstItem.get("y"); // 위도
            x = (String) firstItem.get("x"); // 경도
            JSONObject addressObj = (JSONObject)firstItem.get("address"); // 지역 코드
            area = (String)addressObj.get("h_code");
            if(area.length() >= 5) {
            	area = area.substring(0,5);
            }
            
            System.out.println("위도: " + y);
            System.out.println("경도: " + x);
            
        } catch (Exception e) {
            e.printStackTrace();
            
        }finally {
        		try {
        			if(br != null) {
        				br.close();
        			}
        			if(conn != null) {
        				conn.disconnect();
        			}
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		return y+"/"+x+"/"+area;
	}
	 
}
