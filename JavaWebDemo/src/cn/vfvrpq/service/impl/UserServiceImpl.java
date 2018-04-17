package cn.vfvrpq.service.impl;

import cn.vfvrpq.dao.UserDao;
import cn.vfvrpq.entity.UserEntity;
import cn.vfvrpq.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource(name = "userDao")
    private UserDao userDao;

    @Override
    public boolean addData(UserEntity userEntity) {
        if (isExist(userEntity.getUserId())) return false;
        String sql = "insert into user (userId,userPwd) values (:userId,:userPwd)";
        return userDao.addData(sql, userEntity);
    }

    @Override
    public boolean isExist(String userId) {
        String sql = "select * from user where userId = ?";
        List<UserEntity> userEntity = userDao.getData(sql, new Object[]{userId});
        if (userEntity.size()==0) return false;
        return true;
    }

    @Override
    public boolean login(String userId, String userPwd) {
        String sql = "select * from user where userId = ? and userPwd = ?";
        List<UserEntity> userEntity = userDao.getData(sql, new Object[]{userId,userPwd});
        if (userEntity.size()==0) return false;
        return true;
    }
}
