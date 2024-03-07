package org.Java.Util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class ImportReserveCancel {
	private final String IMPORT_CANCEL_URL = "https://api.iamport.kr/payments/cancel";
	private final String KEY = "4231548706878224";
	private final String SECRET = "I9redwbQQCaSk11zhOqBFnFmM0uKv39woMClW9sQMB68xeiIuNRKuoC05FYfEMrwFNViN50FSMstveXG";
	
	public String getImportToken() {
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
				System.out.println("성공");
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
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
