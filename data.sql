use java;

select * from hotel;
select * from room where hotel_no = 3;
select * from img where uploader = 'ho';
select * from img where uploader = 'ro';

# ############################# hotel data #############################
# jeju
insert into hotel (host,name,star,tel,fac,address,area,checkin,checkout,account) 
values('admin','제주신라호텔',5,'064-735-5114',
'피트니스,수영장,미니바,사우나,와이파이,욕실용품,레스토랑,금연,TV,엘레베이터,에어컨,프린터사용,라운지,짐보관가능,객실샤워실,욕조',
'제주틀별자치도 서귀포시 색달동 3039-3',39,'16:00','11:00','no data');
insert into img (uploader,no,url) values('ho',1,'jeju/silla/main.png');
# 	lotte
insert into hotel (host,name,star,tel,fac,address,area,checkin,checkout,account) 
values('admin','롯데호텔 제주',5,'064-731-1000',
'피트니스,수영장,미니바,와이파이,욕실용품,레스토랑,금연,TV,장애인편의시설',
'제주특별자치도 서귀포시 색달동 2812-4',39,'15:00','11:00','no data');
insert into img (uploader,no,url) values('ho',2,'jeju/lotte/main.png');
# 	noblepia
insert into hotel (host,name,star,tel,fac,address,area,checkin,checkout,account) 
values('admin','제주 휘슬락,BW 스그니처 컬렉션',4,'064-795-7000',
'와이파이,욕실용품,레스토랑,금연,에어컨,냉장고,객실샤워실,무료주차,주차장,장애인편의시설',
'제주도 제주시 건입동 1443-2',39,'15:00','11:00','no data');
insert into img (uploader,no,url) values('ho',3,'jeju/whistle/main.png');
# 	mejong
insert into hotel (host,name,star,tel,fac,address,area,checkin,checkout,account) 
values('admin','메종 글래드 제주',5,'064-747-4900',
'수영장,와이파이,골프장,레스토랑,금연,TV,객실샤워실,카페,장애인편의시설',
'제주특별자치도 제주시 연동 263-15',39,'15:00','11:00','no data');
insert into img (uploader,no,url) values('ho',4,'jeju/mejong/main.png');
# 	widstay
insert into hotel (host,name,star,tel,fac,address,area,checkin,checkout,account) 
values('admin','위드스테이호텔',3,'064-900-2055',
'와이파이,욕실용품,발렛파킹,레스토랑,금연,TV,엘레베이터,에어컨,냉장고,짐보관가능,객실샤워실,무료주차,카페,드라이기,카드결제,편의점,주차장',
'제주특별자치도 제주시 노형동 930-5',39,'15:00','11:00','no data');
insert into img (uploader,no,url) values('ho',5,'jeju/widstay/main.png');
# jeju end

# seoul

# 	silla
insert into hotel (host,name,star,tel,fac,address,area,checkin,checkout,account) 
values('admin','서울신라호텔',5,'02-2233-3131',
'피트니스,수영장,미니바,사우나,와이파이,욕실용품,발렛파킹,레스토랑,금연,TV,엘레베이터,에어컨,프린터사용,짐보관가능,객실샤워실,무료주차,드라이기,편의점,주차장',
'서울 중구 장충동2가 202',11,'14:00','11:00','no data');
insert into img (uploader,no,url) values('ho',6,'seoul/silla/main.png');
# 	glad
insert into hotel (host,name,star,tel,fac,address,area,checkin,checkout,account) 
values('admin','글래드 여의도',4,'02-6222-5000',
'피트니스,와이파이,욕실용품,발렛파킹,레스토랑,금연,TV,에어컨,프린터사용,냉장고,카페,드라이기,카드결제,장애인편의시설',
'서울 영등포구 여의도동 17-5',11,'15:00','13:00','no data');
insert into img (uploader,no,url) values('ho',7,'seoul/glad/main.png');

# 	rebera
insert into hotel (host,name,star,tel,fac,address,area,checkin,checkout,account) 
values('admin','호텔 리베라',4,'02-541-3111',
'피트니스,수영장,미니바,사우나,와이파이,욕실용품,레스토랑,금연,TV,엘레베이터,에어컨,냉장고,욕조,카페,카드결제,주차장,장애인편의시설',
'서울 강남구 청담동 53-7',11,'15:00','12:00','no data');
insert into img (uploader,no,url) values('ho',8,'seoul/rebera/main.png');
# 	sopitel
insert into hotel (host,name,star,tel,fac,address,area,checkin,checkout,account) 
values('admin','소피텔 앰배서드 서울',5,'02-2092-6000',
'피트니스,수영장,미니바,사우나,와이파이,욕실용품,레스토랑,금연,TV,엘레베이터,에어컨,라운지,냉장고,객실샤워실,무료주차,카페,드라이기,다리미,주방/식당,주차장',
'서울 송파구 신천동 29-1',11,'15:00','11:00','no data');
insert into img (uploader,no,url) values('ho',9,'seoul/sopitel/main.png');

# 	lottehotel_word
insert into hotel (host,name,star,tel,fac,address,area,checkin,checkout,account) 
values('admin','롯데호텔 월드',5,'02-419-7000',
'피트니스,객실스파,수영장,미니바,와이파이,골프장,욕실용품,발렛파킹,레스토랑,금연,라운지,무료주차,장애인편의시설,주차장',
'서울 송파구 잠실동 40-1',11,'15:00','11:00','no data');
insert into img (uploader,no,url) values('ho',10,'seoul/lottehotel_word/main.png');



# ############################# room data #############################
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(1,250000,'산 전망 스탠다드 더블 룸',7,2,'더블베드 1개','TV,냉장고,전기주전자,찻잔,티백,물컵,전화기,금고,슬리퍼,욕실용품,드라이기');
insert into img values('ro',1,'jeju/silla/standard_double.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(1,250000,'산 전망 스탠다드 트윈 룸',7,2,'트윈베드 2개','TV,냉장고,전기주전자,찻잔,티백,물컵,전화기,금고,슬리퍼,욕실용품,드라이기');
insert into img values('ro',2,'jeju/silla/standard_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(1,387200,'산 전망 디럭스 트윈 룸',7,2,'트윈베드 2개','TV,냉장고,전기주전자,찻잔,티백,물컵,전화기,금고,슬리퍼,욕실용품,드라이기');
insert into img values('ro',3,'jeju/silla/deluxe_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(1,411400,'산 전망 프리미어 더블 룸',7,2,'더블베드 1개','TV,냉장고,전기주전자,찻잔,티백,물컵,전화기,금고,슬리퍼,욕실용품,드라이기');
insert into img values('ro',4,'jeju/silla/primiere_double.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(1,5929000,'로열 스위트 룸',5,4,'객실2(더블룸+온돌)+거실+욕실2','TV,냉장고,전기주전자,찻잔,티백,물컵,전화기,금고,슬리퍼,욕실용품,드라이기');
insert into img values('ro',5,'jeju/silla/royal_sweet.png');
# lotte
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(2,290400,'디럭스 마운틴 트윈',7,2,'트윈베드 2개','');
insert into img values('ro',6,'jeju/lotte/deluxe_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(2,290400,'디럭스 마운틴 더블',7,2,'더블베드 1개','');
insert into img values('ro',7,'jeju/lotte/deluxe_double.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(2,314600,'디럭스 마운틴 패밀리트윈',7,4,'트윈베드 2개','');
insert into img values('ro',8,'jeju/lotte/deluxe_f_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(2,314600,'디럭스 가든 더블',7,2,'더블베드 1개','');
insert into img values('ro',9,'jeju/lotte/garden_double.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(2,338800,'디럭스 가든 패밀리트윈',7,4,'트윈베드 2개','');
insert into img values('ro',10,'jeju/lotte/garden_f_twin.png');
# whistle
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(3,70000,'디럭스 트윈',7,2,'트윈베드 2개','');
insert into img values('ro',11,'jeju/whistle/deluxe_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(3,80000,'헐리우드 더블',7,2,'더블베드 1개','');
insert into img values('ro',12,'jeju/whistle/wood_double.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(3,100000,'디럭스 패밀리 트윈',7,2,'싱글베드 1개,더블베드 1개','');
insert into img values('ro',13,'jeju/whistle/deluxt_f_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(3,100000,'디럭스 더블',7,2,'더블베드 1개','');
insert into img values('ro',14,'jeju/whistle/deluxe_double.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(3,100000,'디럭스 트리플',7,3,'싱글베드 3개','');
insert into img values('ro',15,'jeju/whistle/deluxe_t.png');
# mejong
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(4,462000,'프리미엄 트윈',7,2,'싱글베드 1개,더블베드 1개','침대, TV, 커피포트, 전화기, 헤어드라이기, 욕실용품, 목욕가운, 금고');
insert into img values('ro',16,'jeju/mejong/p_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(4,462000,'프리미엄 더블',7,2,'더블베드 1개','침대, TV, 커피포트, 전화기, 헤어드라이기, 욕실용품, 목욕가운, 금고, 소파');
insert into img values('ro',17,'jeju/mejong/p_double.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(4,214500,'프리미엄 플러스 트윈',7,2,'싱글베드 1개,더블베드 1개','TV, 커피포트,생수(1일 2병), 티, 커피, 전화기, 헤어드라이기, 욕실용품, 목욕가운, 금고, 비데');
insert into img values('ro',18,'jeju/mejong/p_plus_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(4,221000,'프리미엄 플러스 더블',7,2,'더블베드 1개','TV, 커피포트,생수(1일 2병), 티, 커피, 전화기, 헤어드라이기, 욕실용품, 목욕가운, 금고, 비데');
insert into img values('ro',19,'jeju/mejong/p_plus_double.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(4,409500,'패밀리 스위트',7,2,'더블베드 2개','침대, TV, 커피포트, 전화기, 헤어드라이기, 욕실용품, 목욕가운, 금고');
insert into img values('ro',20,'jeju/mejong/f_sweet.png');
# widstay
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(5,220000,'디럭스 더블',7,2,'더블베드 1개','TV, 전화기, 냉난방조절기, 냉장고, 금고, 전기주전자, 물컵, 드라이기, 욕실용품, 슬리퍼');
insert into img values('ro',21,'jeju/widstay/deluxe_double.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(5,220000,'디럭스 트리플',7,2,'싱글베드 1개,더블베드 1개','TV, 전화기, 냉난방조절기, 냉장고, 금고, 전기주전자, 물컵, 드라이기, 욕실용품, 슬리퍼');
insert into img values('ro',22,'jeju/widstay/deluxe_t.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(5,65000,'프리미어 트리플',7,2,'싱글베드 1개,더블베드 1개','TV, 전화기, 냉난방조절기, 냉장고, 금고, 전기주전자, 물컵, 드라이기, 욕실용품, 슬리퍼');
insert into img values('ro',23,'jeju/widstay/p_t.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(5,150000,'프리미어 더블',7,2,'더블베드 1개','TV, 전화기, 냉난방조절기, 냉장고, 금고, 전기주전자, 물컵, 드라이기, 욕실용품, 슬리퍼');
insert into img values('ro',24,'jeju/widstay/p_double.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(5,150000,'프리미어 패밀리트윈',7,4,'더블베드 2개','TV, 전화기, 냉난방조절기, 냉장고, 금고, 전기주전자, 물컵, 드라이기, 욕실용품, 슬리퍼');
insert into img values('ro',25,'jeju/widstay/p_f_twin.png');
# silla
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(6,462000,'디럭스 더블',7,2,'더블베드 1개','TV, 쇼파, 옷장, 데스크, 에어컨, 미니바, 헤어드라이기, 욕실용품, 샤워가운, 슬리퍼');
insert into img values('ro',26,'seoul/silla/deluxe_double.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(6,462000,'디럭스 트윈',7,2,'싱글베드 2개','TV, 쇼파, 옷장, 데스크, 에어컨, 미니바, 헤어드라이기, 욕실용품, 샤워가운, 슬리퍼');
insert into img values('ro',27,'seoul/silla/deluxe_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(6,522500,'비지니스 디럭스 트윈',7,2,'싱글베드 2개','침대, 소파, TV, 테이블, 데스크, 냉장고, 미니바');
insert into img values('ro',28,'seoul/silla/b_deluxe_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(6,583000,'그랜드 코너 드럭스',7,2,'더블베드 1개','TV, 쇼파, 옷장, 데스크, 에어컨, 미니바, 헤어드라이기, 욕실용품, 샤워가운, 슬리퍼');
insert into img values('ro',29,'seoul/silla/grand_coner_deluxe.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(6,825000,'이그제큐티브 그랜드 디럭스',5,2,'더블베드 1개','TV, 쇼파, 옷장, 데스크, 에어컨, 미니바, 헤어드라이기, 욕실용품, 샤워가운, 슬리퍼');
insert into img values('ro',30,'seoul/silla/exec_grand_deluxe.png');
# glad
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(7,396000,'디럭스 트윈',7,2,'싱글베드 2개','침대, TV, 에어컨, 냉장고, 커피포트, 개인금고, 헤어드라이기, 체중계, 다리미, 욕실용품, 목욕가운, 슬리퍼');
insert into img values('ro',31,'seoul/glad/deluxe_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(7,352000,'스탠다드 더블',7,2,'더블베드 1개','침대, TV, 에어컨, 냉장고, 커피포트, 개인금고, 헤어드라이기, 체중계, 다리미, 욕실용품, 목욕가운, 슬리퍼');
insert into img values('ro',32,'seoul/glad/standard_double.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(7,396000,'점보 트윈',7,2,'싱글베드 1개,더블베드 1개','침대, TV, 에어컨, 냉장고, 커피포트, 개인금고, 헤어드라이기, 체중계, 다리미, 욕실용품, 목욕가운, 슬리퍼');
insert into img values('ro',33,'seoul/glad/jumbo_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(7,495000,'코너 디럭스더블',7,2,'더블베드 1개','침대, TV, 에어컨, 냉장고, 커피포트, 개인금고, 헤어드라이기, 체중계, 다리미, 욕실용품, 목욕가운, 슬리퍼');
insert into img values('ro',34,'seoul/glad/coner_delux_double.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(7,550000,'글래드 킹',7,2,'더블베드 1개','침대, TV, 에어컨, 커피포트, 개인금고, 헤어드라이기, 체중계, 다리미, 욕실용품, 목욕가운, 슬리퍼');
insert into img values('ro',35,'seoul/glad/king.png');
# rebera
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(8,232000,'디럭스 트윈',7,2,'싱글베드 2개','TV, 개인금고, 냉장고, 미니바, 욕실용품, 목욕가운, 슬리퍼, 헤어드라이기');
insert into img values('ro',36,'seoul/rebera/deluxe_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(8,251000,'슈페리어 더블',7,2,'더블베드 1개','TV, 개인금고, 냉장고, 미니바, 욕실용품, 목욕가운, 슬리퍼, 헤어드라이기');
insert into img values('ro',37,'seoul/rebera/superior_double.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(8,251000,'슈페리어 트윈',7,2,'싱글베드 1개,더블베드 1개','TV, 개인금고, 냉장고, 미니바, 욕실용품, 목욕가운, 슬리퍼, 헤어드라이기');
insert into img values('ro',38,'seoul/rebera/superior_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(8,309760,'럭셔리 트윈',7,2,'싱글베드 2개','TV, 개인금고, 냉장고, 미니바, 욕실용품, 목욕가운, 슬리퍼, 헤어드라이기');
insert into img values('ro',39,'seoul/rebera/luxury_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(8,580000,'슈페리어 스위트',7,2,'더블베드 1개 객실+욕실2+응접실','TV, 소파 or 회의용 탁자, 개인금고, 냉장고, 미니바, 욕실용품, 목욕가운, 슬리퍼, 헤어드라이기');
insert into img values('ro',40,'seoul/rebera/sweet.png');

# sopitel
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(9,660000,'럭셔리 트윈',7,2,'싱글베드 2개','TV, 개인금고, 쇼파, 기가지니, 옷장, 에어컨, 미니바, 냉장고, 커피포트, 드라이기, 욕실용품, 샤워가운, 슬리퍼, 다리미, 다리미판');
insert into img values('ro',41,'seoul/sopitel/luxury_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(9,660000,'럭셔리 킹',7,2,'더블베드 1개','TV, 개인금고, 쇼파, 기가지니, 옷장, 에어컨, 미니바, 냉장고, 커피포트, 드라이기, 욕실용품, 샤워가운, 슬리퍼, 다리미, 다리미판');
insert into img values('ro',42,'seoul/sopitel/luxury_king.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(9,715000,'레지던스 스튜디오 트윈',7,2,'싱글베드 2개','TV, 개인금고, 쇼파, 기가지니, 옷장, 에어컨, 미니바, 냉장고, 커피포트, 드라이기, 욕실용품, 샤워가운, 슬리퍼, 다리미, 다리미판');
insert into img values('ro',43,'seoul/sopitel/regedence_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(9,715000,'럭셔리 레이크 트윈',7,2,'싱글베드 2개','TV, 개인금고, 쇼파, 기가지니, 옷장, 에어컨, 미니바, 냉장고, 커피포트, 드라이기, 욕실용품, 샤워가운, 슬리퍼, 다리미, 다리미판');
insert into img values('ro',44,'seoul/sopitel/luxury_rayke_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(9,605000,'프레스티지 패밀리 스위트',5,3,'더블베드 1개','TV, 개인금고, 쇼파, 기가지니, 옷장, 에어컨, 미니바, 냉장고, 커피포트, 드라이기, 욕실용품, 샤워가운, 슬리퍼, 다리미, 다리미판, 욕조');
insert into img values('ro',45,'seoul/sopitel/p_f_sweet.png');

# lottehotel_word
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(10,326700,'디럭스 트윈',7,2,'싱글베드 2개','침대, TV, 에어컨, 다리미, 손전등, 욕실용품, 슬리퍼, 목욕가운');
insert into img values('ro',46,'seoul/lottehotel_word/deluxe_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(10,326700,'디럭스 더블',7,2,'더블베드 1개','침대, TV, 에어컨, 다리미, 손전등, 욕실용품, 슬리퍼, 목욕가운');
insert into img values('ro',47,'seoul/lottehotel_word/deluxe_double.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(10,363000,'레지덴셜 트윈',7,2,'싱글베드 2개','49” UHD TV, 냉장고, 전자레인지, 세탁기, 손전등, 슬리퍼, 전화기, 티포트, 금고, 구둣주걱, 구두클리너, 목욕 가운, 비데, 헤어드라이어, 욕실용품');
insert into img values('ro',48,'seoul/lottehotel_word/reg_twin.png');
insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(10,363000,'레지덴셜 더블',7,2,'더블베드 1개','49” UHD TV, 냉장고, 전자레인지, 세탁기, 손전등, 슬리퍼, 전화기, 티포트, 금고, 구둣주걱, 구두클리너, 목욕 가운, 비데, 헤어드라이어, 욕실용품');
insert into img values('ro',49,'seoul/lottehotel_word/reg_double.png');

insert into room(hotel_no,price,name,total_qty,occ,bedinfo,amenities) 
values(10,447700,'디럭스 with 소파베드',7,3,'더블베드 1+소파베드 1','침대, TV, 에어컨, 다리미, 손전등, 욕실용품, 슬리퍼, 목욕가운');
insert into img values('ro',50,'seoul/lottehotel_word/deluxe_sopabed.png');