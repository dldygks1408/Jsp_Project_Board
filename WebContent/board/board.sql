CREATE TABLE board(
	num				NUMBER(5)			  PRIMARY KEY,
	pass			VARCHAR2(30),
	name			VARCHAR2(30),
	email			VARCHAR2(30),
	title			VARCHAR2(50),
	content 	VARCHAR2(1000),
	readcount NUMBER(4)				DEFAULT 0,
	writedate DATE						DEFAULT SYSDATE
);

CREATE SEQUENCE BOARD_SEQ START WITH 1 INCREMENT BY 1;


INSERT INTO board(num, name, email, pass, title, content)
VALUES(BOARD_SEQ.NEXTVAL, '������', 'pinksung@nate.com', '1234', 'ù�湮', '�ݰ����ϴ�.');

INSERT INTO board(num, name, email, pass, title, content)
VALUES(BOARD_SEQ.NEXTVAL, '������', 'pinksung@nate.com', '1234', '���', '���־��.');

INSERT INTO board(num, name, email, pass, title, content)
VALUES(BOARD_SEQ.NEXTVAL, '������', 'raccon@nate.com', '3333', '����', '�Ͻ��Դϴ�.');

INSERT INTO board(num, name, email, pass, title, content)
VALUES(BOARD_SEQ.NEXTVAL, '������', 'one@nate.com', '1111', '������', '���������� ���ֽ��ϴ�.');

COMMIT;

SELECT * FROM board;