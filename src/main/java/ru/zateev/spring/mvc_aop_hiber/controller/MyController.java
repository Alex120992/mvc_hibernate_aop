package ru.zateev.spring.mvc_aop_hiber.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.zateev.spring.mvc_aop_hiber.dao.EmployeeDao;
import ru.zateev.spring.mvc_aop_hiber.entity.Employee;

import java.util.List;

@Controller
public class MyController {
    @Autowired
    private EmployeeDao employeeDao;

    @RequestMapping("/")
    public String showAllEmployees(Model model) {
        List<Employee> allEmployees = employeeDao.getAllEmployees();
        model.addAttribute("allEmps", allEmployees);
        return "all-employees";
    }
}
