-- 콘서트 티켓팅 테이블 작성
drop table if exists member_tb;
drop table if exists timetable;
drop table if exists reservation;
drop table if exists ticket;
drop table if exists review;

-- 회원 테이블
create table member_tb(
	mid varchar(16) not null primary key, -- 회원 아이디
    mpw varchar(20) not null,			  -- 회원 비밀번호
    mname varchar(10) not null,			  -- 회원 이름	
    mmobile varchar(15) not null,		  -- 회원 휴대폰번호
    memail varchar(20) not null,          -- 회원 이메일
    mgender char(10) not null          -- 회원 성별
  );
  
  -- 상세 일정
CREATE TABLE timetable (
    csinger VARCHAR(20) NULL,	         -- 가수 이름
    cdate DATE NOT NULL,                 -- 일정
    ctime TIME NOT NULL,		         -- 시간
    center VARCHAR(20) NULL		         -- 회사명
);

-- 티켓 정보
CREATE TABLE ticket (
	tseat VARCHAR(20) PRIMARY KEY NOT NULL,          -- 좌석 정보
    tdate DATE NOT NULL,                           	 -- 공연 일자
    ttime TIME NOT NULL,							 -- 공연 시간
    trule VARCHAR(20) NOT NULL,                      -- 환불 규정
    tid VARCHAR(20) NOT NULL,                  	     -- 구매자 정보
    tcode VARCHAR(20) NOT NULL,          			 -- 위조 방지 바코드 번호
    ttnum VARCHAR(20) NOT NULL,                      -- 예매 번호
    tsnum INT NOT NULL                        		 -- 일련 번호
);

  -- 예매 정보
  CREATE TABLE reservation (
rid VARCHAR(20) PRIMARY KEY NOT NULL,         -- 회원 아이디
rnum VARCHAR(20) NOT NULL,					  -- 예매 번호
rdate DATE NOT NULL,                          -- 예매 날짜
rseat VARCHAR(20) NOT NULL                    -- 예매 좌석
);

-- 리뷰 테이블
CREATE TABLE review (
    vtitle VARCHAR(20) NOT NULL,                           -- 제목
    vnum INT PRIMARY KEY AUTO_INCREMENT NOT NULL,          -- 글번호
    vcontent VARCHAR(20) NOT NULL,                         -- 글내용
    vdate DATETIME NOT NULL,                               -- 작성일자
	vtnum VARCHAR(20) NOT NULL,                            -- 예매번호   
    vid VARCHAR(20) NOT NULL                               -- 회원정보
);

insert into member_tb values ('berry', '1234', '김베리', '010-1234-1234', 'berryboy@naver.com','M');
insert into member_tb values ('milk', '1212', '최우유', '010-1212-1212', 'milkgirl@daum.net','W');
insert into member_tb values ('nuclear97', '9797', '김정은', '010-7515-3199', 'jek3199@daum.net','M');
insert into member_tb values ('hansomeguy', '1234', '홍지성', '010-1234-1234', 'imsosexy69@naver.com','M');
insert into member_tb values ('inaflower', 'whatthehell', '최인아', '010-1234-1234', 'berrymilk@naver.com','W');
insert into member_tb values ('smartgirl01', '1234', '김은형', '010-1234-1234', 'eunhyung01@naver.com','W');
insert into member_tb values ('hohoho', '1234', '허수진', '010-1234-1234', 'sujin01@naver.com','W');
select * from member_tb;
rollback;
commit;

insert into timetable values ('아이유',curdate(),curtime(),'이담 엔터테이먼트');
insert into timetable values ('BTS',curdate(),curtime(),'빅히트 엔터테이먼트');
insert into timetable values ('싸이',curdate(),curtime(),'YG 엔터테이먼트');
insert into timetable values ('뉴진스',curdate(),curtime(),'ADOR');
select * from timetable;
rollback;
commit;

insert into ticket values ('A01',curdate(), curtime(), '선착순임ㅋ','nuclear97','123456789','A21212121','23232323');

insert into reservation values ('nuclear97','A21212121',curdate(),'A01');

insert into review values ('싸이공연 후기',default, '흠뻑쇼 개쩌네', current_time(), 'A21212121', 'nuclear97');










