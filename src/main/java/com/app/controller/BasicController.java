package com.app.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.app.modal.Employee;
import com.app.service.EmployeeService;
@RestController
public class BasicController {
	
	@Autowired
	private EmployeeService service;
	@RequestMapping("home")
	public List<Employee> showData() {
		List<Employee> list = service.getAllEmployee();
		return list;
 	}
	
	@RequestMapping("/greeting")
	public String greetings(@RequestParam("name") String name){
		return "Hello "+name+"!";
	}
	
} 
