package com.sales.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sales.models.Customer;
import com.sales.repositories.CustomerRepository;

@Service
public class CustomerService {

	@Autowired
	CustomerRepository custRepository;
	
	public List<Customer> findAll() {
		return (List<Customer>) custRepository.findAll();
	}
	
}
