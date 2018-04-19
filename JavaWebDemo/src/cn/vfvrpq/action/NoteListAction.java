package cn.vfvrpq.action;

import cn.vfvrpq.cause.ResultCause;
import cn.vfvrpq.entity.NoteListEntity;
import cn.vfvrpq.service.NoteListService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.List;

@Controller("noteListAction")
public class NoteListAction {
    @Resource(name = "noteListService")
    private NoteListService noteListService;

    ResultCause result = new ResultCause();

    private Integer page = 0;
    private Integer pageNumber = 10;

    private List<NoteListEntity> noteListEntityList;
    public String getData(){
        noteListEntityList = noteListService.getData(page, pageNumber);
        return "GET_SUCCESS";
    }

    private String noteId;
    public String getDataByNoteId(){
        noteListEntityList = noteListService.getDataByNoteId(noteId);
        return "GET_SUCCESS";
    }
    public NoteListService getNoteListService() {
        return noteListService;
    }

    public void setNoteListService(NoteListService noteListService) {
        this.noteListService = noteListService;
    }

    public ResultCause getResult() {
        return result;
    }

    public void setResult(ResultCause result) {
        this.result = result;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(Integer pageNumber) {
        this.pageNumber = pageNumber;
    }

    public List<NoteListEntity> getNoteListEntityList() {
        return noteListEntityList;
    }

    public void setNoteListEntityList(List<NoteListEntity> noteListEntityList) {
        this.noteListEntityList = noteListEntityList;
    }

    public String getNoteId() {
        return noteId;
    }

    public void setNoteId(String noteId) {
        this.noteId = noteId;
    }
}
