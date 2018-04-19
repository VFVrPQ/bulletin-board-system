package cn.vfvrpq.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "comment", schema = "bulletin", catalog = "")
public class CommentEntity {
    private int noteId;
    private String userId;
    private int floorNumber;
    private String content;
    private String floorType;
    private String floorTime;
    private String userName;

    @Basic
    @Column(name = "noteId", nullable = false)
    public int getNoteId() {
        return noteId;
    }

    public void setNoteId(int noteId) {
        this.noteId = noteId;
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
    @Column(name = "floorNumber", nullable = false)
    public int getFloorNumber() {
        return floorNumber;
    }

    public void setFloorNumber(int floorNumber) {
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

    @Basic
    @Column(name = "floorType", nullable = true, length = 45)
    public String getFloorType() {
        return floorType;
    }

    public void setFloorType(String floorType) {
        this.floorType = floorType;
    }

    @Basic
    @Column(name = "floorTime", nullable = true, length = 255)
    public String getFloorTime() {
        return floorTime;
    }

    public void setFloorTime(String floorTime) {
        this.floorTime = floorTime;
    }

    @Basic
    @Column(name = "userName", nullable = true, length = 255)
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CommentEntity that = (CommentEntity) o;

        if (noteId != that.noteId) return false;
        if (floorNumber != that.floorNumber) return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        if (content != null ? !content.equals(that.content) : that.content != null) return false;
        if (floorType != null ? !floorType.equals(that.floorType) : that.floorType != null) return false;
        if (floorTime != null ? !floorTime.equals(that.floorTime) : that.floorTime != null) return false;
        if (userName != null ? !userName.equals(that.userName) : that.userName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = noteId;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + floorNumber;
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + (floorType != null ? floorType.hashCode() : 0);
        result = 31 * result + (floorTime != null ? floorTime.hashCode() : 0);
        result = 31 * result + (userName != null ? userName.hashCode() : 0);
        return result;
    }
}
