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


/* 부산광역시 시작 */
-- 마리안느호텔
INSERT INTO hotel (host, name, star, tel, Fac, star_point, address, area, checkin, checkout, account)
VALUES ('admin', '마리안느 호텔', 3, '051-606-0600', '미니바,와이파이,욕실용품,레스토랑,금연,TV,라운지,객실샤워실,카페,장애인편의', 0, '부산 해운대구 중동 1400-24', 21, '15:00', '11:00', '0000');
-- 객실
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (11, 55000, '스탠다드 더블', 7, 2, '더블베드 1개', 'TV, 티테이블, 에어컨, 냉장고, 슬리퍼, 욕조, 전기포트, 욕실용품, 헤어드라이기');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (11, 55000, '스탠다드 트윈', 7, 2, '싱글베드 2개', 'TV, 티테이블, 에어컨, 냉장고, 슬리퍼, 전기포트, 욕실용품, 헤어드라이기');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (11, 62000, '슈페리어 트윈', 4, 3, '싱글베드 2개', 'TV, 티테이블, 에어컨, 냉장고, 슬리퍼, 욕조, 전기포트, 욕실용품, 헤어드라이기');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (11, 62000, '슈페리어 더블', 5, 2, '더블베드 1개', 'TV, 티테이블, 에어컨, 냉장고, 슬리퍼, 욕조, 전기포트, 욕실용품, 헤어드라이기');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (11, 200000, '유러피안 스위트', 4, 8, '더블베드 1개', 'TV, 티테이블, 에어컨, 냉장고, 슬리퍼, 욕조, 전기포트, 욕실용품, 헤어드라이기');
-- 호텔 메인 이미지
INSERT INTO img values('ho',11,"busan/mari_hotel/6288a6cdf998943e11a89749db7d5776.png");
-- 객실 이미지
INSERT INTO img values('ro',51,"busan/mari_hotel/st_double.png");
INSERT INTO img values('ro',52,"busan/mari_hotel/st_twin.png");
INSERT INTO img values('ro',53,"busan/mari_hotel/sp_twin.png");
INSERT INTO img values('ro',54,"busan/mari_hotel/sp_double.png");
INSERT INTO img values('ro',55,"busan/mari_hotel/euro_sweet.png");

-- 윈덤 그랜드 부산
INSERT INTO hotel (host, name, star, tel, Fac, star_point, address, area, checkin, checkout, account)
VALUES ('admin', '윈덤 그랜드 부산', 5, '051-993-3000', '피트니스,수영장,미니바,사우나,와이파이,욕실용품,발렛파킹,레스토랑,금연,TV,엘레베이터,에어컨,라운지,냉장고,짐보관가능,객실샤워실,객실샤워실', 0, '부산 서구 암남동 123-15', 21, '15:00', '11:00', '0000');
-- 객실
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (12, 231000, '프리미엄 패밀리', 5, 3, '싱글베드 1개,더블베드 1', 'TV, 커피머신, 에어컨, 책상, 냉장고, 욕실용품');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (12, 231000, '프리미엄 킹', 5, 2, '더블베드 1개', 'TV, 커피머신, 에어컨, 책상, 냉장고, 욕실용품');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (12, 231000, '프리미엄 코너 킹', 6, 2, '더블베드 1개', 'TV, 커피머신, 에어컨, 책상, 냉장고, 욕실용품');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (12, 616000, '코너 스위트 킹', 6, 2, '더블베드 1개', 'TV, 커피머신, 에어컨, 책상, 냉장고, 욕실용품');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (12, 946000, '코너 스위트 투베드룸', 6, 4, '더블베드 2개', 'TV, 커피머신, 에어컨, 책상, 냉장고, 욕실용품');

-- 호텔 메인 이미지
INSERT INTO img values('ho',12,"busan/windom_grand_busan_hotel/windom_grand.png");
-- 객실 이미지
INSERT INTO img values('ro',56,"busan/windom_grand_busan_hotel/premium_family.png");
INSERT INTO img values('ro',57,"busan/windom_grand_busan_hotel/premium_king.png");
INSERT INTO img values('ro',58,"busan/windom_grand_busan_hotel/premium_conner_king.png");
INSERT INTO img values('ro',59,"busan/windom_grand_busan_hotel/conner_sweet_king.png");
INSERT INTO img values('ro',60,"busan/windom_grand_busan_hotel/conner_sweet_twobed.png");

-- 해운대 센트럴 호텔
INSERT INTO hotel (host, name, star, tel, Fac, star_point, address, area, checkin, checkout, account)
VALUES ('admin', '해운대 센트럴 호텔', 3, '051-760-9000', '수영장,미니바,와이파이,욕실용품,금연,TV,엘레베이터,에어컨,냉장고,객실샤워실,욕조,무료주차,드라이기,카드결제,주차장', 0, '부산 해운대구 중동 1137-4', 21, '15:00', '11:00', '0000');
-- 객실
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (13, 140000, '스탠다드 더블룸', 6, 2, '더블베드 1개', 'TV, 티테이블, 의자 2개, 에어컨, 냉장고, 미니바, 드라이기, 욕조, 욕실용품, 샤워가운, 슬리퍼');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (13, 140000, '스탠다드 트윈룸', 6, 2, '싱글베드 2개', 'TV, 티테이블, 의자 3개, 에어컨, 냉장고, 미니바, 드라이기, 욕조, 욕실용품, 샤워가운, 슬리퍼');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (13, 160000, '슈페리어 트윈룸', 6, 2, '싱글베드 2개', 'TV, 티테이블, 의자 3개, 에어컨, 냉장고, 미니바, 드라이기, 욕조, 욕실용품, 샤워가운, 슬리퍼');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (13, 160000, '슈페리어 더블룸', 6, 2, '더블베드 1개', 'TV, 티테이블, 의자 3개, 에어컨, 냉장고, 미니바, 드라이기, 욕조, 욕실용품, 샤워가운, 슬리퍼');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (13, 480000, '로얄 스위트 오션', 6, 5, '싱글베드 1개, 더블베드 2개', 'TV, 소파, 티테이블, 의자 4개, 에어컨, 냉장고, 미니바, 드라이기, 욕조, 욕실용품, 샤워가운, 슬리퍼');
-- 호텔 메인 이미지
INSERT INTO img values('ho',13,"busan/haeundae_central_hotel/main.png");
-- 객실 이미지
INSERT INTO img values('ro',61,"busan/haeundae_central_hotel/st_double.png");
INSERT INTO img values('ro',62,"busan/haeundae_central_hotel/st_twin.png");
INSERT INTO img values('ro',63,"busan/haeundae_central_hotel/sp_twin.png");
INSERT INTO img values('ro',64,"busan/haeundae_central_hotel/sp_double.png");
INSERT INTO img values('ro',65,"busan/haeundae_central_hotel/royal_sweet.png");

-- 레이어스 호텔 부산
INSERT INTO hotel (host, name, star, tel, Fac, star_point, address, area, checkin, checkout, account)
VALUES ('admin', '레이어스 호텔 부산', 4, '051-999-1700', '사우나,와이파이,욕실용품,레스토랑,금연,TV,에어컨,라운지,냉장고,객실샤워실,무료주차,카페,드라이기,세탁기,주차장', 0, '부산 사하구 하단동 525-4', 21, '15:00', '11:00', '0000');
-- 객실
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (14, 200000, '이코노미 더블', 6, 2, '더블베드 1개', '43Inch QLED TV, 생수, 헤어드라이기, 커피포트, 에어컨, 전화기, 냉장고, 비데, 슬리퍼, 가운');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (14, 200000, '이코노미 트윈', 6, 2, '싱글베드 2개', '43Inch QLED TV, 생수, 헤어드라이기, 커피포트, 에어컨, 전화기, 냉장고, 비데, 슬리퍼, 가운');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (14, 320000, '디럭스 패밀리', 6, 2, '싱글베드 1개,더블베드 1개', '43Inch QLED TV, 생수, 헤어드라이기, 커피포트, 에어컨, 전화기, 냉장고, 비데, 슬리퍼, 가운');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (14, 320000, '슈페리어 트리플', 6, 2, '싱글베드 3개', '43Inch QLED TV, 생수, 헤어드라이기, 커피포트, 에어컨, 전화기, 냉장고, 비데, 슬리퍼, 가운');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (14, 430000, '프레지덴셜 스위트', 6, 4, '싱글베드 1개,더블베드 3개', '43Inch QLED TV, 스타일러, 생수, 헤어드라이기, 커피포트, 에어컨, 전화기, 냉장고, 비데, 슬리퍼, 가운');

-- 호텔 메인 이미지
INSERT INTO img values('ho',14,"busan/layers_busan_hotel/main.png");
-- 객실 이미지
INSERT INTO img values('ro',66,"busan/layers_busan_hotel/economy_double.png");
INSERT INTO img values('ro',67,"busan/layers_busan_hotel/economy_twin.png");
INSERT INTO img values('ro',68,"busan/layers_busan_hotel/deluxe_family.png");
INSERT INTO img values('ro',69,"busan/layers_busan_hotel/sp_triple.png");
INSERT INTO img values('ro',70,"busan/layers_busan_hotel/presidential_sweet.png");

-- 시애틀비 호텔
INSERT INTO hotel (host, name, star, tel, Fac, star_point, address, area, checkin, checkout, account)
VALUES ('admin', '시애틀비 호텔', 2, '051-852-7685', '와이파이,욕실용품,금연,TV,냉장고,짐보관가능,객실샤워실,욕조,무료주차,드라이기,장애인편의시설', 0, '부산 연제구 연산동 1255-4', 21, '15:00', '12:00', '0000');
-- 객실
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (15, 60000, '스탠다드 더블', 6, 2, '더블베드 1개', 'TV, PC, 구두주걱, 냉장고, 생수2병, 커피, 컵, 전기포트, 면도기, 욕실용품, 비데, 목욕가운, 슬리퍼, 헤어드라이기, 욕조');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (15, 65000, '디럭스 더블', 6, 2, '더블베드 1개', 'TV, PC, 구두주걱, 냉장고, 생수2병, 커피, 컵, 전기포트, 면도기, 욕실용품, 비데, 목욕가운, 슬리퍼, 헤어드라이기, 욕조');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (15, 70000, '슈페리어 더블', 6, 2, '더블베드 1개', 'TV, PC, 구두주걱, 냉장고, 생수2병, 커피, 컵, 전기포트, 면도기, 욕실용품, 비데, 목욕가운, 슬리퍼, 헤어드라이기, 욕조');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (15, 75000, '프리미엄 더블', 6, 2, '더블베드 1개', 'TV, PC, 구두주걱, 냉장고, 생수2병, 커피, 컵, 전기포트, 면도기, 욕실용품, 비데, 목욕가운, 슬리퍼, 헤어드라이기, 스파욕조');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (15, 160000, '패밀리 스위트', 6, 4, '더블베드 2개', 'TV, PC, 구두주걱, 냉장고, 생수2병, 커피, 컵, 전기포트, 면도기, 욕실용품, 비데, 목욕가운, 슬리퍼, 헤어드라이기, 스파욕조');

-- 호텔 메인 이미지
INSERT INTO img values('ho',15,"busan/seattleb_hotel/main.png");
-- 객실 이미지
INSERT INTO img values('ro',71,"busan/seattleb_hotel/st_double.png");
INSERT INTO img values('ro',72,"busan/seattleb_hotel/deluxe_double.png");
INSERT INTO img values('ro',73,"busan/seattleb_hotel/sp_double.png");
INSERT INTO img values('ro',74,"busan/seattleb_hotel/premium_double.png");
INSERT INTO img values('ro',75,"busan/seattleb_hotel/family_sweet.png");
 /* 부산광역시 끝 */
 
/* 강원도 강릉 시작 */

-- 정동진 썬크루즈호텔
INSERT INTO hotel (host, name, star, tel, Fac, star_point, address, area, checkin, checkout, account)
VALUES ('admin', '정동진 썬크루즈호텔', 4, '033-610-7000', '수영장,와이파이,욕실용품,레스토랑,금연,TV,엘레베이터,라운지,냉장고,짐보관가능,객실샤워실,무료주차,드라이기,주방/식당,주차장', 0, '강원 강릉시 강동면 정동진리 50-10', 32, '15:00', '11:00', '0000');

-- 객실
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (16, 110000, '스탠다드 더블 일출 발코니 하프오션뷰', 6, 2, '더블베드 1개', 'TV, 쇼파, 옷장, 에어컨, 쇼케이스, 식탁, 전자레인지, 인덕션, 식기도구, 드라이기, 욕실용품');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (16, 110000, '콘도 스탠다드 더블 파크뷰', 6, 2, '더블베드 1개', 'TV, 쇼파, 옷장, 에어컨, 식탁, 전자레인지, 인덕션, 식기도구, 드라이기, 욕실용품');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (16, 132000, '(썬크루즈) 럭셔리 더블 일출 하프오션뷰', 6, 2, '더블베드 1개', 'TV, 쇼파, 옷장, 티테이블, 쇼케이스, 에어컨, 커피머신기, 드라이기, 욕실용품, 샤워가운');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (16, 145000, '(썬크루즈) 럭셔리 더블 오션뷰', 6, 2, '더블베드 1개', 'TV, 쇼파, 옷장, 티테이블, 쇼케이스, 에어컨, 커피머신기, 드라이기, 욕실용품, 샤워가운');
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (16, 220000, '(비치 크루즈) 테라스 트윈A', 6, 4, '더블베드 2개', 'TV, 쇼파, 옷장, 티테이블, 에어컨, 미니바, 커피머신기, 전자레인지, 드라이기, 욕실용품, 샤워가운');

-- 호텔 메인 이미지
INSERT INTO img values('ho',16,"gangleung/suncruise_hotel/main.png");
-- 객실 이미지
INSERT INTO img values('ro',76,"gangleung/suncruise_hotel/standard_double.png");
INSERT INTO img values('ro',77,"gangleung/suncruise_hotel/condo_standard_double.png");
INSERT INTO img values('ro',78,"gangleung/suncruise_hotel/cruise_double.png");
INSERT INTO img values('ro',79,"gangleung/suncruise_hotel/luxury_double.png");
INSERT INTO img values('ro',80,"gangleung/suncruise_hotel/cruise_terrace_twin.png");


-- 강릉 포시즌 호텔
INSERT INTO hotel (host, name, star, tel, Fac, star_point, address, area, checkin, checkout, account)
VALUES ('admin', '강릉 포시즌 호텔', 2, '010-9905-9456', '와이파이,욕실용품,금연,TV,객실내취사,에어컨,냉장고,객실샤워실,무료주차,드라이기,주차장', 0, '강원 강릉시 안현동 10-5', 32, '15:00', '11:00', '0000');
-- 객실
-- 마운틴
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (17, 69000, '마운틴', 6, 2, '더블베드 1개', 'TV, 에어컨, 냉장고, 헤어드라이기, 전화기, 커피포트, 머리빗, 슬리퍼(실내용), 비누, 샴푸, 린스, 헤어젤, 치약, 스킨, 로션, 생수 2병');
-- 오션 원베드
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (17, 69000, '오션 원베드', 6, 2, '더블베드 1개', 'TV, 에어컨, 냉장고, 헤어드라이기, 전화기, 커피포트, 머리빗, 슬리퍼(실내용), 비누, 샴푸, 린스, 헤어젤, 치약, 스킨, 로션, 생수 2병');
-- 오션 투베드
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (17, 79000, '오션 투베드', 6, 2, '싱글베드 1개,더블베드 1개', 'TV, 에어컨, 냉장고, 헤어드라이기, 전화기, 커피포트, 머리빗, 슬리퍼(실내용), 비누, 샴푸, 린스, 헤어젤, 치약, 스킨, 로션, 생수 2병');
-- 펜션형 원룸 (오션뷰)
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (17, 79000, '펜션형 원룸 (오션뷰)', 6, 2, '더블베드 1개', 'TV, 에어컨, 냉장고, 헤어드라이기, 전화기, 커피포트, 머리빗, 슬리퍼(실내용), 비누, 샴푸, 린스, 헤어젤, 치약, 스킨, 로션, 세안용2, 생수 2병');
-- 펜션형 스위트룸 (오션뷰)
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (17, 159000, '펜션형 스위트룸 (오션뷰)', 6, 4, '싱글베드 1개,더블베드 1개', 'TV, 에어컨, 냉장고, 헤어드라이기, 전화기, 커피포트, 머리빗, 슬리퍼(실내용), 비누, 샴푸, 린스, 헤어젤, 치약, 스킨, 로션, 세안용2, 생수 2병');

-- 호텔 메인 이미지
INSERT INTO img values('ho',17,"gangleung/4season_hotel/main.png");
-- 객실 이미지
INSERT INTO img values('ro',81,"gangleung/4season_hotel/mountain.png");
INSERT INTO img values('ro',82,"gangleung/4season_hotel/ocean_onebed.png");
INSERT INTO img values('ro',83,"gangleung/4season_hotel/ocean_twobed.png");
INSERT INTO img values('ro',84,"gangleung/4season_hotel/oneroom.png");
INSERT INTO img values('ro',85,"gangleung/4season_hotel/sweetroom.png");


-- 강릉 그레이호텔
INSERT INTO hotel (host, name, star, tel, Fac, address, area, checkin, checkout, account)
VALUES ('admin', '강릉 그레이호텔', 3, '1600-3886', '와이파이,욕실용품,금연,TV,에어컨,냉장고,객실샤워실,무료주차,드라이기,다리미,주차장', '강원 강릉시 교동 1871-3', 32, '15:00', '11:00', '0000');
-- 객실
-- 슈페리어 더블
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (18, 79000, '슈페리어 더블', 6, 2, '더블베드 1개', 'TV, 구스이불, 냉장고, 생수2병, 티셋트, 헤어드라이기, 목욕가운2개, 슬리퍼, 타월, 커피포트, 비데, 샤워용품, 헤어빗');
-- 디럭스 더블
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (18, 89000, '디럭스 더블', 6, 2, '더블베드 1개', 'TV, 구스이불, 냉장고, 생수2병, 티셋트, 헤어드라이기, 목욕가운2개, 슬리퍼, 타월, 커피포트, 비데, 샤워용품, 헤어빗');
-- 디럭스 트윈
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (18, 89000, '디럭스 트윈', 6, 2, '싱글베드 2개', 'TV, 구스이불, 냉장고, 생수2병, 티셋트, 헤어드라이기, 목욕가운2개, 슬리퍼, 타월, 커피포트, 비데, 샤워용품, 헤어빗');
-- 슈페리어 트윈
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (18, 89000, '슈페리어 트윈', 6, 2, '싱글베드 2개', 'TV, 구스이불, 냉장고, 생수2병, 티셋트, 헤어드라이기, 목욕가운2개, 슬리퍼, 타월, 커피포트, 비데, 샤워용품, 헤어빗');
-- 스위트
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES (18, 159000, '스위트', 6, 3, '싱글베드 1개,더블베드 1개', '침대, TV, 쇼파');

-- 호텔 메인 이미지
INSERT INTO img values('ho',18,"gangleung/grey_hotel/main.png");
-- 객실 이미지
INSERT INTO img values('ro',86,"gangleung/grey_hotel/superior_double.png");
INSERT INTO img values('ro',87,"gangleung/grey_hotel/deluxe_double.png");
INSERT INTO img values('ro',88,"gangleung/grey_hotel/deluxe_twin.png");
INSERT INTO img values('ro',89,"gangleung/grey_hotel/superior_twin.png");
INSERT INTO img values('ro',90,"gangleung/grey_hotel/sweet.png");

-- 세인트존스 호텔
INSERT INTO hotel (host, name, star, tel, Fac, address, area, checkin, checkout, account)
VALUES ('admin', '세인트존스 호텔', 5, '033-660-9000', '피트니스,반려견동반,사우나,와이파이,욕실용품,레스토랑,금연,TV,엘레베이터,에어컨,짐보관가능,객실샤워실,무료주차,드라이기,카드결제,주차장', '강원 강릉시 강문동 1-1', 32, '16:00', '11:00', '0000');
-- 객실
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES 
(19, 280000, '펫 더블 (노오션뷰/Room Only)', 3, 2, '더블베드 1개', 'TV, 에어컨, 테이블, 헤어드라이기, 반려견 용품 (간식1팩, 배변패드 2매, 봉투 2매, 애견전용수건 2장, 밥그릇)'),
(19, 210000, '골져스 오션 더블', 6, 2, '더블베드 1개', '침대, TV, 에어컨, 티테이블, 미니바, 전기포트, 샤워가운, 욕실용품, 비데, 헤어드라이기'),
(19, 528000, '코너 스위트 (Room Only)', 6, 3, '더블베드 2개', '침대, TV, 에어컨, 티테이블, 미니바, 전기포트, 샤워가운, 욕실용품, 비데, 헤어드라이기'),
(19, 693000, '로얄스위트 트윈 오션 (Room Only)', 6, 3, '더블베드 2개', ''),
(19, 825000, '그랑블루 스위트 키즈 (파셜오션&마운틴뷰/룸온리)', 6, 4, '더블베드 1개 ,벙커침대 1 개', '침대, TV, 에어컨, 티테이블, 미니바, 전기포트, 샤워가운, 욕실용품, 비데, 헤어드라이기');
-- 호텔 메인 이미지
INSERT INTO img values('ho',19,"gangleung/stjohns_hotel/main.png");
-- 객실 이미지
INSERT INTO img values('ro',91,"gangleung/stjohns_hotel/executive_twin.png");
INSERT INTO img values('ro',92,"gangleung/stjohns_hotel/executive_double.png");
INSERT INTO img values('ro',93,"gangleung/stjohns_hotel/deluxe_double.png");
INSERT INTO img values('ro',94,"gangleung/stjohns_hotel/ambassador_sweet_twin.png");
INSERT INTO img values('ro',95,"gangleung/stjohns_hotel/royal_sweet.png");

-- 스카이베이호텔
INSERT INTO hotel (host, name, star, tel, Fac, address, area, checkin, checkout, account)
VALUES 
('admin', '스카이베이호텔 경포', 5, '033-923-2000', '피트니스,수영장,사우나,와이파이,욕실용품,레스토랑,금연,TV,엘레베이터,에어컨,냉장고,짐보관가능,객실샤워실,무료주차,드라이기,주차장', '강원 강릉시 강문동 258-4', 32, '15:00', '11:00', '0000');
-- 객실
INSERT INTO room (hotel_no, price, name, total_qty, occ, bedinfo, amenities)
VALUES 
(20, 187550, '이그제큐티브 트윈 (오션뷰)', 10, 2, '싱글베드 1개,더블베드 1개', '침구류, TV, 에어컨, 테이블, 옷장, 냉장고, 헤어드라이기, 욕실용품, 샤워가운'),
(20, 187550, '이그제큐티브 더블 (오션뷰)', 10, 2, '더블베드 1개', '침구류, TV, 에어컨, 테이블, 옷장, 냉장고, 헤어드라이기, 욕실용품, 샤워가운'),
(20, 287550, '디럭스 더블 (레이크뷰)', 10, 2, '더블베드 1개', '침구류, TV, 에어컨, 쇼파, 테이블, 옷장, 냉장고, 헤어드라이기, 욕실용품, 샤워가운'),
(20, 544500, '앰버서더 스위트 트윈 (레이크뷰)', 10, 3, '싱글베드 1개,더블베드 1개', '침구류, TV, 에어컨, 테이블, 옷장, 냉장고, 헤어드라이기, 욕실용품, 샤워가운'),
(20, 665500, '로얄 스위트 (오션뷰)', 10, 4, '싱글베드 1개,더블베드 1개', '침구류, TV, 에어컨, 테이블, 옷장, 냉장고, 헤어드라이기, 욕실용품, 샤워가운');

-- 호텔 메인 이미지
INSERT INTO img values('ho',20,"gangleung/skybay_hotel/main.png");
-- 객실 이미지
INSERT INTO img values('ro',96,"gangleung/skybay_hotel/pet_double.png");
INSERT INTO img values('ro',97,"gangleung/skybay_hotel/gorgeous_ocean_double.png");
INSERT INTO img values('ro',98,"gangleung/skybay_hotel/conner_sweet.png");
INSERT INTO img values('ro',99,"gangleung/skybay_hotel/royal_sweet_twin.png");
INSERT INTO img values('ro',100,"gangleung/skybay_hotel/sweet_kids.png");
/* 강원도 강릉 끝 */

select * from hotel;
select * from room;
select * from img;
