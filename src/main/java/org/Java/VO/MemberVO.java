package org.Java.VO;

import lombok.Data;
@Data
public class MemberVO {
	int no;
	String id;
	String pw;
	String email;
	String name;
	String birth;
	String gender;
	String phone;
	String address;
	String nickname;
	String regist;

	public MemberVO(){
		
	}
}