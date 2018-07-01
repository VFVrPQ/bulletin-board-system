package cn.vfvrpq.action;

import cn.vfvrpq.cause.ResultCause;
import cn.vfvrpq.entity.NoteListEntity;
import cn.vfvrpq.service.NoteListService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.List;

@Controller("searchAction")
public class SearchAction {
    private ResultCause result = new ResultCause();
    private String key;
    private Integer page = 0;
    private Integer pageNumber = 10;

    @Resource(name = "noteListService")
    private NoteListService noteListService;

    private List<NoteListEntity> noteListEntityList;
    public String getDataByKey(){
        noteListEntityList = noteListService.getDataByKey(key,page,pageNumber);
        return "GET_SUCCESS";
    }

    public ResultCause getResult() {
        return result;
    }

    public void setResult(ResultCause result) {
        this.result = result;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public NoteListService getNoteListService() {
        return noteListService;
    }

    public void setNoteListService(NoteListService noteListService) {
        this.noteListService = noteListService;
    }

    public List<NoteListEntity> getNoteListEntityList() {
        return noteListEntityList;
    }

    public void setNoteListEntityList(List<NoteListEntity> noteListEntityList) {
        this.noteListEntityList = noteListEntityList;
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
}
