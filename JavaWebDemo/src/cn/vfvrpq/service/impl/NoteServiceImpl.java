package cn.vfvrpq.service.impl;

import cn.vfvrpq.dao.NoteDao;
import cn.vfvrpq.entity.NoteEntity;
import cn.vfvrpq.service.NoteService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2018/4/18.
 */
@Service("noteService")
public class NoteServiceImpl implements NoteService {
    @Resource(name = "noteDao")
    private NoteDao noteDao;

    @Override
    public Boolean addData(NoteEntity noteEntity) {
        String sql = "insert into note (noteNumber,noteName,noteType,noteOwner,noteTime) values (:noteNumber,:noteName,:noteType,:noteOwner,:noteTime)";
        return noteDao.addData(sql, noteEntity);
    }

    @Override
    public Boolean delData(String noteId) {
        String sql = "delete from note where noteId = ?";
        return noteDao.delData(sql, new Object[]{noteId});
    }

    @Override
    public List<NoteEntity> getData(String noteId) {
        String sql = "select * from note where noteId = ?";
        return noteDao.getData(sql, new Object[]{noteId});
    }

    @Override
    public List<NoteEntity> getDataByOthers(String noteNumber, String noteName, String noteType, String noteOwner, String noteTime) {
        String sql = "select * from note where noteNumber = ? and noteName = ? and noteType = ? and noteOwner = ? and noteTime = ?";
        return noteDao.getData(sql, new Object[]{noteNumber,noteName,noteType,noteOwner,noteTime});
    }

    @Override
    public Boolean updateData(String noteId, String noteNumber, String noteName, String noteType, String noteOwner, String noteTime) {
        List<NoteEntity> noteEntityList = getData(noteId);
        if (noteEntityList.size()==0) return false;
        for (int i=0;i<noteEntityList.size();i++){
            NoteEntity noteEntity = noteEntityList.get(i);
            if (noteNumber==null) noteNumber = noteEntity.getNoteNumber();
            if (noteName==null) noteName = noteEntity.getNoteName();
            if (noteType==null) noteType = noteEntity.getNoteType();
            if (noteOwner==null) noteOwner = noteEntity.getNoteOwner();
            if (noteTime==null) noteTime = noteEntity.getNoteTime();
        }
        String sql = "update note set noteNumber = ?, noteName = ?, noteType = ?, noteOwner = ?, noteTime = ? where noteId = ?";
        return noteDao.updateData(sql, new Object[]{noteNumber, noteName, noteType, noteOwner, noteTime, noteId});
    }

    public NoteDao getNoteDao() {
        return noteDao;
    }

    public void setNoteDao(NoteDao noteDao) {
        this.noteDao = noteDao;
    }
}
