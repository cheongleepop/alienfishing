CREATE TABLE worker(
    id VARCHAR2(20),
    pwd VARCHAR2(20),
    name VARCHAR2(50),
    phone VARCHAR2(13),
    CONSTRAINT worker_id_pk PRIMARY KEY (id));

CREATE TABLE address(
    zip_num VARCHAR2(5),
    sido VARCHAR2(50),
    gugun VARCHAR2(50),
    dong VARCHAR2(50),
    bunji VARCHAR2(100);

CREATE TABLE member(
    id VARCHAR2(20),
    pwd VARCHAR2(20),
    name VARCHAR2(50),
    email VARCHAR2(50),
    zip_num VARCHAR2(5),
    address VARCHAR2(300),
    phone VARCHAR2(13),
    useyn CHAR(1),
    indate DATE,
        CONSTRAINT member_id_pk PRIMARY KEY(id),
        CONSTRAINT member_id_nn NOT NULL (id));
    
CREATE TABLE product(
    pseq NUMBER(5)
        CONSTRAINT product_pseq_pk PRIMARY KEY
        CONSTRAINT product_pseq_nn NOT NULL,
    name VARCHAR2(100),
    kind CHAR(1),
    price1 NUMBER(7),
    price2 NUMbER (7),
    price3 NUMBER(7),
    content VARCHAR2(100),
    image VARCHAR2(50),
    useyn CHAR(1),
    bestyn CHAR(1),
    indate DATE);
    
CREATE TABLE cart(
    cseq NUMBER(10)
        CONSTRAINT cart_cseq_pk PRIMARY KEY
        CONSTRAINT cart_cseq_nn NOT NULL,
    id VARCHAR2(20)
        CONSTRAINT cart_id_fk FOREIGN KEY,
    pseq NUMBER(5)
        CONSTRAINT cart_pseq_fk FOREIGN KEY,
    quantity NUMBER(5),
    result CHAR(1)
    indate DATE);

CREATE TABLE orders(
    oseq NUMBER(10)
        CONSTRAINT orders_oseq_pk PRIMARY KEY
        CONSTRAINT orders_oseq_nn NOT NULL,
    id VARCHAR2(20)
        CONSTRAINT ordders_id_fk FOREIGN KEY,
    indate DATE);
    
CREATE TABLE order_detail(
    odseq NUMBER(10)
        CONSTRAINT order_detail_odseq_pk PRIMARY KEY
        CONSTRAINT order_detail_odseq_nn NOT NULL,
    oseq NUMBER(10)
        CONSTRAINT order_detail_oseq_fk FOREIGN KEY,
    pseq NUMBER(5)
        CONSTRAINT order_detail_pseq_fk FOREIGN KEY,
    quantity NUMBER(5),
    result CHAR(1));
CREATE TABLE

    

    

