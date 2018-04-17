package cn.vfvrpq.dao;

import cn.vfvrpq.entity.UserEntity;

import java.util.List;

public interface UserDao {
    List<UserEntity> getData(String sql, Object[] key);
    Boolean addData(String sql, UserEntity userEntity);
}
