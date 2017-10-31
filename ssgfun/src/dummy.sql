
-- T_USER -------------------------------------------------------------------------------------------------------------------------
INSERT INTO T_USER(UNO, UPWD, UNAME, UEMAIL, UPHONE, UACCOUNT, UMONEY, REGDATE, MODDATE)
VALUES('p908uz', 'ssg2017', '������', 'p908uz@shinsegae.com', 01011112222, '111-1111-1111', DEFAULT, DEFAULT, NULL);
INSERT INTO T_USER(UNO, UPWD, UNAME, UEMAIL, UPHONE, UACCOUNT, UMONEY, REGDATE, MODDATE)
VALUES('p908v2', 'ssg2017', '����ȯ', 'p908v2@shinsegae.com', 01022223333, '222-3333-3333', DEFAULT, DEFAULT, NULL);
INSERT INTO T_USER(UNO, UPWD, UNAME, UEMAIL, UPHONE, UACCOUNT, UMONEY, REGDATE, MODDATE)
VALUES('p908v3', 'ssg2017', '������', 'p908v3@shinsegae.com', 01044445555, '444-5555-5555', DEFAULT, DEFAULT, NULL);

UPDATE	T_USER
SET		UMONEY = UMONEY + 100,
		MODDATE = SYSDATE
WHERE	UNO = 'p908uz'

select * from t_user;

-- T_EVENT_ATT ---------------------------------------------------------------------------------------------------------------------
INSERT INTO T_EVENT_ATT(EANO, EACNT, EAATTCNT, EAHISTDATE, REGDATE, MODDATE, UNO)
VALUES(SEQ_EVENT_ATT.NEXTVAL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, NULL, 'p908uz');
INSERT INTO T_EVENT_ATT(EANO, EACNT, EAATTCNT, EAHISTDATE, REGDATE, MODDATE, UNO)
VALUES(SEQ_EVENT_ATT.NEXTVAL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, NULL, 'p908v2');
INSERT INTO T_EVENT_ATT(EANO, EACNT, EAATTCNT, EAHISTDATE, REGDATE, MODDATE, UNO)
VALUES(SEQ_EVENT_ATT.NEXTVAL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, NULL, 'p908v3');

UPDATE	T_EVENT_ATT
SET		EACNT = 20
WHERE	UNO = 'p908uz'

		UPDATE	T_EVENT_ATT
		SET		EACNT = EACNT + 1,
				MODDATE = SYSDATE
		WHERE	UNO = 'p908uz'

SELECT * FROM T_EVENT_ATT;

-- T_USER_LOTTO ---------------------------------------------------------------------------------------------------------------------
INSERT INTO T_USER_LOTTO(ULNO, ULNAME, ULNUM1, ULNUM2, ULNUM3, ULNUM4, ULNUM5, ULNUM6, REGDATE, MODDATE, UNO)
VALUES(SEQ_USER_LOTTO.NEXTVAL, '778ȸ��', 1, 2, 3, 4, 5, 6, '2017-10-17', NULL, 'p908uz');
INSERT INTO T_USER_LOTTO(ULNO, ULNAME, ULNUM1, ULNUM2, ULNUM3, ULNUM4, ULNUM5, ULNUM6, REGDATE, MODDATE, UNO)
VALUES(SEQ_USER_LOTTO.NEXTVAL, '778ȸ��', 1, 2, 3, 4, 5, 33, '2017-10-18', NULL, 'p908uz');
INSERT INTO T_USER_LOTTO(ULNO, ULNAME, ULNUM1, ULNUM2, ULNUM3, ULNUM4, ULNUM5, ULNUM6, REGDATE, MODDATE, UNO)
VALUES(SEQ_USER_LOTTO.NEXTVAL, '778ȸ��', 1, 2, 3, 4, 5, 44, '2017-10-19', NULL, 'p908uz');
INSERT INTO T_USER_LOTTO(ULNO, ULNAME, ULNUM1, ULNUM2, ULNUM3, ULNUM4, ULNUM5, ULNUM6, REGDATE, MODDATE, UNO)
VALUES(SEQ_USER_LOTTO.NEXTVAL, '778ȸ��', 6, 21, 35, 36, 37, 41, '2017-10-27', NULL, 'p908uz');
INSERT INTO T_USER_LOTTO(ULNO, ULNAME, ULNUM1, ULNUM2, ULNUM3, ULNUM4, ULNUM5, ULNUM6, REGDATE, MODDATE, UNO)
VALUES(SEQ_USER_LOTTO.NEXTVAL, '778ȸ��', 1, 2, 3, 4, 5, 44, '2017-10-19', NULL, 'p908uz');

SELECT	*
FROM	T_USER_LOTTO
WHERE	UNO = 'p908uz'
AND		TO_CHAR(REGDATE, 'MM/DD') BETWEEN TO_CHAR(REGDATE, 'MM/DD') AND TO_CHAR(REGDATE, 'MM/DD')

 		SELECT	ULNO,
 		 		ULNAME,
 		  		ULNUM1,
 		  		ULNUM2,
 		    	ULNUM3,
 		     	ULNUM4,
 		      	ULNUM5,
 		       	ULNUM6,
 		        REGDATE,
				MODDATE, 
				UNO,
				TO_DATE('2017-11-04', 'YYYY-MM-DD')-7,
				TO_DATE('2017-11-04', 'YYYY-MM-DD')+7
		FROM	T_USER_LOTTO
		WHERE	UNO = 'p908uz'
		AND		REGDATE BETWEEN TO_DATE('2017-11-04', 'YYYY-MM-DD') -6 AND TO_DATE('2017-11-04', 'YYYY-MM-DD')
		ORDER BY REGDATE
		
		SELECT	ULNO,
 		 		ULNAME,
 		  		ULNUM1,
 		  		ULNUM2,
 		    	ULNUM3,
 		     	ULNUM4,
 		      	ULNUM5,
 		       	ULNUM6,
 		        REGDATE,
				MODDATE, 
				UNO,
				TO_CHAR(TO_DATE(#{gdate}, 'YYYY-MM-DD')-7, 'YYYY-MM-DD') AS PREVGDATE,
				TO_CHAR(TO_DATE(#{gdate}, 'YYYY-MM-DD')+7, 'YYYY-MM-DD') AS NEXTGDATE
		FROM	T_USER_LOTTO
		WHERE	UNO = #{uno}
		AND		REGDATE BETWEEN TO_DATE(#{gdate}, 'YYYY-MM-DD')-6 AND TO_DATE(#{gdate}, 'YYYY-MM-DD')
		ORDER BY REGDATE DESC
		AND		REGDATE BETWEEN TO_DATE('2017-11-04', 'YYYY-MM-DD') AND TO_DATE('2017-11-04', 'YYYY-MM-DD') + 6

SELECT * FROM T_USER_LOTTO;

-- T_USER_COUPON ---------------------------------------------------------------------------------------------------------------------
INSERT INTO T_USER_COUPON(UCNO, UCNAME, UCBUYCATE, UCMARKETCATE, REGDATE, MODDATE, UNO)			
VALUES(SEQ_USER_COUPON.NEXTVAL, '1000������', NULL, NULL, DEFAULT, NULL, 'p908uz');



SELECT * FROM T_USER_COUPON;


-- T_BUYINFO ---------------------------------------------------------------------------------------------------------------------
INSERT INTO T_BUYINFO(BNO, BBUYCATE, BMARKETCATE, REGDATE, MODDATE, UNO)			
VALUES();

SELECT * FROM T_BUYINFO;


select * from T_EVENT_ATT;

select * from t_user;

