package com.wangze.core.entity;

import lombok.Data;
import org.springframework.stereotype.Component;

import java.io.Serial;
import java.io.Serializable;

/**
 * @author: xcz
 */

@Component
@Data
public class User implements Serializable {
    @Serial
    private static final long serialVersionUID = 1L;
    private Integer user_Id;
    private String user_code;
    private String user_name;
    private String user_password;
    private Integer user_state;





}
