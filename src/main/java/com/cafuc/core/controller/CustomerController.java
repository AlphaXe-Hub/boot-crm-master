package com.cafuc.core.controller;

import com.cafuc.common.utils.Page;
import com.cafuc.core.entity.BaseDict;
import com.cafuc.core.entity.Customer;
import com.cafuc.core.entity.User;
import com.cafuc.core.service.BaseDictService;
import com.cafuc.core.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/**
 * @author: xcz
 */
@Controller

public class CustomerController {
    @Autowired
    private CustomerService customerService;
    @Autowired
    private BaseDictService baseDictService;
    @Value("${customer.from.type}")
    private String FROM_TYPE;
    @Value("${customer.industry.type}")
    private String INDUSTRY_TYPE;
    @Value("${customer.level.type}")
    private String LEVEL_TYPE;

    @RequestMapping(value = "/customer/list")
    public String list(@RequestParam(defaultValue = "1") Integer page,
                       @RequestParam(defaultValue = "10") Integer rows,
                       String custName, String custSource, String custIndustry,
                       String custLevel, Model model) {


        Page<Customer> customers = customerService.findCustomerList(page, rows, custName,
                custSource, custIndustry, custLevel);
        model.addAttribute("page", customers);

        List<BaseDict> fromType = baseDictService.findBaseDictByTypeCode(FROM_TYPE);
        List<BaseDict> industryType = baseDictService.findBaseDictByTypeCode(INDUSTRY_TYPE);
        List<BaseDict> levelType = baseDictService.findBaseDictByTypeCode(LEVEL_TYPE);
        model.addAttribute("fromType", fromType);
        model.addAttribute("industryType", industryType);
        model.addAttribute("levelType", levelType);
        model.addAttribute("custName", custName);
        model.addAttribute("custSource", custSource);
        model.addAttribute("custIndustry", custIndustry);
        model.addAttribute("custLevel", custLevel);
        return "customer";
    }

    @RequestMapping("/customer/create")
    @ResponseBody
    public String customerCreate(Customer customer, HttpSession session) {

        User user = (User) session.getAttribute("USER_SESSION");
        customer.setCust_create_id(user.getUser_Id());
        Date date = new Date();
        Timestamp timeStamp = new Timestamp(date.getTime());
        customer.setCust_createtime(timeStamp);
        int rows = customerService.createCustomer(customer);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    @RequestMapping("/customer/getCustomerById")
    @ResponseBody
    public Customer getCustomerById(Integer id) {
        Customer customer = customerService.getCustomerById(id);
        return customer;
    }

    @RequestMapping("/customer/update")
    @ResponseBody
    public String customerUpdate(Customer customer) {
        int rows = customerService.updateCustomer(customer);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    @RequestMapping("/customer/delete")
    @ResponseBody
    public String customerDelete(Integer id) {
        int rows = customerService.deleteCustomer(id);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }


}
