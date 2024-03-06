client_id="285fb962941b4c31de5b78e29659ba4f";
//카카오로그인 접근 값
const redirect_uri="http://localhost:8080/TeamProject/Login.do?type=kakao";
const response_type="code";

const url = new URL(document.location.href); //현 url 주소
const urlParams = url.searchParams; //현 url 주소의 파라미터 객체
const type = urlParams.get("type"); //파라미터 type 값 가져오기
const code = urlParams.get("code"); //파라미터 code 값 가져오기
let tokenRequest = null;

//인가받은 코드값을 가져왔을 때
if(type !== null){
	getKakaoToken(); //인가받은 코드로 토큰값 받아오기.
	tokenRequest = new XMLHttpRequest;
}
//최초 진입시
function kakaoLogin(){
	let authParam = new URLSearchParams({
		client_id,
		redirect_uri,
		response_type,
	})
	location.href=`https://kauth.kakao.com/oauth/authorize?${authParam}`;
};
function getKakaoToken(){
	console.log(code);
	console.log(type);
	$.ajax({
		method: "POST",
		url: "https://kauth.kakao.com/oauth/token",
		data:{
			grant_type : "authorization_code",
			client_id : client_id,
			redirect_uri : redirect_uri,
			code : code },
		headers : { "Content-type" : "application/x-www-form-urlencoded;charset=utf-8"}
		,success : function(data){
			const access_token = data['access_token']
			/*tokenRequest.open("Post","KakaoLogin.do?access_token="+access_token);
			tokenRequest.send();*/
			location.href = "KakaoLogin.do?token="+access_token;
		},error : function(err){
			console.log(err);
		}
	});
}


