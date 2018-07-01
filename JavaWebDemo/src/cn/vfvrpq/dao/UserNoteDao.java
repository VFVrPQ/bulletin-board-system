package cn.vfvrpq.dao;

import cn.vfvrpq.entity.UserNoteEntity;

import java.util.List;

/**
 * Created by Administrator on 2018/4/18.
 */
public interface UserNoteDao {
    public List<UserNoteEntity> getData(String sql, Object[] key);
    public Boolean addData(String sql, UserNoteEntity userNoteEntity);
    public Boolean updateData(String sql, Object[] key);
    public Boolean delData(String sql, Object[] key);
}
