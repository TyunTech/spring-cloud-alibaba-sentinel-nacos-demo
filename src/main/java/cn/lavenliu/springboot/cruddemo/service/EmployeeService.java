package cn.lavenliu.springboot.cruddemo.service;

import java.util.List;

import cn.lavenliu.springboot.cruddemo.entity.Employee;

public interface EmployeeService {
    
    public List<Employee> findAll();

    public Employee findById(Integer theId);

    public void save(Employee theEmployee);

    public void deleteById(Integer theId);
}
