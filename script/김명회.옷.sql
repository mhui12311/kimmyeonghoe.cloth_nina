DROP USER KIMMYEONGHOE CASCADE;

CREATE USER kimmyeonghoe IDENTIFIED BY kimmyeonghoe DEFAULT TABLESPACE USERS;
GRANT CONNECT, RESOURCE TO kimmyeonghoe;

create table KIMMYEONGHOE.USERS (
USER_ID VARCHAR2(10) CONSTRAINT USER_USERID_PK primary key,
USER_PW VARCHAR2(15) CONSTRAINT USER_USERPW_NN NOT NULL,
USER_NAME VARCHAR2(10) CONSTRAINT USER_USERNAME_NN NOT NULL,
BIRTHDAY DATE CONSTRAINT USER_BIRTHDAY_NN NOT NULL,
CONTACT VARCHAR2(11) CONSTRAINT USER_CONTACT_NN NOT NULL,
EMAIL VARCHAR2(20) CONSTRAINT USER_EMAIL_NN NOT NULL,
POSTCODE VARCHAR2(8),
ADDRESS VARCHAR2(100),
JOIN_DATE DATE CONSTRAINT USER_JOINDATE_NN NOT NULL,
WITHDRAWAL_DATE DATE);


insert into KIMMYEONGHOE.users(USER_ID, USER_PW, USER_NAME, BIRTHDAY, CONTACT, EMAIL, POSTCODE, ADDRESS, JOIN_DATE, WITHDRAWAL_DATE)
      values ('admin','admin', '관리자', '2021-01-01','0234567890','admin@efgh.com','111111','경기도 고양시 덕양',sysdate,null);
insert into KIMMYEONGHOE.users(USER_ID, USER_PW, USER_NAME, BIRTHDAY, CONTACT, EMAIL, POSTCODE, ADDRESS, JOIN_DATE, WITHDRAWAL_DATE)
      values ('user','user', 'user', '2021-01-01','01011111111','user@naver.com','111111','��⵵ ���� �ϻ굿�� �߾ӷ�',sysdate,null);

commit;
