package org.Java.VO;

import lombok.Data;

@Data
public class HotelVO {
	private int no; //호텔 번호
	private String host; //호스트
	private String name; //호텔 이름
	private int star; //성급
	private String tel; //전화번호
	private String fac; //부대시설
	private int star_point; //별점
	private String address; //주소
	private int area; //지역 코드
	private String checkin; //체크인 시간
	private String checkout; //체크 아웃 시간
	private String account; //계좌 번호 
}
