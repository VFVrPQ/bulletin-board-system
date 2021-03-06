package cn.vfvrpq.service.impl;

import cn.vfvrpq.dao.UserNoteDao;
import cn.vfvrpq.entity.NoteEntity;
import cn.vfvrpq.entity.UserNoteEntity;
import cn.vfvrpq.service.UserNoteService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2018/4/18.
 */
@Service("userNoteService")
public class UserNoteServiceImpl implements UserNoteService {
    @Resource(name = "userNoteDao")
    private UserNoteDao userNoteDao;

    @Override
    public Boolean addData(UserNoteEntity userNoteEntity) {
        String sql = "INSERT INTO userNote (noteId,userId,floorNumber,content,floorType,floorTime) VALUES (:noteId,:userId,:floorNumber,:content,:floorType,:floorTime)";
        return userNoteDao.addData(sql, userNoteEntity);
    }

    @Override
    public Boolean delData(String noteId, String floorNumber) {
        if (floorNumber==null){
            String sql = "delete from userNote where noteId = ?";
            return userNoteDao.updateData(sql, new Object[]{noteId});
        }else {
            String sql = "delete from userNote where noteId = ? and floorNumber = ?";
            return userNoteDao.updateData(sql, new Object[]{noteId, floorNumber});
        }
    }

    @Override
    public List<UserNoteEntity> getData(String noteId) {
        String sql = "select * from userNote where noteId = ?";
        return userNoteDao.getData(sql, new Object[]{noteId});
    }

    @Override
    public List<UserNoteEntity> getData(String noteId, String floorNumber) {
        String sql = "select * from userNote where noteId = ? and floorNumber = ?";
        return userNoteDao.getData(sql, new Object[]{noteId,floorNumber});
    }

    @Override
    public Boolean updateData(String noteId, String userId, String floorNumber, String content, String floorType, String floorTime) {
        List<UserNoteEntity> userNoteEntityList = getData(noteId,floorNumber);
        if (userNoteEntityList.size()==0) return false;
        assert userNoteEntityList.size()==1;
        for (int i=0;i<userNoteEntityList.size();i++){
            UserNoteEntity userNoteEntity = userNoteEntityList.get(i);
            if (userId==null) userId = userNoteEntity.getUserId();
            if (content==null) content = userNoteEntity.getContent();
            if (floorType==null) floorType = userNoteEntity.getFloorType();
            if (floorTime==null) floorTime = userNoteEntity.getFloorTime();
        }
        String sql = "update userNote set userId = ?, content = ?, floorType = ?, floorTime = ? where noteId = ? and floorNumber = ?";
        return userNoteDao.updateData(sql, new Object[]{userId, content, floorType, floorTime, noteId, floorNumber});
    }
}
