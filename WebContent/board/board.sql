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
VALUES(BOARD_SEQ.NEXTVAL, '¼ºÀ±Á¤', 'pinksung@nate.com', '1234', 'Ã¹¹æ¹®', '¹Ý°©½À´Ï´Ù.');

INSERT INTO board(num, name, email, pass, title, content)
VALUES(BOARD_SEQ.NEXTVAL, '¼ºÀ±Á¤', 'pinksung@nate.com', '1234', '±è¹ä', '¸ÀÀÖ¾î¿ä.');

INSERT INTO board(num, name, email, pass, title, content)
VALUES(BOARD_SEQ.NEXTVAL, 'Àü¼öºó', 'raccon@nate.com', '3333', '°íµî¾Ö', 'ÀÏ½ÄÀÔ´Ï´Ù.');

INSERT INTO board(num, name, email, pass, title, content)
VALUES(BOARD_SEQ.NEXTVAL, 'Àü¿øÁö', 'one@nate.com', '1111', '°¹°ñ¸¶À»', 'µÅÁö»ï°ã»ìÀÌ ¸ÀÀÖ½À´Ï´Ù.');

COMMIT;

SELECT * FROM board;