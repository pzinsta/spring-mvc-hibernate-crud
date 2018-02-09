package com.pzinsta.crud.dao;

import java.util.List;

import com.pzinsta.crud.entity.Customer;

public interface CustomerDAO {
    
    List<Customer> getCustomers();

    void addCustomer(Customer customer);

    Customer getCustomerById(int id);

    void updateCustomer(Customer customer);
}