package cn.vfvrpq.action;

import cn.vfvrpq.cause.ResultCause;
import cn.vfvrpq.entity.NoteEntity;
import cn.vfvrpq.service.NoteService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2018/4/18.
 */
@Controller("noteAction")
public class NoteAction {
    @Resource(name = "noteService")
    private NoteService noteService;

    ResultCause result = new ResultCause();

    private String noteId;
    private List<NoteEntity> noteEntityList;

    public String delData(){
        if (noteService.delData(noteId)){
            result.setCause("200","DEL_SUCCESS");
        }else{
            result.setCause("400","DEL_FAIL");
        }
        return "DEL_SUCCESS";
    }

    private String noteNumber,noteName,noteType,noteOwner,noteTime;
    public String updateData(){
        //updateData(String noteId, String noteNumber, String noteName, String noteType, String noteOwner)
        if (noteService.updateData(noteId,noteNumber,noteName,noteType,noteOwner,noteTime)) {
            result.setCause("200", "UPDATE_SUCCESS");
        }else{
            result.setCause("400","UPDATE_FAIL");
        }
        return "UPDATE_SUCCESS";
    }

    public String addData(){
        NoteEntity noteEntity = new NoteEntity();
        //noteEntity.setNoteId(Integer.parseInt(noteId));
        noteEntity.setNoteName(noteName);
        noteEntity.setNoteNumber(noteNumber);
        noteEntity.setNoteType(noteType);
        noteEntity.setNoteOwner(noteOwner);
        noteEntity.setNoteTime(noteTime);
        if (noteService.addData(noteEntity)){
            //result.setCause("200", "ADD_SUCCESS");
            noteEntityList = noteService.getDataByOthers(noteNumber, noteName, noteType, noteOwner, noteTime);
            return "ADD_SUCCESS";
        }else{
            result.setCause("400", "ADD_FAIL");
            return "ADD_FAIL";
        }

    }

    public String getData(){
        noteEntityList = noteService.getData(noteId);
        return "GET_SUCCESS";
    }

    private Integer page = 0;
    private Integer pageNumber = 10;

    /**
     * page第几页；pageNumber每页几个
     * 当传出来的值是null时，说明已经gg了；
     * 当传出来的值<pageNumber,说明已经是最后一页了。
     * @return
     */
    public String getAllData(){
        noteEntityList = noteService.getData(page, pageNumber);
        return "GET_SUCCESS";
    }
    /*
    public String getDataByOthers(){
        noteEntityList = noteService.getDataByOthers(noteNumber, noteName, noteType, noteOwner, noteTime);
        return "GET_SUCCESS";
    }*/

    public NoteService getNoteService() {
        return noteService;
    }

    public void setNoteService(NoteService noteService) {
        this.noteService = noteService;
    }

    public ResultCause getResult() {
        return result;
    }

    public void setResult(ResultCause result) {
        this.result = result;
    }

    public String getNoteId() {
        return noteId;
    }

    public void setNoteId(String noteId) {
        this.noteId = noteId;
    }

    public List<NoteEntity> getNoteEntityList() {
        return noteEntityList;
    }

    public void setNoteEntityList(List<NoteEntity> noteEntityList) {
        this.noteEntityList = noteEntityList;
    }

    public String getNoteNumber() {
        return noteNumber;
    }

    public void setNoteNumber(String noteNumber) {
        this.noteNumber = noteNumber;
    }

    public String getNoteName() {
        return noteName;
    }

    public void setNoteName(String noteName) {
        this.noteName = noteName;
    }

    public String getNoteType() {
        return noteType;
    }

    public void setNoteType(String noteType) {
        this.noteType = noteType;
    }

    public String getNoteOwner() {
        return noteOwner;
    }

    public void setNoteOwner(String noteOwner) {
        this.noteOwner = noteOwner;
    }

    public String getNoteTime() {
        return noteTime;
    }

    public void setNoteTime(String noteTime) {
        this.noteTime = noteTime;
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
