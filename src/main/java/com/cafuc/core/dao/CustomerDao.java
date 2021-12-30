package com.cafuc.core.dao;

import com.cafuc.core.entity.Customer;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author: xcz
 */

@Repository
public interface CustomerDao {
    //客户列表
    List<Customer> selectCustomerList(Customer customer);

    //客户数
    Integer selectCustomerListCount(Customer customer);

    // 创建客户
    int createCustomer(Customer customer);

    // 通过id查询客户
    Customer getCustomerById(Integer id);

    // 更新客户信息
    int updateCustomer(Customer customer);

    // 删除客户
    int deleteCustomer(Integer id);


}
