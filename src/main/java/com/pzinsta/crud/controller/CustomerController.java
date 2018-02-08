package com.pzinsta.crud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pzinsta.crud.entity.Customer;
import com.pzinsta.crud.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @GetMapping("/list")
    public String listCustomers(Model model) {
        model.addAttribute("customers", customerService.getCustomers());
        return "listCustomers";
    }
    
    @GetMapping("/add")
    public String showAddCustomerForm(Model model) {
        model.addAttribute("customer", new Customer());
        return "addCustomer";
    }
 
    @PostMapping("/add")
    public String addCustomer(@ModelAttribute("customer") Customer customer) {
        customerService.addCustomer(customer);
        
        return "redirect:/customer/list";
    }
    
    public CustomerService getCustomerService() {
        return customerService;
    }

    public void setCustomerService(CustomerService customerService) {
        this.customerService = customerService;
    }
    
}
