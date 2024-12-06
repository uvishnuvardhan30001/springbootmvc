package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.ProductRepositry;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private ProductRepositry productRepositry;
	
	@Override
	public List<Customer> viewAllCustomers() {
		return customerRepository.findAll();
	}
	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		return adminRepository.checkAdminLogin(uname, pwd);
	}
	@Override
	public long customercount() {
		return customerRepository.count();
		}
	@Override
	public String deletecustomer(int id) {
		 customerRepository.deleteById(id);
		 return"cuatomer deleted sucessfully";
	}
	@Override
	public Customer displayCustomerById(int id) {
		return customerRepository.findById(id).get();
	}
	@Override
	public String addProduct(Product product) {
		productRepositry.save(product);
		return "Product Added Sucessfully";
	}
	@Override
	public List<Product> viewAllProducts() {
		return productRepositry.findAll();
	}
	@Override
	public Product displayProductById(int pid) {
		return productRepositry.findById(pid).get();
	}
	
}
