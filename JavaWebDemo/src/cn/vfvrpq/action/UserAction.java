package cn.vfvrpq.action;

import cn.vfvrpq.cause.ResultCause;
import cn.vfvrpq.entity.UserEntity;
import cn.vfvrpq.service.UserService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.List;

@Controller("userAction")
public class UserAction {
    @Resource(name = "userService")
    private UserService userService;

    private ResultCause result = new ResultCause();
    private String userId;
    private String userPwd;
    private String userSex;
    private String userName;
    private String userType;
    /**
     * addData中有用户Id存在判断，如果存在则返回false，即fail.
     * @return
     */
    public String register(){
        UserEntity userEntity = new UserEntity();
        userEntity.setUserId(userId);
        userEntity.setUserPwd(userPwd);
        userEntity.setUserSex(userSex);
        userEntity.setUserName(userName);
        userEntity.setUserType(userType);
        if (userService.addData(userEntity)){
            result.setCause("200","REGISTER_SUCCESS");
        }else {
            result.setCause("400","REGISTER_FAIL");
        }
        return "REGISTER_SUCCESS";
    }

    public String login(){
        if (userService.login(userId,userPwd)){
            result.setCause("200","LOGIN_SUCCESS");
        }else {
            result.setCause("400","LOGIN_FAIL");
            //return "LOGIN_FAIL";
        }
        return "LOGIN_SUCCESS";
    }

    public String isExist(){
        if (userService.isExist(userId)){
            result.setCause("200","EXIST_SUCCESS");
        }else {
            result.setCause("400","EXIST_FAIL");
        }
        return "EXIST_SUCCESS";
    }

    private List<UserEntity> userEntityList;
    public String getData(){
        userEntityList = userService.getData(userId);
        return "GET_DATA_SUCCESS";
    }


    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public ResultCause getResult() {
        return result;
    }

    public void setResult(ResultCause result) {
        this.result = result;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public List<UserEntity> getUserEntityList() {
        return userEntityList;
    }

    public void setUserEntityList(List<UserEntity> userEntityList) {
        this.userEntityList = userEntityList;
    }
}
