package com.book.rental;

import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

@Setter
@Getter
public class MemberDto {
	private int cust_no;             // 고객 번호
	private String cust_name;        // 고객 이름
	private String phone;            // 전화번호
	private Timestamp join_date;     // 가입일
	private String cust_email;       // 이메일
	private String grade;            // 등급


//	public int getCust_no() {
//		return cust_no;
//	}
//
//	public void setCust_no(int cust_no) {
//		this.cust_no = cust_no;
//	}
//
//	public String getCust_name() {
//		return cust_name;
//	}
//
//	public void setCust_name(String cust_name) {
//		this.cust_name = cust_name;
//	}
//
//	public String getPhone() {
//		return phone;
//	}
//
//	public void setPhone(String phone) {
//		this.phone = phone;
//	}
//
//	public Timestamp getJoin_date() {
//		return join_date;
//	}
//
//	public void setJoin_date(Timestamp join_date) {
//		this.join_date = join_date;
//	}
//
//	public String getCust_email() {
//		return cust_email;
//	}
//
//	public void setCust_email(String cust_email) {
//		this.cust_email = cust_email;
//	}
//
//	public String getGrade() {
//		return grade;
//	}
//
//	public void setGrade(String grade) {
//		this.grade = grade;
//	}
}
