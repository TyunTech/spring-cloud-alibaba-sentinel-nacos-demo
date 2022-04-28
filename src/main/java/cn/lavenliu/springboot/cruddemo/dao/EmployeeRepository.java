package cn.lavenliu.springboot.cruddemo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import cn.lavenliu.springboot.cruddemo.entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

}