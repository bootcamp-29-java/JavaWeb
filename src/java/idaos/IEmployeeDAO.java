/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package idaos;

import java.math.BigDecimal;
import java.util.List;
import models.Account;
import models.Employee;

/**
 *
 * @author Lenovo
 */
public interface IEmployeeDAO {
    public List<Employee> search(String key);
    public List<Employee> searchID(int key);
    public List<Employee> searchIDorSal(int key);
    public Employee getById(int id);
    public boolean saveOrDelete(Employee employee, boolean isSave);
}
