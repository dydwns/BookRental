package com.book.rental;

import com.book.rental.mapper.*;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//@Controller
public class DbController{
	@Autowired
	MemberMapper memberMapper;// = new MemberMapper;
	
	@RequestMapping(value = "/check", method = RequestMethod.GET)
	public String checkCustomer() {
		List<MemberDto> dtoList = memberMapper.findAll();
		return "check";
	}
}
