package cn.vfvrpq.action;

import cn.vfvrpq.cause.ResultCause;
import cn.vfvrpq.entity.UserNoteEntity;
import cn.vfvrpq.service.UserNoteService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.sql.Time;
import java.util.List;

/**
 * Created by Administrator on 2018/4/18.
 */
@Controller("userNoteAction")
public class UserNoteAction {
    @Resource(name = "userNoteService")
    private UserNoteService userNoteService;

    ResultCause result = new ResultCause();

    private String noteId;
    private List<UserNoteEntity> userNoteEntityList;

    public String getData(){
        userNoteEntityList = userNoteService.getData(noteId);
        return "GET_SUCCESS";
    }

    private String floorNumber;
    public String delData(){
        if (userNoteService.delData(noteId,floorNumber)){
            result.setCause("200","DEL_SUCCESS");
        }else{
            result.setCause("400","DEL_FAIL");
        }
        return "DEL_SUCCESS";
    }

    private String userId, content, floorType,floorTime;
    public String updateData(){
        // updateData(String noteId, String userId, String floorNumber, String content, String floorType) {
        if (userNoteService.updateData(noteId,userId,floorNumber,content,floorType,floorTime)) {
            result.setCause("200", "UPDATE_SUCCESS");
        }else{
            result.setCause("400","UPDATE_FAIL");
        }
        return "UPDATE_SUCCESS";
    }

    public String addData(){
        UserNoteEntity userNoteEntity = new UserNoteEntity();
        userNoteEntity.setNoteId(Integer.parseInt(noteId));
        userNoteEntity.setContent(content);
        userNoteEntity.setFloorNumber(Integer.parseInt(floorNumber));
        userNoteEntity.setFloorType(floorType);
        userNoteEntity.setUserId(userId);
        //userNoteEntity.setFloorTime((Time)floorTime);
        if (userNoteService.addData(userNoteEntity)){
            result.setCause("200", "ADD_SUCCESS");
        }else{
            result.setCause("400", "ADD_FAIL");
        }
        return "ADD_SUCCESS";
    }

    public UserNoteService getUserNoteService() {
        return userNoteService;
    }

    public void setUserNoteService(UserNoteService userNoteService) {
        this.userNoteService = userNoteService;
    }

    public ResultCause getResult() {
        return result;
    }

    public void setResult(ResultCause result) {
        this.result = result;
    }

    public String getNoteId() {
        return noteId;
    }

    public void setNoteId(String noteId) {
        this.noteId = noteId;
    }

    public List<UserNoteEntity> getUserNoteEntityList() {
        return userNoteEntityList;
    }

    public void setUserNoteEntityList(List<UserNoteEntity> userNoteEntityList) {
        this.userNoteEntityList = userNoteEntityList;
    }

    public String getFloorNumber() {
        return floorNumber;
    }

    public void setFloorNumber(String floorNumber) {
        this.floorNumber = floorNumber;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getFloorType() {
        return floorType;
    }

    public void setFloorType(String floorType) {
        this.floorType = floorType;
    }

    public String getFloorTime() {
        return floorTime;
    }

    public void setFloorTime(String floorTime) {
        this.floorTime = floorTime;
    }
}
