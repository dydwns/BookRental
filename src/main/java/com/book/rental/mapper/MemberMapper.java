package com.book.rental.mapper;

import java.beans.JavaBean;
import java.util.List;

import com.book.rental.*;
import org.apache.ibatis.annotations.Mapper;

public interface MemberMapper {

	public List<MemberDto> findAll();

}
