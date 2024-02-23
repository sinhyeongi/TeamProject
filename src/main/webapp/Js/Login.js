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