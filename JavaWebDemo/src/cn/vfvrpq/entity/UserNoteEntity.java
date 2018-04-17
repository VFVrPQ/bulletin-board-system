package cn.vfvrpq.entity;

import javax.persistence.*;

@Entity
@Table(name = "user-note", schema = "bulletin", catalog = "")
@IdClass(UserNoteEntityPK.class)
public class UserNoteEntity {
    private int noteId;
    private String userId;
    private Integer floorNumber;
    private String content;

    @Id
    @Column(name = "noteId", nullable = false)
    public int getNoteId() {
        return noteId;
    }

    public void setNoteId(int noteId) {
        this.noteId = noteId;
    }

    @Id
    @Column(name = "userId", nullable = false, length = 45)
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "floorNumber", nullable = true)
    public Integer getFloorNumber() {
        return floorNumber;
    }

    public void setFloorNumber(Integer floorNumber) {
        this.floorNumber = floorNumber;
    }

    @Basic
    @Column(name = "content", nullable = true, length = 10000)
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserNoteEntity that = (UserNoteEntity) o;

        if (noteId != that.noteId) return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        if (floorNumber != null ? !floorNumber.equals(that.floorNumber) : that.floorNumber != null) return false;
        if (content != null ? !content.equals(that.content) : that.content != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = noteId;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (floorNumber != null ? floorNumber.hashCode() : 0);
        result = 31 * result + (content != null ? content.hashCode() : 0);
        return result;
    }
}
