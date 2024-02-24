package org.Java.VO;

import java.util.ArrayList;

import lombok.Data;

@Data
public class MemberVO {
	private int no;
	private String id; //아이디
	private String pw; //비밀번호
	private String email; //이메일
	private String name; //이름
	private String birth; //생년 월일
	private String gender; //성별
	private String phone; //휴대폰 번호
	private String address; //주소
	private String ninkname;//닉네임
	private String regist; //고객 가입일
	private Member_InfoVO info; //추가 정보
	private ArrayList<Member_couponVO> coupon; //쿠폰
}
