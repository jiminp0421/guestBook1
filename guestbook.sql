--테이블삭제
drop table guestbook;
--시퀀스삭제
DROP SEQUENCE seq_no;
--테이블생성
CREATE TABLE guestbook (
no   NUMBER,
name        VARCHAR2(80),
password          VARCHAR2(20),
content     VARCHAR2(2000),
reg_date    DATE,
PRIMARY KEY(no)
);
--시퀀스생성
CREATE SEQUENCE seq_no
INCREMENT BY 1 
START WITH 1 ;

--insert문
INSERT INTO guestbook 
Values (seq_no.nextval, '이효리', '1234', '첫번째', SYSDATE);



--커밋
commit;

select * from guestbook;