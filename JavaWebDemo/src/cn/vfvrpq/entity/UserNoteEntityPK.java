package cn.vfvrpq.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

public class UserNoteEntityPK implements Serializable {
    private long noteId;
    private long floorNumber;

    @Column(name = "NOTEID", nullable = false, precision = 0)
    @Id
    public long getNoteId() {
        return noteId;
    }

    public void setNoteId(long noteId) {
        this.noteId = noteId;
    }

    @Column(name = "FLOORNUMBER", nullable = false, precision = 0)
    @Id
    public long getFloorNumber() {
        return floorNumber;
    }

    public void setFloorNumber(long floorNumber) {
        this.floorNumber = floorNumber;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserNoteEntityPK that = (UserNoteEntityPK) o;

        if (noteId != that.noteId) return false;
        if (floorNumber != that.floorNumber) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (noteId ^ (noteId >>> 32));
        result = 31 * result + (int) (floorNumber ^ (floorNumber >>> 32));
        return result;
    }
}
