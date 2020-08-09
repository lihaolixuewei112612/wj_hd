package com.example.demo.dao;

import com.example.demo.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @Author : lihao
 * Created on : 2020-08-09
 * @Description : TODO描述类作用
 */
public interface UserDAO extends JpaRepository<User,Integer> {
    User findByUsername(String username);

    User getByUsernameAndPassword(String username,String password);
}
