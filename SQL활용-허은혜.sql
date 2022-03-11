-- 1번 DB생성 / 사용자등록 / 권한설정
/*
drop database if exists member_db;
drop user if exists member_db@localhost;

create database member_db;
create user member_db@localhost identified with mysql_native_password by 'member_db';

grant all privileges on member_db.* to member_db@localhost with grant option;
*/

-- 2번 테이블 생성 / login_info
/*
create table login_info(
	member_num integer primary key auto_increment,
    member_id varchar(18) not null unique,
    member_pass varchar(18) not null
);
*/

-- 3번 데이터 삽입 / login_info
/*
insert into login_info values(10,'pam7528','lee123!!');
insert into login_info values(9,'kim4758','kim234!!');
insert into login_info values(8,'han7541','han745!!');
insert into login_info values(7,'tan9558','tan258!!');
insert into login_info values(6,'ams5658','ams781!!');
insert into login_info values(5,'heo7815','heo712!!');
insert into login_info values(4,'seo6548','seo014!!');
insert into login_info values(3,'lee2458','lee434!!');
insert into login_info values(2,'sak4358','sak834!!');
insert into login_info values(1,'ral3558','ral334!!');
*/

-- 4번 데이터 출력
/*
select member_num as '회원번호', member_id as '회원아이디', member_pass as '패스워드'
from login_info;
*/

-- 5번 테이블 생성 / notice
/*
create table notice(
	notice_num integer primary key not null auto_increment,
    notice_tit varchar(40) not null,
    notice_txt varchar(100),
    notice_date timestamp default now(),
    user_name varchar(20),
    user_num integer not null
);
*/

-- 6번 데이터 삽입 / notice
/*
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(20,'리뉴얼 공사 안내','리뉴얼 공사 진행합니다','이몽룡','1024');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(19,'이벤트 적립 안내','포인트 적립이 지연되어 안내드립니다','성춘향','1023');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(18,'VIP 등급조정 안내','2022 VIP 승급 및 혜택 지급 관련 사항 안내드립니다','김하늘','1022');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(17,'예매 안내','유의사항을 꼭 확인하시길 바랍니다','이순신','1021');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(16,'카카오 선물하기 시스템 점검 안내','점검일시: 2022년 3월 1일 (화) 02:00 ~ 04:00','추소영','1020');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(15,'관람료 변경 안내','변경된 요금 확인은 3월 1일부터 지점 안내 페이지에서 확인 가능합니다','관리자','1019');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(14,'사칭 피해 주의','상품 구매 시 착오 없으시길 바랍니다','이유비','1018');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(13,'네이버페이 시스템 점검 안내','서비스 이용에 불편이 없도록 아래 내용을 참고 해주시기 바랍니다','김두한','1017');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(12,'사칭 피해 주의','상품 구매 시 착오 없으시길 바랍니다','이유비','1016');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(11,'관람권 프로모션','관람권 프로모션에 참여해주셔서 감사드립니다','이시우','1015');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(10,'멤버십 포인트 소멸 안내','적립일로부터 24개월입니다','차도하','1014');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(9,'이용 약관 변경 안내','위치기반서비스 이용 약관이 변경됨에 따라, 다음과 같이 안내드리오니 이용에 참고 부탁드립니다','관리자','1013');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(8,'방역패스 해제에 따른 이용안내','방역패스 의무적용시설에서 해제됨에 따라 티켓예매시 참고부탁드립니다','서은광','1012');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(7,'국제영화제 상영 안내',', 국경을 넘음 창작자와 관객의 연대 속에서 영화로 하나 되는 세상을 향한 소중한 한 걸음을 내딛습니다','이창섭','1011');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(6,'건물 주차장 입구 공사 안내','건물 주차장 입구 공사중입니다','이민혁','1009');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(5,'소방 점검 안내','앞으로 더 쾌적하고 안전하게 이용할 수 있는 환경 조성을 위하여 노력하겠습니다','프니엘','1008');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(4,'백신패스관 변경 안내','[백신패스관]의 범위가 변경되어 안내드립니다','임현식','1007');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(3,'주차장 이용 관련 안내','건물 내 주차타워 기기 점검 진행 예정입니다','육성재','1006');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(2,'상영관 좌석 교체에 따른 영화관 이용 안내','상영관 내 좌석시트 교체가 진행됩니다','이성하','1005');
insert into notice(notice_num,notice_tit,notice_txt,user_name,user_num) values(1,'휴점 안내','COVID-19 장기화로 인하여 잠시 휴점을 하게 되었습니다','관리자','1004');
*/

-- 7번 데이터 출력
/*
select notice_num as '일련번호', notice_tit as '제목', notice_txt as '내용', notice_date as '작성일', user_name as '작성자', user_num as '회원번호'
from notice
order by notice_date asc, user_num desc;
*/

-- 8번 / notice 김씨 인원수 출력
/*
select substr(user_name,1,1) as 성, concat(count(*),'명') as 인원수
from notice
where user_name like '김%';
*/

-- 9번 데이터 삭제 / notice 삭제
/*
drop tables notice;
*/

-- 10번 데이터 변경 / login_info
/*
update login_info set member_pass='qwer1234' where member_num=5;
*/

-- 11번 인덱스 설정
/*
create index idx_notice on notice(notice_tit, user_name);
*/

-- 12번 검색효율성
/*
select * 
from notice
where notice_tit = '예매 안내';
*/

-- 13번 뷰의 생성
/*
create view my_view
as select login_info.member_id as 회원아이디, notice.notice_tit as 제목, notice.notice_txt as 내용, notice.notice_date as 작성일, notice.user_name as 작성자
from login_info, notice;
*/

-- 14번 
/*
create view my_view2
as select notice_tit as 제목, notice_date as 작성일, user_name as 작성자, member_id as 회원아이디
from my_view;
*/

-- 15번 모든요소 삭제
/*
drop database member_db;
drop user if exists member_db@localhost;
*/



