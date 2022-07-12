**********DB
- oracle user ����, ���� �ο�
create user trip IDENTIFIED by 1234;
grant connect, dba to trip;

--ȸ�����
create table user(
  user_num number,
  userid varchar2(30) not null primary key,
  nickname varchar2(20) not null primary key,
  pass varchar2(40) not null,
  username varchar2(20) not null,
  birth char(8), -- ������� (YYYYMMDD)
  email varchar2(30) UNIQUE,
  gender varchar2(8), -- ���� ����(male), ����(female)
  phone char(13) not null,
  userJoindate date default sysdate, -- ��������
  admin number(1) default 1 -- ������ 0,    �Ϲ� ȸ�� 1
);

-- �������̺�(�Խñ�)
create table board(
    board_num number not null primary key,
    board_title varchar2(100) not null,
    board_content varchar2(2000) not null,
    board_image varchar2(500), -- �Խñ� ����
    board_writedate date default sysdate, -- �� �ۼ� ����
    board_hits number, -- ��ȸ��
    userid varchar2(30) UNIQUE,
    CONSTRAINT fk_userid key(userid) REFERENCES user(userid), --�ܷ�Ű ����
    nickname varchar2(20) UNIQUE,
    CONSTRAINT fk_nickname key(nickname) REFERENCES user(nickname)  --�ܷ�Ű ����
);

-- ��� ���̺�
create table comment(
   nickname varchar2(20) not null,
   comment_date date default sysdate, -- ��� �� �ð�
   reply varchar2(1000) not null,
   board_num number UNIQUE,  -- �� ��ȣ
   CONSTRAINT fk_board_num  key(board_num) REFERENCES user(board_num)  --�ܷ�Ű ����
   userid varchar2(30) UNIQUE,
   CONSTRAINT fk_userid key(userid) REFERENCES user(userid), --�ܷ�Ű ����
   nickname varchar2(20) UNIQUE,
   CONSTRAINT fk_nickname key(nickname) REFERENCES user(nickname)  --�ܷ�Ű ����
);

--�ڽ�
create table course(
    course_num number not null,
    course_title varchar2(50) not null,
    course_content varchar2(500) not null,
    course_image varchar2(500),
    likes number not null,
    userid varchar2(30) UNIQUE,
    CONSTRAINT fk_userid key(userid) REFERENCES user(userid) --�ܷ�Ű ����
);
    

--����
create table festival(
    festival_num number,
    festival_content varchar2(500) not null,
    festival_title varchar2(50) not null,
    festival_image varchar2(500),
    festival_schedule varchar2(30),
    userid varchar2(30) UNIQUE,
    CONSTRAINT fk_userid key(userid) REFERENCES user(userid) --�ܷ�Ű ����
    
);

-- ȸ����� ������
create sequence user_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- �������̺� ������
create sequence board_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- ��� ������
create sequence comment_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- �ڽ� ������
create sequence course_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- ���� ������
create sequence festival_seq
START with 1 INCREMENT by 1 MINVALUE 1;