package com.book.rental.dao;

import com.book.rental.vo.CustomerVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CustomerDAO {

    @Autowired
    private SqlSessionTemplate mybatis;

    public List<CustomerVO> findAll() {
        return mybatis.selectList("com.book.rental.mappers.customer.findAll");
    }

    public CustomerVO findOne(int cust_no) {
        return mybatis.selectOne("com.book.rental.mappers.customer.findOne", cust_no);
    }

    public int updateOne(CustomerVO customer) {
        return mybatis.update("com.book.rental.mappers.customer.update", customer);
    }
}
