package org.Java.VO;


import java.util.Objects;

import lombok.Data;

@Data
public class ReserveVO{
	private int no; //예약 번호
	private int hotel_no; //호텔번호
	private int room_no; // 방 번호
	private String name; //예약자 이름
	private String phone; //예약자 전화번호
	private String rday; //숙박 시작일
	private String dday; //숙박 종료일
	private int price; //가격
	private String id; //회원 아이디
	private int people; // 인원수
	private String add_req; //추가 요청 사항
	private String visit; //방문 방법
	private String hotel_option; //옵션 (조식,헬스장,수영장,주차장)
	private String hotel_name;
	private String room_name;
	@Override
	public boolean equals(Object obj) {
		 if (this == obj)
	            return true;
	        if (obj == null)
	            return false;
	        if (getClass() != obj.getClass())
	            return false;
	        ReserveVO other = (ReserveVO) obj;
	        return Objects.equals(hotel_no, other.getHotel_no());
	}
}
