
-- T_USER -------------------------------------------------------------------------------------------------------------------------
INSERT INTO T_USER(UNO, UPWD, UNAME, UEMAIL, UPHONE, UACCOUNT, UMONEY, REGDATE, MODDATE)
VALUES('p908uz', 'ssg2017', '������', 'p908uz@shinsegae.com', 01011112222, '111-1111-1111', DEFAULT, DEFAULT, NULL);
INSERT INTO T_USER(UNO, UPWD, UNAME, UEMAIL, UPHONE, UACCOUNT, UMONEY, REGDATE, MODDATE)
VALUES('p908v2', 'ssg2017', '����ȯ', 'p908v2@shinsegae.com', 01022223333, '222-3333-3333', DEFAULT, DEFAULT, NULL);
INSERT INTO T_USER(UNO, UPWD, UNAME, UEMAIL, UPHONE, UACCOUNT, UMONEY, REGDATE, MODDATE)
VALUES('p908v3', 'ssg2017', '������', 'p908v3@shinsegae.com', 01044445555, '444-5555-5555', DEFAULT, DEFAULT, NULL);

SELECT * FROM T_USER;

-- T_EVENT_ATT ---------------------------------------------------------------------------------------------------------------------
INSERT INTO T_EVENT_ATT(EANO, EACNT, EAATTCNT, EAHISTDATE, REGDATE, MODDATE, UNO)
VALUES(SEQ_EVENT_ATT.NEXTVAL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, NULL, 'p908uz');

SELECT * FROM T_EVENT_ATT;

-- T_USER_LOTTO ---------------------------------------------------------------------------------------------------------------------
INSERT INTO T_USER_LOTTO(ULNO, ULNAME, ULNUM1, ULNUM2, ULNUM3, ULNUM4, ULNUM5, ULNUM6, REGDATE, MODDATE, UNO)
VALUES(SEQ_USER_LOTTO.NEXTVAL, '��ȸ������', 1, 2, 3, 4, 5, 6, DEFAULT, NULL, 'p908uz');

SELECT * FROM T_USER_LOTTO;

-- T_USER_COUPON ---------------------------------------------------------------------------------------------------------------------
INSERT INTO T_USER_COUPON(UCNO, UCNAME, UCBUYCATE, UCMARKETCATE, REGDATE, MODDATE, UNO)			
VALUES(SEQ_USER_COUPON.NEXTVAL, '1000������', NULL, NULL, DEFAULT, NULL, 'p908uz');

SELECT * FROM T_USER_COUPON;


-- T_BUYINFO ---------------------------------------------------------------------------------------------------------------------
INSERT INTO T_BUYINFO(BNO, BBUYCATE, BMARKETCATE, REGDATE, MODDATE, UNO)			
VALUES();

SELECT * FROM T_BUYINFO;

--- T_LUCK ------------------------------------------------------------------
INSERT INTO T_LUCK(NAME, CNT) VALUES ('cnt',1);
INSERT INTO T_LUCK(NAME, MSG) VALUES ('mouse','인정받으려 아는 체 했다가 이용당할 수도 있습니다. 때로는 침묵이 편안함을 줍니다. 만약 다른 사람들에게 미팅이나 회의를 주선한다면 자기 일처럼 성심성의 것 진행시켜 주는 것이 유리하다. 당신도 조만간 당사자가 될 수있기 때문이다. 외부 거래처의 상대방 말에 따라 세심한 표정관리를 해야 하는 경우도 있겠다.

36년생다른 날에 비해서 컨디션이 안 좋을 수도 있다. 간단한 운동으로 회복하는 것이 좋다.

48년생남들이 신중 또 신중 하게 생각하고 결정하는 것이 바람직하다.

60년생새로운 일을 하고자 한다면, 한 템포 쉬도록 하라. 모든 일은 순리대로 행해야 한다.

72년생되도록이면 여행을 하거나 먼 길을 떠나지 않도록 하라. 새로운 일이 기다리고 있다.

84년생평지풍파가 지난 뒤라면 새로운 변화의 계기가 찾아올 것이니, 여유를 갖고 기다려라.');

delete from T_LUCK;


