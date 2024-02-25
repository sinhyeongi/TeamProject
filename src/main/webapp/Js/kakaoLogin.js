const client_id="285fb962941b4c31de5b78e29659ba4f";
const redirect_uri="http://localhost:8080/TeamProject/Login.do?type=kakao";
const response_type="code";

const url = new URL(document.location.href); //현 url 주소
const urlParams = url.searchParams; //현 url 주소의 파라미터 객체
const type = urlParams.get("type"); //파라미터 type 값 가져오기
const code = urlParams.get("code"); //파라미터 code 값 가져오기
//인가받은 코드값을 가져왔을 때
if(type !== null){
	alert("인가받은 코드가 있습니다.");
	getKakaoToken(); //인가받은 코드로 토큰값 받아오기.
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
	$.ajax({
		method: "POST",
		url: "https://kauth.kakao.com/oauth/token",
		data:{
			grant_type : "authorization_code",
			client_id : client_id,
			redirect_uri : redirect_uri,
			code : code},
		headers : { "Content-type" : "application/x-www-form-urlencoded;charset=utf-8"},
		})
		.success(function(data){
			const access_token = data['access_token']
			sendToken(access_token);
		});
		/*.done(function(data){
			var access_token = data['access_token'];
			console.log(data);
		});*/
}
const tokenRequest= new XMLHttpRequest;
function sendToken(token){
	
	tokenRequest.open("Post","KakaoLogin.do?access_token="+token);
	tokenRequest.onreadystatechange = tokenProcess;
	tokenRequest.send(null);
}
function tokenProcess(){
	if(tokenRequest.readyState == 4 && tokenRequest.status == 200){
		//DB에서 이미 카카오회원이 존재하면 로그인 시키고 아니면 회원가입으로 이동
		let result = tokenRequest.responseText;
		if(result === 1){
			alert("location.href 이용해서 로그인 완료 페이지")
		}else{
			alert("location.href 이용해서 회원가입 페이지로")
		}
	}
}