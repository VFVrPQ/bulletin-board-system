package com.tomax.service;
/**
 * Created by Lenovo on 2017/6/25.
 */

public interface UserService {
    public boolean addAccountService(String username,String password);
    public boolean userExist(String username,String password);
}
