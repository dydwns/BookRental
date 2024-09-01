USE fc;

-- 테이블 생성
create table customer_tbl
(
    cust_no    int not null AUTO_INCREMENT PRIMARY KEY,
    cust_name  varchar(20),
    phone      varchar(20),
    join_date  datetime default current_timestamp,
    cust_email varchar(50),
    grade      varchar(20)
);

create table rent_tbl
(
    cust_no    int not null,
    rent_no    int not null primary key,
    book_code  varchar(20),
    rent_price int,
    rent_date  datetime default current_timestamp
);
