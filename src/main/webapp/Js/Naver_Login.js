var naver_id_login = new naver_id_login("D443PGZXk075b3UCn9iz", "http://localhost:8080/TeamProject/Naver_Login.do");
  // 접근 토큰 값 출력
  // 로그인 버튼
  const token = naver_id_login.oauthParams.access_token;
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
	const _name =naver_id_login.getProfileData('name');
	const _email = naver_id_login.getProfileData('email');
	const _nickname = naver_id_login.getProfileData('nickname')
	const _age = naver_id_login.getProfileData('age');
	const _id = naver_id_login.getProfileData('id');
	if(_name == null || _name == undefined){
  	}
   		location.href = "Naver_Login.do?token="+token;
 	}