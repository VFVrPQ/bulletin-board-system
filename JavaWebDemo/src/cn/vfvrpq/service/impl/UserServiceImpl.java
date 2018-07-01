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
        StringBuffer sql = new StringBuffer();
        sql.append("insert into \"user\" (userId,userPwd");
        if (userEntity.getUserType()!=null) sql.append(",userType");
        if (userEntity.getUserName()!=null) sql.append(",userName");
        if (userEntity.getUserSex() !=null) sql.append(",userSex");
        sql.append(") values (:userId,:userPwd");
        if (userEntity.getUserType()!=null) sql.append(",:userType");
        if (userEntity.getUserName()!=null) sql.append(",:userName");
        if (userEntity.getUserSex() !=null) sql.append(",:userSex");
        sql.append(")");
        return userDao.addData(sql.toString(), userEntity);
    }

    @Override
    public boolean isExist(String userId) {
        String sql = "select * from \"user\" where userId = ?";
        List<UserEntity> userEntity = userDao.getData(sql, new Object[]{userId});
        if (userEntity.size()==0) return false;
        return true;
    }

    @Override
    public boolean login(String userId, String userPwd) {
        String sql = "select * from \"user\" where userId = ? and userPwd = ?";
        List<UserEntity> userEntity = userDao.getData(sql, new Object[]{userId,userPwd});
        if (userEntity.size()==0) return false;
        return true;
    }

    @Override
    public List<UserEntity> getData(String userId) {
        String sql = "select * from \"user\" where userId = ?";
        return  userDao.getData(sql, new Object[]{userId});
    }
}
