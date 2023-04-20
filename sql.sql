------------기타------------
--시퀸스 값 원상복구--
ALTER SEQUENCE ADMIN.SEQ INCREMENT BY 1;
--시퀸스 추가--
CREATE SEQUENCE bookmark_seq;
--시퀸스 삭제--

-- 프로젝트 작성 = insert project + recruitment_field + project_tech_stack---
---------------------------------



------------user_table------------
create table user_table(
id varchar2(30) primary key,
name varchar2(30) not null,
pwd varchar2(30) not null,
gender varchar2(1), 
email1 varchar2(20) not null,
email2 varchar2(20) not null,
phone1 varchar2(10) not null,
phone2 varchar2(10) not null,
phone3 varchar2(10) not null,
address1 varchar2(5),
address2 varchar2(100),
address3 varchar2(100),
signup_date date not null,
role varchar2(10) not null
);

select * from user_table;
---------------------------------



------------project------------
create table project(
id number default project_seq.nextval primary key,
team_leader varchar2(30) not null,
title varchar2(255) not null,
field varchar2(20) not null,
content varchar2(4000) not null,
start_date date not null,
due_date date not null,
member number(1,0) check (member between 0 and 9),
created_at date not null,
constraint fk_project_team_leader foreign key (team_leader) references user_table(id) on delete cascade
);
--필드 추가
alter table project add(
member_need number(1,0) check (member_need between 0 and 9),
recruit_state varchar2(10));
--project_seq 생성
create sequence project_seq start with 1 increment by 1 nocycle nocache;


-- 아이디키 -> 프로젝트키 필요
insert into project (ID,TEAM_LEADER,TITLE,FIELD,CONTENT,START_DATE,DUE_DATE,MEMBER,CREATED_AT)
                VALUES (ADMIN.SEQ.NEXTVAL,'hong','제목1','금융','내용1','2023-04-17','2023-04-18',5,sysdate);
select * from project;

--멤버 수 증가
UPDATE project
SET MEMBER = 2
WHERE ID = 1;
---------------------------------



------------bookmark------------
create table bookmark(
id number default bookmark_seq.nextval primary key,
user_id varchar2(30) not null,
project_id number not null,
constraint fk_bookmark_user_id foreign key (user_id) references user_table(id) on delete cascade,
constraint fk_bookmark_project_id foreign key (project_id) references project(id) on delete cascade
);
--bookmark_seq 생성
create sequence bookmark_seq start with 1 increment by 1 nocycle nocache;

INSERT INTO bookmark (ID,USER_ID,PROJECT_ID) VALUES (seq.NEXTVAL,'hong',1);
DELETE FROM  bookmark WHERE PROJECT_ID = 1 AND USER_ID = 'hong';
select * from bookmark;
---------------------------------



------------application------------
create table application(
id number default application_seq.nextval primary key,
user_id varchar2(30) not null,
project_id number not null,
app_field varchar2(20) not null,
tech_stack varchar2(30),
reason varchar2(4000) not null,
status varchar2(1),
app_date date,
constraint fk_application_user_id foreign key (user_id) references user_table(id) on delete cascade,
constraint fk_application_project_id foreign key (project_id) references project(id) on delete cascade
);
--application_seq 생성
create sequence application_seq start with 1 increment by 1 nocycle nocache;


select * from application;
---------------------------------



------------user_tech_stack------------
create table user_tech_stack(
user_id varchar2(30) primary key,
figma varchar2(1),
photoshop varchar2(1),
ios varchar2(1),
android varchar2(1),
react varchar2(1),
vue varchar2(1),
flutter varchar2(1),
html_css varchar2(1),
javascript varchar2(1),
spring varchar2(1),
java varchar2(1),
Kotlin varchar2(1),
node_js varchar2(1),
MongoDB varchar2(1),
C_C# varchar2(1),
Git varchar2(1),
AWS varchar2(1),
Docker varchar2(1),
kubernetes varchar2(1),
tensorflow varchar2(1),
unity varchar2(1),
python varchar2(1),
MySql varchar2(1),
TypeScript varchar2(1),
constraint fk_user_tech_stack_user_id foreign key (user_id) references user_table(id) on delete cascade
);

---------------------------------



------------recruitment_field------------
CREATE TABLE Recruitment_field (
	project_id	NUMBER primary key,
	ui_ux_plan	NUMBER(1)	NULL,
	plan_etc	NUMBER(1)	NULL,
	graphic_design	NUMBER(1)	NULL,
	ui_ux_design	NUMBER(1)	NULL,
	design_etc	NUMBER(1)	NULL,
	ios		NUMBER(1)	NULL,
	android		NUMBER(1)	NULL,
	web_fe		NUMBER(1)	NULL,
	web_publisher	NUMBER(1)	NULL,
	cross_flatform	NUMBER(1)	NULL,
	web_server	NUMBER(1)	NULL,
	block_chain	NUMBER(1)	NULL,
	ai		NUMBER(1)	NULL,
	big_data	NUMBER(1)	NULL,
	game_server	NUMBER(1)	NULL,
constraint fk_Recruitment_field_project_id foreign key (project_id) references project(id) on delete cascade
);



INSERT INTO recruitment_field (PROJECT_ID, ANDROID) VALUES (1, 3);

select * from recruitment_field;
---------------------------------



------------team_member------------

CREATE TABLE Team_member (
	id	NUMBER primary key,
	member1	NUMBER		NULL,
	member2	NUMBER		NULL,
	member3	NUMBER		NULL,
	member4	NUMBER		NULL,
	member5	NUMBER		NULL,
	member6	NUMBER		NULL,
	member7	NUMBER		NULL,
	member8	NUMBER		NULL,
	member9	NUMBER		NULL,
constraint fk_Team_member_id foreign key (id) references project(id) on delete cascade
);

select * from team_member;
---------------------------------


------------project_tech_stack------------

CREATE TABLE Project_Tech_Stack (
project_id NUMBER primary key,
figma varchar2(1),
photoshop varchar2(1),
ios varchar2(1),
android varchar2(1),
react varchar2(1),
vue varchar2(1),
flutter varchar2(1),
html_css varchar2(1),
javascript varchar2(1),
spring varchar2(1),
java varchar2(1),
Kotlin varchar2(1),
node_js varchar2(1),
MongoDB varchar2(1),
C_C# varchar2(1),
Git varchar2(1),
AWS varchar2(1),
Docker varchar2(1),
kubernetes varchar2(1),
tensorflow varchar2(1),
unity varchar2(1),
python varchar2(1),
MySql varchar2(1),
TypeScript varchar2(1),
constraint fk_Project_Tech_Stack_project_id foreign key (project_id) references project(id) on delete cascade
);



INSERT INTO project_tech_stack (PROJECT_ID, vue,flutter) VALUES (1,'y','y');
DELETE FROM project_tech_stack WHERE PROJECT_ID = 1 AND vue = 'y';
select * from project_tech_stack;
---------------------------------


commit;

