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
        String sql = "INSERT INTO userNote (noteId,userId,floorNumber,content,floorType) VALUES (:noteId,:userId,:floorNumber,:content,:floorType)";
        return userNoteDao.addData(sql, userNoteEntity);
    }

    @Override
    public Boolean delData(String noteId, String floorNumber) {
        String sql = "update userNote set floorType = '删除' where noteId = ? and floorNumber = ?";
        return userNoteDao.updateData(sql, new Object[]{noteId,floorNumber});
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
    public Boolean updateData(String noteId, String userId, String floorNumber, String content, String floorType) {
        List<UserNoteEntity> userNoteEntityList = getData(noteId,floorNumber);
        if (userNoteEntityList.size()==0) return false;
        assert userNoteEntityList.size()==1;
        for (int i=0;i<userNoteEntityList.size();i++){
            UserNoteEntity userNoteEntity = userNoteEntityList.get(i);
            if (userId==null) userId = userNoteEntity.getUserId();
            if (content==null) content = userNoteEntity.getContent();
            if (floorType==null) floorType = userNoteEntity.getFloorType();
        }
        String sql = "update userNote set userId = ?, content = ?, floorType = ?, noteId = ? where floorNumber = ?";
        return userNoteDao.updateData(sql, new Object[]{userId, content, floorType, noteId, floorNumber});
    }
}
