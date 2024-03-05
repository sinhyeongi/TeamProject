package org.Java.VO;

import java.util.ArrayList;

import lombok.Data;

@Data
public class RoomVO {
	private int no; //객실 번호
	private int hotel_no; //호텔번호
	private int price; //가격
	private String name; //방이름 (ex 골져스,슈페리어)
	private int total_qty; //남은 객실수
	private int occ; // 객실 최대 인원
	private String bedinfo; // 침대 정보(ex 더블,트윈,킹)
	private String amenities; //편의 시설
	private ArrayList<String> url; //이미지 경로
}
