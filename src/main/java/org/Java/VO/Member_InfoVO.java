package org.Java.VO;

import lombok.Data;

@Data
public class Member_InfoVO {
	private String id; //아이디
	private int point; //포인트
	private int level; //고객 등급
	private int usecount; // 실제 호텔 이용 횟수
	private int attendcount; //출석 횟수
	private String ldate; //마지막 출석일
}
