package cn.vfvrpq.service;

import cn.vfvrpq.entity.NoteEntity;

import java.sql.Time;
import java.util.List;

public interface NoteService {
    public Boolean addData(NoteEntity noteEntity);
    public Boolean delData(String noteId);
    public List<NoteEntity> getData(Integer page, Integer pageNumber);
    public List<NoteEntity> getData(String noteId);
    public List<NoteEntity> getDataByOthers(String noteNumber, String noteName, String noteType, String noteOwner, String noteTime);
    public Boolean updateData(String noteId, String noteNumber, String noteName, String noteType, String noteOwner, String noteTime);
}
