package cn.vfvrpq.action;

import cn.vfvrpq.cause.ResultCause;
import cn.vfvrpq.entity.UserEntity;
import cn.vfvrpq.service.UserService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

@Controller("userAction")
public class UserAction {
    @Resource(name = "userService")
    private UserService userService;

    private ResultCause result = new ResultCause();
    private String userId;
    private String userPwd;

    /**
     * addData中有用户Id存在判断，如果存在则返回false，即fail.
     * @return
     */
    public String register(){
        UserEntity userEntity = new UserEntity();
        userEntity.setUserId(userId);
        userEntity.setUserPwd(userPwd);
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
            result.setCause("200","EXIST_FAIL");
        }
        return "EXIST_SUCCESS";
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
}
