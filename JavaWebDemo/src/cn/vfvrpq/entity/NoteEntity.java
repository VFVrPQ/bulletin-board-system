package cn.vfvrpq.entity;

import javax.persistence.*;
import java.sql.Time;
import java.util.Collection;

@Entity
@Table(name = "NOTE", schema = "SCOTT", catalog = "")
public class NoteEntity {
    private long noteId;
    private String noteNumber;
    private String noteName;
    private String noteType;
    private String noteOwner;
    private Time noteTime;
    private Collection<UserNoteEntity> usernotesByNoteid;

    @Id
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        NoteEntity that = (NoteEntity) o;

        if (noteId != that.noteId) return false;
        if (noteNumber != null ? !noteNumber.equals(that.noteNumber) : that.noteNumber != null) return false;
        if (noteName != null ? !noteName.equals(that.noteName) : that.noteName != null) return false;
        if (noteType != null ? !noteType.equals(that.noteType) : that.noteType != null) return false;
        if (noteOwner != null ? !noteOwner.equals(that.noteOwner) : that.noteOwner != null) return false;
        if (noteTime != null ? !noteTime.equals(that.noteTime) : that.noteTime != null) return false;

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
        return result;
    }

    @OneToMany(mappedBy = "noteByNoteid")
    public Collection<UserNoteEntity> getUsernotesByNoteid() {
        return usernotesByNoteid;
    }

    public void setUsernotesByNoteid(Collection<UserNoteEntity> usernotesByNoteid) {
        this.usernotesByNoteid = usernotesByNoteid;
    }
}
