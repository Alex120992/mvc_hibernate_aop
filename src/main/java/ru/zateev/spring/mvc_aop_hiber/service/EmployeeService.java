package ru.zateev.spring.mvc_aop_hiber.service;

import ru.zateev.spring.mvc_aop_hiber.entity.Employee;

import java.util.List;

public interface EmployeeService {

    public List<Employee> getAllEmployees ();
    public void saveEmployee (Employee employee);
    public Employee getEmployee (int id);
    public void deleteEmployee (int id);
}
