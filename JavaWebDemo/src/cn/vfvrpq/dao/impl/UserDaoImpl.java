package cn.vfvrpq.dao.impl;

import cn.vfvrpq.dao.DaoManager;
import cn.vfvrpq.dao.UserDao;
import cn.vfvrpq.entity.UserEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userDao")
public class UserDaoImpl extends DaoManager implements UserDao {
    @Override
    public List<UserEntity> getData(String sql, Object[] key) {
        return this.query(sql, key, UserEntity.class);
    }

    @Override
    public Boolean addData(String sql, UserEntity userEntity) {
        return insertByBean(sql, userEntity);
    }
}
