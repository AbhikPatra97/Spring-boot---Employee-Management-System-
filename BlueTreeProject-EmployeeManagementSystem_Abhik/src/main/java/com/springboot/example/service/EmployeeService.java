package com.springboot.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.example.dao.EmployeeRepository;
import com.springboot.example.model.Employee;

@Service
public class EmployeeService {
	
	@Autowired
	EmployeeRepository e;

	public List<Employee> findAll() {
		return e.findAll();
	}

	public void add(Employee emp) {
		e.save(emp);
	}

	public Employee findById(int id) {
		return e.getById(id);
	}

	public void delete(int id) {
		e.delete(e.getById(id));
	}

}
