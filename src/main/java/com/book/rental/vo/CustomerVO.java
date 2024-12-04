package com.book.rental.vo;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class CustomerVO {
    private int cust_no;
    private String cust_name;
    private String phone;
    private Timestamp join_date;
    private String cust_email;
    private String grade;
}
