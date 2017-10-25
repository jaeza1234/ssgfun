
-- T_USER -------------------------------------------------------------------------------------------------------------------------
INSERT INTO T_USER(UNO, UPWD, UNAME, UEMAIL, UPHONE, UACCOUNT, UMONEY, REGDATE, MODDATE)
VALUES('p908uz', 'ssg2017', '국병도', 'p908uz@shinsegae.com', 01011112222, '111-1111-1111', DEFAULT, DEFAULT, NULL);
INSERT INTO T_USER(UNO, UPWD, UNAME, UEMAIL, UPHONE, UACCOUNT, UMONEY, REGDATE, MODDATE)
VALUES('p908v2', 'ssg2017', '김재환', 'p908v2@shinsegae.com', 01022223333, '222-3333-3333', DEFAULT, DEFAULT, NULL);
INSERT INTO T_USER(UNO, UPWD, UNAME, UEMAIL, UPHONE, UACCOUNT, UMONEY, REGDATE, MODDATE)
VALUES('p908v3', 'ssg2017', '김지영', 'p908v3@shinsegae.com', 01044445555, '444-5555-5555', DEFAULT, DEFAULT, NULL);

SELECT * FROM T_USER;

-- T_EVENT_ATT ---------------------------------------------------------------------------------------------------------------------
INSERT INTO T_EVENT_ATT(EANO, EACNT, EAATTCNT, EAHISTDATE, REGDATE, MODDATE, UNO)
VALUES(SEQ_EVENT_ATT.NEXTVAL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, NULL, 'p908uz');

SELECT * FROM T_EVENT_ATT;

-- T_USER_LOTTO ---------------------------------------------------------------------------------------------------------------------
INSERT INTO T_USER_LOTTO(ULNO, ULNAME, ULNUM1, ULNUM2, ULNUM3, ULNUM4, ULNUM5, ULNUM6, REGDATE, MODDATE, UNO)
VALUES(SEQ_USER_LOTTO.NEXTVAL, '몇회차더미', 1, 2, 3, 4, 5, 6, DEFAULT, NULL, 'p908uz');

SELECT * FROM T_USER_LOTTO;

-- T_USER_COUPON ---------------------------------------------------------------------------------------------------------------------
INSERT INTO T_USER_COUPON(UCNO, UCNAME, UCBUYCATE, UCMARKETCATE, REGDATE, MODDATE, UNO)			
VALUES(SEQ_USER_COUPON.NEXTVAL, '1000원쿠폰', NULL, NULL, DEFAULT, NULL, 'p908uz');

SELECT * FROM T_USER_COUPON;


-- T_BUYINFO ---------------------------------------------------------------------------------------------------------------------
INSERT INTO T_BUYINFO(BNO, BBUYCATE, BMARKETCATE, REGDATE, MODDATE, UNO)			
VALUES();

SELECT * FROM T_BUYINFO;