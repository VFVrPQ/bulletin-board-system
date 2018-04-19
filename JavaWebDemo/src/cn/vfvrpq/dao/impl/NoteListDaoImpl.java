package cn.vfvrpq.dao.impl;

import cn.vfvrpq.dao.DaoManager;
import cn.vfvrpq.dao.NoteListDao;
import cn.vfvrpq.entity.NoteListEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("noteListDao")
public class NoteListDaoImpl extends DaoManager implements NoteListDao {
    @Override
    public List<NoteListEntity> getData(String sql, Object[] key) {
        return this.query(sql, key, NoteListEntity.class);
    }
}
