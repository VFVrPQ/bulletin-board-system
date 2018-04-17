package com.tomax.service.impl;

import com.tomax.dao.UserDao;
import com.tomax.entity.UserEntity;
import com.tomax.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Lenovo on 2017/6/28.
 */
@Service("userService")
public class UserServiceImpl implements UserService{
    @Resource(name = "userDao")
    private UserDao userDao;
    @Override
    public boolean addAccountService(String username,String password){
        String sql = "insert into user (name,password) values (:name,:password)";
        UserEntity userEntity = new UserEntity();
        userEntity.setName(username);
        userEntity.setPassword(password);
        return userDao.insertData(sql,userEntity);
    }
    @Override
    public boolean userExist(String username, String password){
        String sql = "select * from user where name = ?";
        List<UserEntity> userEntityList = userDao.getData(sql,username);
        if (userEntityList.size()==0||userEntityList==null){
            return false;
        }else if (userEntityList.get(0).getPassword().equals(password)){
            return true;
        }
        return false;
    }

    public UserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }
}
