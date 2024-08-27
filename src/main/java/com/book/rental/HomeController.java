package com.book.rental;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home() {

        return "home";
    }

    @RequestMapping(value = "/customer", method = RequestMethod.POST)
    public String postCustomer() {
        return "customerJoin";
    }

    @RequestMapping(value = "/customerJoin", method = RequestMethod.GET)
    public String joinCustomer() {
        return "customerJoin";
    }
}
