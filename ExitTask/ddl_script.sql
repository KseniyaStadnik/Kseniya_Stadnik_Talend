--create CLS
CREATE TABLE customers_cls(
    cust_dm_id         NUMBER(38) PRIMARY KEY,
    id              NUMBER(38),
    name            VARCHAR2(255 BYTE),
    username        VARCHAR2(255 BYTE),
    email           VARCHAR2(255 BYTE),
    dateofbirth     DATE,
    streetaddress   VARCHAR2(255 BYTE),
    city            VARCHAR2(255 BYTE),
    country         VARCHAR2(13 BYTE),
    zip             VARCHAR2(6 BYTE),
    state           VARCHAR2(3 BYTE),
    phone           VARCHAR2(14 BYTE)
);

--CREATE DIMENSION
CREATE TABLE customers_dim(
    cust_dm_id         NUMBER(38),
    id              NUMBER(38),
    name            VARCHAR2(255 BYTE),
    username        VARCHAR2(255 BYTE),
    email           VARCHAR2(255 BYTE),
    dateofbirth     DATE,
    streetaddress   VARCHAR2(255 BYTE),
    city            VARCHAR2(255 BYTE),
    country         VARCHAR2(13 BYTE),
    zip             VARCHAR2(6 BYTE),
    state           VARCHAR2(3 BYTE),
    phone           VARCHAR2(14 BYTE)
);
CREATE TABLE products_dim(
    prod_dm_id                 NUMBER(38),
    products	            NUMBER(38),
    productname	            VARCHAR2(255 BYTE),
    companyname	            VARCHAR2(255 BYTE),
    price	                NUMBER(9,3),
    warehouselocationstate  VARCHAR2(10 BYTE)
);

CREATE TABLE products_cls(
    prod_dm_id                 NUMBER(38) PRIMARY KEY,
    products	            NUMBER(38),
    productname	            VARCHAR2(255 BYTE),
    companyname	            VARCHAR2(255 BYTE),
    price	                NUMBER(9,3),
    warehouselocationstate  VARCHAR2(10 BYTE)
);

CREATE TABLE credit_card_cls(
    card_dm_id                 NUMBER(38) PRIMARY KEY,
    creditCARD                 VARCHAR2(255),
    creditcardnumber           VARCHAR2(255)
);

CREATE TABLE credit_card_dim(
    card_dm_id                 NUMBER(38) PRIMARY KEY,
    creditCARD                 VARCHAR2(255),
    creditcardnumber           VARCHAR2(255)
);

CREATE TABLE fct_purchases (
    payment_id           NUMBER(38) ,
    cust_dm_id          NUMBER(38) ,
    prod_dm_id           NUMBER(38) ,
    transactiondate     TIMESTAMP(0),
    creditcardnumber    NUMBER(38) ,
    isinterstate        NUMBER(2),
    constraint pk_rr primary key(payment_id,cust_dm_id,prod_dm_id,creditcardnumber )
);

CREATE SEQUENCE SEQ_CUSTOMERS
INCREMENT BY 1 
MINVALUE 1;

CREATE SEQUENCE SEQ_PRODUCTS
INCREMENT BY 1 
MINVALUE 1;

CREATE SEQUENCE SEQ_PURCHASES
INCREMENT BY 1 
MINVALUE 1;

CREATE SEQUENCE SEQ_CARDS
INCREMENT BY 1 
MINVALUE 1;
