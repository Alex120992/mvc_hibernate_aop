package ru.zateev.spring.mvc_aop_hiber.dao;

import ru.zateev.spring.mvc_aop_hiber.entity.Employee;

import java.util.List;

public interface EmployeeDao {
    public List<Employee> getAllEmployees ();
}
