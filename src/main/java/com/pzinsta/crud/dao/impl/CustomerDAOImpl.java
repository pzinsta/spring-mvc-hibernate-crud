package com.pzinsta.crud.dao.impl;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pzinsta.crud.dao.CustomerDAO;
import com.pzinsta.crud.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public List<Customer> getCustomers() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Customer> criteriaQuery = criteriaBuilder.createQuery(Customer.class);
        criteriaQuery.select(criteriaQuery.from(Customer.class));
        return session.createQuery(criteriaQuery).getResultList();
    }

    @Override
    public void addCustomer(Customer customer) {
        sessionFactory.getCurrentSession().save(customer);
    }

}
