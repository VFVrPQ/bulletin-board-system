package cn.vfvrpq.service;

import cn.vfvrpq.entity.UserEntity;

import java.util.List;

public interface UserService {
    public boolean addData(UserEntity userEntity);
    public boolean isExist(String userId);
    public boolean login(String userId, String userPwd);
    public List<UserEntity> getData(String userId);
}
