#drop database java;
create database java;
use java;
#고객 테이블
create table member(
id varchar(100) not null unique, -- 고객 아이디
no int auto_increment primary key, -- 고객 번호
pw varchar(100), -- 고객 비밀번호
email varchar(200) not null unique, -- 고객 이메일
name varchar(50) not null, -- 고객 이름
birth varchar(200) not null, -- 고객 생년월일 (String)
gender varchar(10) not null, -- 고객 성별
phone varchar(100) not null unique, -- 고객 전화번호 (String)
address varchar(100) not null, -- 고객 주소
nickname varchar(20) unique, -- 고객 닉네임
regist DATE default (current_date()) -- 고객 가입일
);
insert into member(no,id,pw,email,name,birth,gender,phone,address,nickname) values(0,'admin','admin','admin@java.org','관리자','2024-02-21','남','111-1111-1111','admin','관리자');

insert into member(id,pw,email,name,birth,gender,phone,address,nickname) values('test1','test1','test1@java.org','test1','2024-02-21','남','222-2222-2222','test1','test1');
insert into member(id,pw,email,name,birth,gender,phone,address,nickname) values('nv_test2',null,'test2@java.org','test2','2024-02-21','m','333-3333-3333','test2','test2');
update member set pw = 'test2' where no = 4;
update member set id = 'test2' where no = 4;
update member set gender = 'm' where no = 6;
select * from member;

# 고객_추가정보 테이블
create table member_info(
id varchar(100) not null primary key, -- 고객아이디
point int default 0, -- 고객 포인트
level int default 0, -- 고객 등급
usecount int default 0, -- 고객의 실제 호텔 이용 횟수
attendcount int default 1, -- 출석 횟수
Ldate Date default (Current_date()), -- 마지막 출석일 (회원가입 날짜 기본 값)
foreign key(id) references member(id) on delete cascade
);

select * from member_info;
insert into member_info(id,level) values('admin',1000);
insert into member_info(id) values('test1');
update member_info set attendcount = (select attendcount from(select (attendcount + 1) as attendcount from member_info where id='test1')dsa) where id='test1' and Ldate != Current_date(); -- 회원 출석 체크 시 오늘 날짜가 아니라면 출석횟수 + 1
#update member_info set level = 900 where id = 'test1';
#쿠폰 테이블
create table coupon(
	name varchar(300) not null primary key, -- 쿠폰이름
    dislate int, -- 쿠폰 할인율
    disprice int, -- 쿠폰 할인 금액 (할인율 쿠폰일 때 최대 할인금액)
    period int -- 사용 가능 기간
);

insert into coupon values('WellCome',7,10000,7);
insert into coupon values('test',0,5000,7);
insert into coupon values('test2',7,10000,7);
select * from coupon;
#유저 쿠폰
create table member_coupon(
	no int auto_increment primary key, -- 발급 번호
    regist DATE default (current_date()), -- 발급일
    id varchar(100) not null, -- 유저 아이디
    name varchar(300) not null, -- 쿠폰 이름
	period Date, -- 사용 가능 기간
    foreign key (id) references member(id) on delete cascade,
    foreign key(name) references coupon(name) on delete cascade
);


insert into member_coupon (id,name,period) values('test1','WellCome',Date_add(current_date(), interval (select period from coupon where name = 'WellCome') day)); -- 쿠폰 추가 방법
insert into member_coupon (id,name,period) values('test1','test',Date_add(current_date(), interval (select period from coupon where name = 'test') day)); -- 쿠폰 추가 방법
insert into member_coupon (id,name,period) values('test1','test2',Date_add(current_date(), interval (select period from coupon where name = 'test2') day)); -- 쿠폰 추가 방법
select * from member_coupon;

# 호텔
create table hotel(
	no int auto_increment primary key, -- 호텔 번호
    host varchar(100) not null, -- 호스트 (유저 아이디)
    name varchar(300) not null, -- 호텔 이름
    star int not null, -- 호텔 성급
    tel varchar(100) not null unique, -- 호텔 전화번호
    Fac varchar(300), -- 부대시설
    star_point int default 0, -- 별점
    address varchar(500) not null unique, -- 기본 주소
    area int not null, -- 지역코드
    checkin varchar(50) not null, -- 체크인 시간
    checkout varchar(50) not null, -- 체크아웃 시간
    account varchar(50) not null, -- 계좌번호
    x varchar(100),
    y varchar(100),
    foreign key(host) references member(id) on delete cascade
);
select * from hotel;

#객실
create table room(
	no int auto_increment primary key, -- 객실 번호
    hotel_no int not null, -- 호텔번호
    price int not null, -- 가격
    name varchar(50) not null, -- 방 이름 (ex 골져스,슈페리어)
	total_qty int not null, -- 남은 객실 수
    occ int not null, -- 객실 최대 인원
    bedinfo varchar(100) not null, -- (ex 더블,트윈,킹...)
    amenities varchar(300), -- 편의 시설
    foreign key(hotel_no) references hotel(no) on delete cascade
);
select * from room;
select * from room where no = 1;

# 예약
create table reserve(
	no int auto_increment primary key, -- 예약 번호
    hotel_no int not null, -- 호텔번호
    room_no int not null, -- 방 번호
    name varchar(50) not null, -- 예약자 이름
    phone varchar(50) not null, -- 예약자 전화번호
    rday Date not null, -- 예약일자(숙박 시작 일)
    dday Date not null, -- 예약 기간
    price int not null, -- 가격
    id varchar(100), -- 회원 아이디
    people int not null, -- 인원수
    add_req varchar(100), -- 추가 요청 사항
    visit varchar(50) not null, -- 방문방법
    uid varchar(100), -- 결재시 결재uid *test이후 NotNull
    foreign key(hotel_no) references  hotel(no) on delete cascade,
    foreign key(room_no) references room(no) on delete cascade
);

select * from reserve;
insert into reserve(hotel_no,room_no,name,phone,rday,dday,price,people,visit) values(1,1,'test','010-1234-1234',current_date(),current_date(),15000,2,'도보');
# 리뷰 비회원 리뷰 작성 불가
create table review(
	no int auto_increment primary key, -- 리뷰 번호
    nickname varchar(100) not null, -- 리뷰 작성자 닉네임
    hotel_no int not null, -- 호텔 번호
    room_no int not null, -- 객실 번호
    star_point int not null, -- 별점
    content varchar(1000), -- 리뷰 내용
    res_no int not null, -- 예약 번호
    wday Date default (Current_date()), -- 작성일
    count int default 0, -- 추천수
    foreign key(nickname) references member(nickname) on delete cascade on update cascade,
    foreign key(hotel_no) references hotel(no) on delete cascade,
    foreign key(room_no) references room(no) on delete cascade
);
select * from review;
#리뷰 추천 
create table review_rec(
	no int not null, -- 리뷰 번호
	id varchar(100) not null, -- 고객 아이디
    foreign key(no) references review(no) on delete cascade,
    foreign key(id) references member(id) on delete cascade
);
select * from review_rec;
#이미지
create table img(
	uploader varchar(50) not null, -- 업로더( 호텔 : 'ho' , 객실 : 'ro', 리뷰 : 'rv' )
    no int not null, -- 호텔 , 객실, 리뷰 번호
    url varchar(100) not null -- 이미지 경로
);
create table boarder(
no int auto_increment primary key, -- 게시글 번호
id varchar(100) not null, -- 게시자
title varchar(100) not null, -- 제목
content varchar(500) not null, -- 본문 내용
category varchar(30) not null, -- 카테고리 ('Q&A','EVENT','NOTICE')

foreign key(id) references member(id) on delete cascade
);
select * from member;
insert into boarder(id,title,content,category) values('test1','test','test','test');

