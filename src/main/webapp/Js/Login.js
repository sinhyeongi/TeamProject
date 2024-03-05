// Naver
var naver_id_login = new naver_id_login("D443PGZXk075b3UCn9iz", "http://localhost:8080/TeamProject/Naver_Login.do");	
var state = naver_id_login.getUniqState();
naver_id_login.setButton("green", 3,54);
naver_id_login.setDomain("http://localhost:8082/TeamProject/Naver_Login.do");
naver_id_login.setState(state);
naver_id_login.init_naver_id_login();
