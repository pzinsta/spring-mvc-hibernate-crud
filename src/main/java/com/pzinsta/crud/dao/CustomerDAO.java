package com.pzinsta.crud.dao;

import java.util.List;

import com.pzinsta.crud.entity.Customer;

public interface CustomerDAO {
    
    List<Customer> getCustomers();
}
