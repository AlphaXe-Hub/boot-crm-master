package com.cafuc.core.dao;

import com.cafuc.core.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @author: xcz
 */

@Repository
public interface UserDao {

    User findUser(@Param("usercode") String usercode, @Param("password") String password);

}
