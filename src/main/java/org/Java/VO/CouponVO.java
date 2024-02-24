package org.Java.VO;

import lombok.Data;

@Data
public class CouponVO {
	private String name; //쿠폰이름
	private int dislate; //쿠폰 할인율
	private int disprice; //할인 금액
	private int period; // 사용 가능 기간
}
