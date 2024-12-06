package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Product;

public interface AdminService 
{
	public List<Customer> viewAllCustomers();
	public Admin checkAdminLogin(String uname,String pwd);
	public long customercount();
	
	public String deletecustomer(int id);
	public Customer displayCustomerById(int id);
	
	//image upload & display operations
	
	public String addProduct(Product product);
	public List<Product> viewAllProducts();
	public Product displayProductById(int pid);
}
