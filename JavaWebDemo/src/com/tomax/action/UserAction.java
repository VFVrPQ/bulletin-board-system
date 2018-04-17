package com.tomax.action;

import com.tomax.cause.ResultCause;
import com.tomax.service.UserService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

/**
 * Created by Lenovo on 2017/6/25.
 */
@Controller("userAction")
public class UserAction {
    @Resource(name = "userService")
    private UserService userService;

    private ResultCause result = new ResultCause();
    private String username;
    private String password;

    public String register(){
        if (userService.addAccountService(username,password)){
            result.setCause("200","REGISTER_SUCCESS");
        }else {
            result.setCause("400","REGISTER_FAIL");
        }
        return "REGISTER_SUCCESS";
    }
    public String login(){
        if (userService.userExist(username,password)){
            result.setCause("200","LOGIN_SUCCESS");
        }else {
            result.setCause("400","LOGIN_FAIL");
            return "LOGIN_FAIL";
        }
        return "LOGIN_SUCCESS";
    }

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public ResultCause getResult() {
        return result;
    }

    public void setResult(ResultCause result) {
        this.result = result;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
