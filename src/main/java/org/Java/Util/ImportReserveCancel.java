package org.Java.Util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class ImportReserveCancel {
	private final String IMPORT_CANCEL_URL = "https://api.iamport.kr/payments/cancel"; // 아임포트 주문취소 url
	private final String KEY = "4231548706878224"; // API KEY값
	private final String SECRET = "I9redwbQQCaSk11zhOqBFnFmM0uKv39woMClW9sQMB68xeiIuNRKuoC05FYfEMrwFNViN50FSMstveXG"; // API SECRET KEY
	public int ReserveCanle(String uid) {
		if(uid == null || uid.equals("")) {
			return -1;
		}
		int cnt = -1;
		int price = 0;
		String token = getImportToken();
		price = FindReserve(uid,token);
		if(price <= 0) {
			System.out.println("이미 취소된 예약");
			return cnt;
		}
		HttpURLConnection con = null;
		try {
			URL url = new URL(IMPORT_CANCEL_URL);
			con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("POST");
			con.setRequestProperty("Content-Type", "application/json");
			con.setRequestProperty("Accept", "application/json");
			con.setRequestProperty("Authorization"," Bearer "+token );
			con.setDoOutput(true);
			JSONObject obj = new JSONObject();
			obj.put("merchant_uid", uid);
			obj.put("amount", price);
			obj.put("tax_free", 0);
			obj.put("vat_amount", 0);
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(con.getOutputStream()));
			bw.write(obj.toString());
			bw.flush();
			bw.close();
			int resCode = con.getResponseCode();
			BufferedReader br = null;
			if(resCode == 200) {
				br= new BufferedReader(new InputStreamReader(con.getInputStream()));
			}else {
				br= new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
			String inputLine = null;
			StringBuilder sb = new StringBuilder();
			while((inputLine = br.readLine()) != null) {
				sb.append(inputLine);
			}
			System.out.println(sb.toString());
			JSONParser parser = new JSONParser();
			JSONObject jobj = (JSONObject)parser.parse(sb.toString());
			cnt = Integer.parseInt(jobj.get("code").toString());
			con.disconnect();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	private String getImportToken() {
		String result = "";
		HttpURLConnection con = null;
		try {
			URL url = new URL("https://api.iamport.kr/users/getToken");
			con = (HttpURLConnection)url.openConnection();
			con.setRequestMethod("POST");
			con.setRequestProperty("Content-Type", "application/json");
			con.setRequestProperty("Accept", "application/json");
			con.setDoOutput(true);
			JSONObject obj = new  JSONObject();
			obj.put("imp_key",KEY);
			obj.put("imp_secret", SECRET);
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(con.getOutputStream()));
			bw.write(obj.toString());
			bw.flush();
			bw.close();
			int responCode = con.getResponseCode();
			BufferedReader br = null;
			if(responCode == 200) {
				br= new BufferedReader(new InputStreamReader(con.getInputStream()));
			}else {
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
			String inputLine = null;
			StringBuilder sb = new StringBuilder();
			while((inputLine = br.readLine()) != null) {
				sb.append(inputLine);
			}
			br.close();
			JSONParser parser = new JSONParser();
			JSONObject jsonobj = (JSONObject)parser.parse(sb.toString());
			JSONObject respnse = (JSONObject)jsonobj.get("response"); 
			result = (String)respnse.get("access_token");
			con.disconnect();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(con != null) {
				con.disconnect();
			}
		}
		return result;
	}
	private int FindReserve(String uid, String token) {
		int cnt = -1;
		String u_u = "https://api.iamport.kr/payments/find/";
		HttpURLConnection con = null;
		try {
			String u = URLEncoder.encode(uid, "UTF-8");
			URL url = new URL(u_u+u+"/");
			con = (HttpURLConnection)url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("Content-Type", "application/json");
			con.setRequestProperty("Authorization", "Bearer "+token);
			
			int responCode = con.getResponseCode();
			BufferedReader br = null;
			if(responCode == 200) {
				br= new BufferedReader(new InputStreamReader(con.getInputStream()));
			}else {
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
			String inputLine = null;
			StringBuilder sb = new StringBuilder();
			while((inputLine = br.readLine()) != null) {
				sb.append(inputLine);
			}
			br.close();
			JSONParser parser = new JSONParser();
			JSONObject jsonobj = (JSONObject)parser.parse(sb.toString());
			cnt = Integer.parseInt(jsonobj.get("code").toString());
			if(cnt == 0) {
				JSONObject jsonobj2 = (JSONObject)jsonobj.get("response");
				cnt = Integer.parseInt(jsonobj2.get("cancel_amount").toString());
				int price = Integer.parseInt(jsonobj2.get("amount").toString());
				cnt = price - cnt;
			}
			con.disconnect();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(con != null) {
				con.disconnect();
			}
		}
		return cnt;
	}
}
