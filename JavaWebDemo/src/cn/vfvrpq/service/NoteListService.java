package cn.vfvrpq.service;

import cn.vfvrpq.entity.NoteListEntity;

import java.util.List;

public interface NoteListService {
    public List<NoteListEntity> getData(Integer page, Integer pageNumber);
    public List<NoteListEntity> getDataByNoteId(String noteId);
    public List<NoteListEntity> getDataByKey(String key, Integer page, Integer pageNumber);
}
