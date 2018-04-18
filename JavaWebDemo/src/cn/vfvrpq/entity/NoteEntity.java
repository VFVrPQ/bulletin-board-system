package cn.vfvrpq.entity;

import javax.persistence.*;

@Entity
@Table(name = "note", schema = "bulletin", catalog = "")
public class NoteEntity {
    private int noteId;
    private String noteNumber;
    private String noteName;
    private String noteType;
    private String noteOwner;
    private String noteTime;

    @Id
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

        return true;
    }

    @Override
    public int hashCode() {
        int result = noteId;
        result = 31 * result + (noteNumber != null ? noteNumber.hashCode() : 0);
        result = 31 * result + (noteName != null ? noteName.hashCode() : 0);
        result = 31 * result + (noteType != null ? noteType.hashCode() : 0);
        result = 31 * result + (noteOwner != null ? noteOwner.hashCode() : 0);
        return result;
    }

    @Basic
    @Column(name = "noteTime", nullable = true, length = 255)
    public String getNoteTime() {
        return noteTime;
    }

    public void setNoteTime(String noteTime) {
        this.noteTime = noteTime;
    }
}
