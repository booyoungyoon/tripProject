**********DB
- oracle user 생성, 권한 부여
create user trip IDENTIFIED by 1234;
grant connect, dba to trip;

--회원목록
create table user(
  user_num number,
  userid varchar2(30) not null primary key,
  nickname varchar2(20) not null primary key,
  pass varchar2(40) not null,
  username varchar2(20) not null,
  birth char(8), -- 생년월일 (YYYYMMDD)
  email varchar2(30) UNIQUE,
  gender varchar2(8), -- 성별 남성(male), 여성(female)
  phone char(13) not null,
  userJoindate date default sysdate, -- 가입일자
  admin number(1) default 1 -- 관리자 0,    일반 회원 1
);

-- 보드테이블(게시글)
create table board(
    board_num number not null primary key,
    board_title varchar2(100) not null,
    board_content varchar2(2000) not null,
    board_image varchar2(500), -- 게시글 사진
    board_writedate date default sysdate, -- 글 작성 일자
    board_hits number, -- 조회수
    userid varchar2(30) UNIQUE,
    CONSTRAINT fk_userid key(userid) REFERENCES user(userid), --외래키 설정
    nickname varchar2(20) UNIQUE,
    CONSTRAINT fk_nickname key(nickname) REFERENCES user(nickname)  --외래키 설정
);

-- 댓글 테이블
create table comment(
   nickname varchar2(20) not null,
   comment_date date default sysdate, -- 댓글 단 시간
   reply varchar2(1000) not null,
   board_num number UNIQUE,  -- 글 번호
   CONSTRAINT fk_board_num  key(board_num) REFERENCES user(board_num)  --외래키 설정
   userid varchar2(30) UNIQUE,
   CONSTRAINT fk_userid key(userid) REFERENCES user(userid), --외래키 설정
   nickname varchar2(20) UNIQUE,
   CONSTRAINT fk_nickname key(nickname) REFERENCES user(nickname)  --외래키 설정
);

--코스
create table course(
    course_num number not null,
    course_title varchar2(50) not null,
    course_content varchar2(500) not null,
    course_image varchar2(500),
    likes number not null,
    userid varchar2(30) UNIQUE,
    CONSTRAINT fk_userid key(userid) REFERENCES user(userid) --외래키 설정
);
    

--축제
create table festival(
    festival_num number,
    festival_content varchar2(500) not null,
    festival_title varchar2(50) not null,
    festival_image varchar2(500),
    festival_schedule varchar2(30),
    userid varchar2(30) UNIQUE,
    CONSTRAINT fk_userid key(userid) REFERENCES user(userid) --외래키 설정
    
);

-- 회원목록 시퀀스
create sequence user_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- 보드테이블 시퀀스
create sequence board_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- 댓글 시퀀스
create sequence comment_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- 코스 시퀀스
create sequence course_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- 축제 시퀀스
create sequence festival_seq
START with 1 INCREMENT by 1 MINVALUE 1;