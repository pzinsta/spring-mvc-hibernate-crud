package com.pzinsta.crud.service;

import java.util.List;

import com.pzinsta.crud.entity.Customer;

public interface CustomerService {
    List<Customer> getCustomers();

    void addCustomer(Customer customer);

    Customer getCustomerById(int id);

    void updateCustomer(Customer customer);
}
