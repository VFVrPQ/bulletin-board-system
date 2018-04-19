package cn.vfvrpq.dao.impl;

import cn.vfvrpq.dao.CommentDao;
import cn.vfvrpq.dao.DaoManager;
import cn.vfvrpq.entity.CommentEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("commentDao")
public class CommentDaoImpl extends DaoManager implements CommentDao{
    @Override
    public List<CommentEntity> getData(String sql, Object[] key) {
        return this.query(sql, key, CommentEntity.class);
    }
}
