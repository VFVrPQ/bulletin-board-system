package cn.vfvrpq.dao.impl;

import cn.vfvrpq.dao.DaoManager;
import cn.vfvrpq.dao.UserNoteDao;
import cn.vfvrpq.entity.UserNoteEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2018/4/18.
 */
@Repository("userNoteDao")
public class UserNoteDaoImpl extends DaoManager implements UserNoteDao {
    @Override
    public List<UserNoteEntity> getData(String sql, Object[] key) {
        return this.query(sql, key, UserNoteEntity.class);
    }

    @Override
    public Boolean addData(String sql, UserNoteEntity userNoteEntity) {
        return this.insertByBean(sql, userNoteEntity);
    }

    @Override
    public Boolean updateData(String sql, Object[] key) {
        return this.update(sql, key);
    }

    @Override
    public Boolean delData(String sql, Object[] key) {
        return this.update(sql, key);
    }
}
