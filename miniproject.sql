------------project------------
select * from user_table;
---------------------------------

------------기타------------
--시퀸스 값 원상복구--
ALTER SEQUENCE ADMIN.SEQ INCREMENT BY 1;
--시퀸스 추가--
CREATE SEQUENCE bookmark_seq;
--시퀸스 삭제--

-- 프로젝트 작성 = insert project + recruitment_field + project_tech_stack---
------------project------------
-- 아이디키 -> 프로젝트키 필요
insert into project (ID,TEAM_LEADER,TITLE,FIELD,CONTENT,START_DATE,DUE_DATE,MEMBER,CREATED_AT)
                VALUES (ADMIN.SEQ.NEXTVAL,'hong','제목1','금융','내용1','2023-04-17','2023-04-18',5,sysdate);
select * from project;

--멤버 수 증가
UPDATE project
SET MEMBER = 2
WHERE ID = 1;
---------------------------------



------------recruitment_field------------
INSERT INTO recruitment_field (PROJECT_ID, ANDROID) VALUES (1, 3);

select * from recruitment_field;
---------------------------------
------------project_tech_stack------------
INSERT INTO project_tech_stack (PROJECT_ID, vue,flutter) VALUES (1,'y','y');
DELETE FROM project_tech_stack WHERE PROJECT_ID = 1 AND vue = 'y';
select * from project_tech_stack;
---------------------------------


------------application------------

select * from application;
---------------------------------


------------bookmark------------
INSERT INTO bookmark (ID,USER_ID,PROJECT_ID) VALUES (seq.NEXTVAL,'hong',1);
DELETE FROM  bookmark WHERE PROJECT_ID = 1 AND USER_ID = 'hong';
select * from bookmark;
---------------------------------


------------team_member------------
select * from team_member;
---------------------------------



commit;

