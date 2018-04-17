package cn.vfvrpq.dao.impl;

import cn.vfvrpq.dao.DaoManager;
import cn.vfvrpq.dao.NoteDao;
import cn.vfvrpq.entity.NoteEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2018/4/17.
 */
@Repository("noteDao")
public class NoteDaoImpl extends DaoManager implements NoteDao {
    @Override
    public List<NoteEntity> getData(String sql, Object[] key) {
        return this.query(sql, key, NoteEntity.class);
    }

    @Override
    public Boolean addData(String sql, NoteEntity noteEntity) {
        return this.insertByBean(sql, noteEntity);
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
