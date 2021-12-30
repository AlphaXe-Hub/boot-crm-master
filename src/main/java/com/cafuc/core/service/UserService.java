package com.cafuc.core.service;

import com.cafuc.core.entity.User;

/**
 * @author XCZ
 */
public interface UserService {
    User findUser(String usercode, String password);


}
