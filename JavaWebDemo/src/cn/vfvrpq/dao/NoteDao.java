package cn.vfvrpq.dao;

import cn.vfvrpq.entity.NoteEntity;

import java.util.List;


/**
 * Created by Administrator on 2018/4/17.
 */
public interface NoteDao {
    public List<NoteEntity> getData(String sql, Object[] key);
    public Boolean addData(String sql, NoteEntity noteEntity);
    public Boolean updateData(String sql, Object[] key);
    public Boolean delData(String sql, Object[] key);
}
