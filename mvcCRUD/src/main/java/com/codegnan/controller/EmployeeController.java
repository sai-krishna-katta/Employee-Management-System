package com.codegnan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.codegnan.entity.Employee;
import com.codegnan.service.EmployeeService;

@Controller
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;
	
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("employee-list");
		
		mav.addObject("employees",employeeService.getAllEmployees());
		return mav;
	}
	
	@RequestMapping("/addEmployeeForm")
	public ModelAndView addEmployeeForm() {
		return new ModelAndView("add-employee-form");
	}
	@RequestMapping("/addEmployee")
	public ModelAndView addEmployee(@RequestParam("name")String name,
			@RequestParam("salary") Double salary,
			@RequestParam("designation") String designation) {
		
		Employee employee = new Employee();
		employee.setName(name);
		employee.setSalary(salary);
		employee.setDesignation(designation);
		employeeService.saveEmployee(employee);
				return new ModelAndView("redirect:/");
		
	}
	
	@RequestMapping("/editEmployeeForm")
	public ModelAndView editEmployeeForm(@RequestParam Long id) {
		ModelAndView mav = new ModelAndView("edit-employee-form");
		Employee employee = employeeService.getEmployeeById(id);
		mav.addObject("employee", employee);
		return mav;
		
	}
	
	@RequestMapping("/editEmployee")
	public ModelAndView editEmployee(
			@RequestParam Long id,
			@RequestParam("name")String name,
			@RequestParam("salary")Double salary,
			@RequestParam("designation")String designation) {
		Employee employee = employeeService.getEmployeeById(id);
		employee.setName(name);
		employee.setSalary(salary);
		employee.setDesignation(designation);
		employeeService.saveEmployee(employee);
		return new ModelAndView("redirect:/");
		
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteEmployee(@RequestParam Long id) {
		employeeService.deleteEmployee(id);
		return new ModelAndView("redirect:/employees/");
	}
	

}
