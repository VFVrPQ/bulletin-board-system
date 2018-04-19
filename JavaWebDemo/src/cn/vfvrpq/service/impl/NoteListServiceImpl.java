package cn.vfvrpq.service.impl;

import cn.vfvrpq.dao.NoteListDao;
import cn.vfvrpq.entity.NoteListEntity;
import cn.vfvrpq.service.NoteListService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service("noteListService")
public class NoteListServiceImpl implements NoteListService {
    @Resource(name = "noteListDao")
    private NoteListDao noteListDao;

    @Override
    public List<NoteListEntity> getData(Integer page, Integer pageNumber) {
        //view里面已经按时间降序了
        String sql = "select * from noteList";
        List<NoteListEntity> noteListEntityList = noteListDao.getData(sql, new Object[]{});

        if (noteListEntityList.size()==0) return new ArrayList<>();

        Integer beginNum = page*pageNumber;
        if (beginNum >= noteListEntityList.size()) return new ArrayList<>();

        Integer endNum   = (page+1)*pageNumber;
        endNum = Math.min(endNum, noteListEntityList.size());

        noteListEntityList.get(beginNum).setNumber(noteListEntityList.size());
        return noteListEntityList.subList(beginNum, endNum);
    }

    @Override
    public List<NoteListEntity> getDataByNoteId(String noteId) {
        String sql = "select * from noteList where noteId = ?";
        return noteListDao.getData(sql, new Object[]{noteId});
    }

    public NoteListDao getNoteListDao() {
        return noteListDao;
    }

    public void setNoteListDao(NoteListDao noteListDao) {
        this.noteListDao = noteListDao;
    }
}
