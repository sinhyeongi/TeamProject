package org.Java.VO;

import lombok.Data;

@Data
public class Member_couponVO {
	private int no; //발급 번호
	private String regist; //발급입
	private String id; //고객 아이디
	private String name; //쿠폰 이름
	private String period; //사용 가능일
	private int dislate; //쿠폰 할인율
	private int disprice; //할인 금액
}
