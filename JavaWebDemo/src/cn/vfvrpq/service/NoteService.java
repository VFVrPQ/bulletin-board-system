package cn.vfvrpq.service;

import cn.vfvrpq.entity.NoteEntity;

import java.util.List;

public interface NoteService {
    public Boolean addData(NoteEntity noteEntity);
    public Boolean delData(String noteId);
    public List<NoteEntity> getData(String noteId);
    public Boolean updateData(String noteId, String noteNumber, String noteName, String noteType, String noteOwner);
}
