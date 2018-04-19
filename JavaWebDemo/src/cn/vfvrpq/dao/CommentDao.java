package cn.vfvrpq.dao;

import cn.vfvrpq.entity.CommentEntity;

import java.util.List;

public interface CommentDao {
    public List<CommentEntity> getData(String sql, Object[] key);
}
