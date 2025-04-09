package com.codegnan.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.codegnan.entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {

}
