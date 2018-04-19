package cn.vfvrpq.dao;

import cn.vfvrpq.entity.NoteListEntity;

import java.util.List;

public interface NoteListDao {
    public List<NoteListEntity> getData(String sql, Object[] key);
}
