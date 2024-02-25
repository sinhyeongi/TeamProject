const client_id="c16bc220b30ade93a139e3d168dc5331";
const redirect_uri="http://localhost:8080/TeamProject/Login.do";
const response_type="code";



 
function kakaoLogin(){
	let authParam = new URLSearchParams({
		client_id,
		redirect_uri,
		response_type,
	})
	
	location.href=`https://kauth.kakao.com/oauth/authorize?${authParam}`;
};
// Naver

var naver_id_login = new naver_id_login("D443PGZXk075b3UCn9iz", "http://localhost:8082/TeamProject/Login.do");	
var state = naver_id_login.getUniqState();
naver_id_login.setButton("green", 2,40);
naver_id_login.setDomain("http://localhost:8082/TeamProject/Naver_Login.do");
naver_id_login.setState(state);
naver_id_login.init_naver_id_login();

