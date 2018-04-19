package cn.vfvrpq.service;

import cn.vfvrpq.entity.CommentEntity;

import java.util.List;

public interface CommentService {
    public List<CommentEntity> getData(String noteId);

}
