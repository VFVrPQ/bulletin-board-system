package cn.vfvrpq.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "notelist", schema = "bulletin", catalog = "")
public class NoteListEntity {
    private int noteId;
    private String noteNumber;
    private String noteName;
    private String noteType;
    private String noteOwner;
    private String noteTime;
    private String userId;
    private String content;
    private long number;

    @Basic
    @Column(name = "noteId", nullable = false)
    public int getNoteId() {
        return noteId;
    }

    public void setNoteId(int noteId) {
        this.noteId = noteId;
    }

    @Basic
    @Column(name = "noteNumber", nullable = true, length = 45)
    public String getNoteNumber() {
        return noteNumber;
    }

    public void setNoteNumber(String noteNumber) {
        this.noteNumber = noteNumber;
    }

    @Basic
    @Column(name = "noteName", nullable = true, length = 255)
    public String getNoteName() {
        return noteName;
    }

    public void setNoteName(String noteName) {
        this.noteName = noteName;
    }

    @Basic
    @Column(name = "noteType", nullable = true, length = 45)
    public String getNoteType() {
        return noteType;
    }

    public void setNoteType(String noteType) {
        this.noteType = noteType;
    }

    @Basic
    @Column(name = "noteOwner", nullable = true, length = 45)
    public String getNoteOwner() {
        return noteOwner;
    }

    public void setNoteOwner(String noteOwner) {
        this.noteOwner = noteOwner;
    }

    @Basic
    @Column(name = "noteTime", nullable = true, length = 255)
    public String getNoteTime() {
        return noteTime;
    }

    public void setNoteTime(String noteTime) {
        this.noteTime = noteTime;
    }

    @Basic
    @Column(name = "userId", nullable = true, length = 45)
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "content", nullable = true, length = 10000)
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Basic
    @Column(name = "number", nullable = false)
    public long getNumber() {
        return number;
    }

    public void setNumber(long number) {
        this.number = number;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        NoteListEntity that = (NoteListEntity) o;

        if (noteId != that.noteId) return false;
        if (number != that.number) return false;
        if (noteNumber != null ? !noteNumber.equals(that.noteNumber) : that.noteNumber != null) return false;
        if (noteName != null ? !noteName.equals(that.noteName) : that.noteName != null) return false;
        if (noteType != null ? !noteType.equals(that.noteType) : that.noteType != null) return false;
        if (noteOwner != null ? !noteOwner.equals(that.noteOwner) : that.noteOwner != null) return false;
        if (noteTime != null ? !noteTime.equals(that.noteTime) : that.noteTime != null) return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        if (content != null ? !content.equals(that.content) : that.content != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = noteId;
        result = 31 * result + (noteNumber != null ? noteNumber.hashCode() : 0);
        result = 31 * result + (noteName != null ? noteName.hashCode() : 0);
        result = 31 * result + (noteType != null ? noteType.hashCode() : 0);
        result = 31 * result + (noteOwner != null ? noteOwner.hashCode() : 0);
        result = 31 * result + (noteTime != null ? noteTime.hashCode() : 0);
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + (int) (number ^ (number >>> 32));
        return result;
    }
}
