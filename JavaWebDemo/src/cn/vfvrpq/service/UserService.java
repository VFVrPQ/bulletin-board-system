package cn.vfvrpq.service;

import cn.vfvrpq.entity.UserEntity;

public interface UserService {
    public boolean addData(UserEntity userEntity);
    public boolean isExist(String userId);
    public boolean login(String userId, String userPwd);
}
