package com.book.rental.controller;

import com.book.rental.service.CustomerService;
import com.book.rental.vo.CustomerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class CustomerController {

    @Autowired
    CustomerService service;

    @GetMapping("/customers")
    public String customers(Model model) {

        List<CustomerVO> customers = service.selectCustomers();
        model.addAttribute("customers", customers);
        return "customers";
    }

    @GetMapping("customer/join")
    public String showJoinForm() {
        return "customer_join";
    }

    @PostMapping("customer/join")
    public String processJoinForm() {
        // 여기에 고객 등록 로직을 구현하세요
        return "redirect:/customer/list";
    }

    @GetMapping("customer/{cust_no}")
    public String showCustomer(@PathVariable int cust_no, Model model) {
        CustomerVO customer = service.selectCustomer(cust_no);
        model.addAttribute("customer", customer);
        return "customer";
    }

    @GetMapping("customer/edit/{cust_no}")
    public String editCustomer(@PathVariable int cust_no, Model model) {
        CustomerVO customer = service.selectCustomer(cust_no);
        model.addAttribute("customer", customer);
        return "customer_edit";
    }

    @PostMapping("/customer")
    public String updateCustomer(@ModelAttribute CustomerVO customer, RedirectAttributes redirectAttributes) {
        try {
            // 고객 정보 업데이트
            service.updateCustomer(customer);

            // 성공 메시지 설정
            redirectAttributes.addFlashAttribute("message", "고객 정보가 성공적으로 업데이트되었습니다.");

            // 상세 페이지로 리다이렉트
            return "redirect:/customer/" + customer.getCust_no();
        } catch (Exception e) {
            // 에러 처리
            redirectAttributes.addFlashAttribute("error", "고객 정보 업데이트 중 오류가 발생했습니다: " + e.getMessage());

            // 수정 페이지로 리다이렉트
            return "redirect:/customer/edit/" + customer.getCust_no();
        }
    }
}
