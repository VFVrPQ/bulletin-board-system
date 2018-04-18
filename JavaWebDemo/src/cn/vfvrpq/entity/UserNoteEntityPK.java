package cn.vfvrpq.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

public class UserNoteEntityPK implements Serializable {
    private int noteId;
    private String userId;
    private Integer floorNumber;

    @Column(name = "noteId", nullable = false)
    @Id
    public int getNoteId() {
        return noteId;
    }

    public void setNoteId(int noteId) {
        this.noteId = noteId;
    }

    @Column(name = "userId", nullable = false, length = 45)
    @Id
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserNoteEntityPK that = (UserNoteEntityPK) o;

        if (noteId != that.noteId) return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = noteId;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        return result;
    }

    @Column(name = "floorNumber", nullable = true)
    @Basic
    @Id
    public Integer getFloorNumber() {
        return floorNumber;
    }

    public void setFloorNumber(Integer floorNumber) {
        this.floorNumber = floorNumber;
    }
}
