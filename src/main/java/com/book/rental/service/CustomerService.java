package com.book.rental.service;

import com.book.rental.dao.CustomerDAO;
import com.book.rental.vo.CustomerVO;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@NoArgsConstructor
public class CustomerService {

    @Autowired
    private CustomerDAO dao;


    public List<CustomerVO> selectCustomers() {
        return dao.findAll();
    }

    public CustomerVO selectCustomer(int cust_no) {
        return dao.findOne(cust_no);
    }

    public int updateCustomer(CustomerVO customer) {
        return dao.updateOne(customer);
    }

}
