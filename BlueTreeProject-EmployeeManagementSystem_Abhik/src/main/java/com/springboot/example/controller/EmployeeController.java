package com.springboot.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.springboot.example.model.Employee;
import com.springboot.example.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService e;

	@GetMapping("/")
	public String index(Model m) {
		System.out.println("home.jsp is running...");
		m.addAttribute("data", e.findAll());
		return "home";
	}
	

	@RequestMapping("/addEmp")
	private String addEmp() {
		System.out.println("addEmp.jsp is running...");
		return "addEmp";
	}
	
	@PostMapping("/add")
	private String add(Employee emp, Model m) {
		e.add(emp);
		m.addAttribute("data", e.findAll());
		return "home";
	}
	

	@RequestMapping("/updateEmp/{id}")
	private String updateEmp(@PathVariable("id") int id, Model m) {
		System.out.println("updateEmp.jsp is running...");
		m.addAttribute("data", e.findById(id));
		return "updateEmp";
	}
	

	@PostMapping("/update")
	private String update(Employee emp, Model m) {
		System.out.println(emp.getAge());
		e.add(emp);
		m.addAttribute("data", e.findAll());
		return "home";
	}
	
	
	@RequestMapping("/delete/{id}")
	private String delete(@PathVariable("id") int id, Model m) {
		e.delete(id);
		m.addAttribute("data", e.findAll());
		return "home";
	}
	
	@ResponseStatus(value = HttpStatus.BAD_GATEWAY)
	@ExceptionHandler(value = NumberFormatException.class)
	public String numberExceptionHandler(Model m) {
		m.addAttribute("msg","Salary must be Integer");
		return "exceptionHandler";
	}
	
	@ResponseStatus(value = HttpStatus.ALREADY_REPORTED)
	@ExceptionHandler(value = Exception.class)
	public String exceptionHandler(Model m) {
		m.addAttribute("msg","Email already exist in Database");
		return "exceptionHandler";
	}
	

}
