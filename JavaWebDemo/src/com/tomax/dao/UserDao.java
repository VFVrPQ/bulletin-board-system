package com.tomax.dao;

import com.tomax.entity.UserEntity;
import java.util.List;

/**
 * Created by Lenovo on 2017/6/25.
 */

public interface UserDao{
    public boolean insertData(String sql,UserEntity user);
    public List<UserEntity> getData(String sql,String key);
}
