package ru.zateev.spring.mvc_aop_hiber.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.zateev.spring.mvc_aop_hiber.dao.EmployeeDao;
import ru.zateev.spring.mvc_aop_hiber.entity.Employee;

import java.util.List;
/** Service - это компонент, через который контроллер обращается к Dao*/
@Service
public class EmployeeServiceImpl implements EmployeeService{
    @Autowired
    private EmployeeDao employeeDao;

    @Override
    @Transactional
    public List<Employee> getAllEmployees() {
        return employeeDao.getAllEmployees();
    }
}
