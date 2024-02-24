package org.Java.VO;

import lombok.Data;

@Data
public class ReviewVO {
	private int no; //리뷰번호
	private String nickname; //닉네임
	private int hotel_no; // 호텔번호
	private int room_no; //객실 번호
	private int star_point; //별점
	private String content; //리뷰 내용
	private int res_no; // 예약 번호
	private String wday; //작성일
	private int count; //추천수
}
