package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Customer;


public interface CustomerService 
{
	public String customerRegistration(Customer customer);
	public Customer checkCustomerLogin(String email,String password);
	
	public String updateCustomer(Customer customer);
	
	
}
