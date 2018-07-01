package cn.vfvrpq.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.sql.Time;

@Entity
@Table(name = "NOTELIST", schema = "SCOTT", catalog = "")
public class NoteListEntity {
    private long noteId;
    private String noteNumber;
    private String noteName;
    private String noteType;
    private String noteOwner;
    private Time noteTime;
    private String userId;
    private String content;
    private String userName;
    private Long number;

    @Basic
    @Column(name = "NOTEID", nullable = false, precision = 0)
    public long getNoteId() {
        return noteId;
    }

    public void setNoteId(long noteId) {
        this.noteId = noteId;
    }

    @Basic
    @Column(name = "NOTENUMBER", nullable = false, length = 45)
    public String getNoteNumber() {
        return noteNumber;
    }

    public void setNoteNumber(String noteNumber) {
        this.noteNumber = noteNumber;
    }

    @Basic
    @Column(name = "NOTENAME", nullable = false, length = 255)
    public String getNoteName() {
        return noteName;
    }

    public void setNoteName(String noteName) {
        this.noteName = noteName;
    }

    @Basic
    @Column(name = "NOTETYPE", nullable = false, length = 45)
    public String getNoteType() {
        return noteType;
    }

    public void setNoteType(String noteType) {
        this.noteType = noteType;
    }

    @Basic
    @Column(name = "NOTEOWNER", nullable = true, length = 45)
    public String getNoteOwner() {
        return noteOwner;
    }

    public void setNoteOwner(String noteOwner) {
        this.noteOwner = noteOwner;
    }

    @Basic
    @Column(name = "NOTETIME", nullable = true)
    public Time getNoteTime() {
        return noteTime;
    }

    public void setNoteTime(Time noteTime) {
        this.noteTime = noteTime;
    }

    @Basic
    @Column(name = "USERID", nullable = true, length = 45)
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "CONTENT", nullable = true, length = 4000)
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Basic
    @Column(name = "USERNAME", nullable = true, length = 255)
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Basic
    @Column(name = "number", nullable = true, precision = 0)
    public Long getNumber() {
        return number;
    }

    public void setNumber(Long number) {
        this.number = number;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        NoteListEntity that = (NoteListEntity) o;

        if (noteId != that.noteId) return false;
        if (noteNumber != null ? !noteNumber.equals(that.noteNumber) : that.noteNumber != null) return false;
        if (noteName != null ? !noteName.equals(that.noteName) : that.noteName != null) return false;
        if (noteType != null ? !noteType.equals(that.noteType) : that.noteType != null) return false;
        if (noteOwner != null ? !noteOwner.equals(that.noteOwner) : that.noteOwner != null) return false;
        if (noteTime != null ? !noteTime.equals(that.noteTime) : that.noteTime != null) return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        if (content != null ? !content.equals(that.content) : that.content != null) return false;
        if (userName != null ? !userName.equals(that.userName) : that.userName != null) return false;
        if (number != null ? !number.equals(that.number) : that.number != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (noteId ^ (noteId >>> 32));
        result = 31 * result + (noteNumber != null ? noteNumber.hashCode() : 0);
        result = 31 * result + (noteName != null ? noteName.hashCode() : 0);
        result = 31 * result + (noteType != null ? noteType.hashCode() : 0);
        result = 31 * result + (noteOwner != null ? noteOwner.hashCode() : 0);
        result = 31 * result + (noteTime != null ? noteTime.hashCode() : 0);
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + (userName != null ? userName.hashCode() : 0);
        result = 31 * result + (number != null ? number.hashCode() : 0);
        return result;
    }
}
