package cn.vfvrpq.service;

import cn.vfvrpq.entity.NoteEntity;
import cn.vfvrpq.entity.UserNoteEntity;

import java.util.List;

/**
 * Created by Administrator on 2018/4/18.
 */
public interface UserNoteService {
    public Boolean addData(UserNoteEntity userNoteEntity);
    public Boolean delData(String noteId, String floorNumber);
    public List<UserNoteEntity> getData(String noteId);
    public List<UserNoteEntity> getData(String noteId, String floorNumber);
    public Boolean updateData(String noteId, String userId, String floorNumber, String content, String floorType);
}
