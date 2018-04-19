package cn.vfvrpq.action;

import cn.vfvrpq.cause.ResultCause;
import cn.vfvrpq.entity.CommentEntity;
import cn.vfvrpq.service.CommentService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.List;

@Controller("commentAction")
public class CommentAction {
    ResultCause result = new ResultCause();

    @Resource(name = "commentService")
    private CommentService commentService;

    private List<CommentEntity> commentEntityList;
    private String noteId;

    public String getData(){
        commentEntityList = commentService.getData(noteId);
        return "GET_SUCCESS";
    }

    public ResultCause getResult() {
        return result;
    }

    public void setResult(ResultCause result) {
        this.result = result;
    }

    public CommentService getCommentService() {
        return commentService;
    }

    public void setCommentService(CommentService commentService) {
        this.commentService = commentService;
    }

    public List<CommentEntity> getCommentEntityList() {
        return commentEntityList;
    }

    public void setCommentEntityList(List<CommentEntity> commentEntityList) {
        this.commentEntityList = commentEntityList;
    }

    public String getNoteId() {
        return noteId;
    }

    public void setNoteId(String noteId) {
        this.noteId = noteId;
    }
}
