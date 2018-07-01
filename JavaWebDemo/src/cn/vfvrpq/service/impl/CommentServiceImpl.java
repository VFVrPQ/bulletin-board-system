package cn.vfvrpq.service.impl;

import cn.vfvrpq.dao.CommentDao;
import cn.vfvrpq.entity.CommentEntity;
import cn.vfvrpq.service.CommentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("commentService")
public class CommentServiceImpl implements CommentService{
    @Resource(name ="commentDao")
    private CommentDao commentDao;

    @Override
    public List<CommentEntity> getData(String noteId) {
        String sql = "select * from \"comment\" where noteId = ? order by floorTime ASC";
        return commentDao.getData(sql, new Object[]{noteId});
    }
}
