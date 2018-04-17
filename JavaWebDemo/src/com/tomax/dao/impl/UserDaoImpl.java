package com.tomax.dao.impl;

import com.tomax.dao.DaoManager;
import com.tomax.dao.UserDao;
import com.tomax.entity.UserEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Lenovo on 2017/6/28.
 */
@Repository("userDao")
public class UserDaoImpl extends DaoManager implements UserDao{
    @Override
    public boolean insertData(String sql, UserEntity userEntity){
        return this.insertByBean(sql,userEntity);
    }

    @Override
    public List<UserEntity> getData(String sql, String id){
        return this.query(sql,new Object[]{id},UserEntity.class);
    }
}
