**********DB
create user trip identified by 1234;
grant connect, resource, dba to trip;
commit;

CREATE TABLE users (
   usernum number NOT NULL primary key,
   userid varchar2(30) NOT NULL,
   username varchar2(20) NOT NULL,
   userpass varchar2(40) NOT NULL,
   phone char(13) NOT NULL,
   birth char(8) NOT NULL,
   gender varchar2(8) NOT NULL,
   joindate date default sysdate,
   email varchar2(50) NOT NULL,
   admin number(1) NOT NULL,
   qestion varchar2(50) NULL,
   answer varchar2(30) NULL
);

CREATE TABLE course (
   course_num number NOT NULL primary key,
   course_title varchar2(50) NOT NULL,
   course_content varchar2(2000) NOT NULL,
   course_image varchar2(4000) NULL,
   course_like number NOT NULL,
   course_city varchar2(10) not null,
   --fk �߰�
   usernum number not null,
   CONSTRAINT fk_usernum foreign key(usernum) references users(usernum)
);

CREATE TABLE board (
   board_num number NOT NULL primary key,
   board_title varchar2(50) NOT NULL,
   board_date date default sysdate,
   hits number NOT NULL,
   board_image varchar2(4000) NULL,
   board_city varchar2(10) not null,
   --fk �߰�
   usernum number not null,
   CONSTRAINT fk_user_to_board foreign key(usernum) references users(usernum)
);

CREATE TABLE festival (
   festival_num number NOT NULL primary key,
   festival_title varchar2(50) NOT NULL,
   festival_content varchar2(2000) NOT NULL,
   festival_image varchar2(4000) NULL,
   festival_schedule varchar2(30) NULL,
   festival_city varchar2(10) not null,
   --fk �߰�
   usernum number not null,
   CONSTRAINT fk_user_to_festival foreign key(usernum) references users(usernum)
);

CREATE TABLE board_comment (
   comment_num number NOT NULL primary key,
   comment_date date default sysdate,
   reply varchar2(1000) NOT NULL,
   --fk �߰�
   usernum number not null,
   CONSTRAINT fk_user_to_comment foreign key(usernum) references users(usernum),
   --fk �߰�
   board_num number not null,
   CONSTRAINT fk_board_to_comment foreign key(board_num) references board(board_num)
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

commit;