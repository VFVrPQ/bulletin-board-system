package cn.vfvrpq.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.sql.Time;

@Entity
@Table(name = "comment", schema = "SCOTT", catalog = "")
public class CommentEntity {
    private long noteId;
    private String userId;
    private long floorNumber;
    private String content;
    private String floorType;
    private Time floorTime;
    private String userName;

    @Basic
    @Column(name = "NOTEID", nullable = false, precision = 0)
    public long getNoteId() {
        return noteId;
    }

    public void setNoteId(long noteId) {
        this.noteId = noteId;
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
    @Column(name = "FLOORNUMBER", nullable = false, precision = 0)
    public long getFloorNumber() {
        return floorNumber;
    }

    public void setFloorNumber(long floorNumber) {
        this.floorNumber = floorNumber;
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
    @Column(name = "FLOORTYPE", nullable = true, length = 45)
    public String getFloorType() {
        return floorType;
    }

    public void setFloorType(String floorType) {
        this.floorType = floorType;
    }

    @Basic
    @Column(name = "FLOORTIME", nullable = true)
    public Time getFloorTime() {
        return floorTime;
    }

    public void setFloorTime(Time floorTime) {
        this.floorTime = floorTime;
    }

    @Basic
    @Column(name = "USERNAME", nullable = true, length = 255)
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
        int result = (int) (noteId ^ (noteId >>> 32));
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (int) (floorNumber ^ (floorNumber >>> 32));
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + (floorType != null ? floorType.hashCode() : 0);
        result = 31 * result + (floorTime != null ? floorTime.hashCode() : 0);
        result = 31 * result + (userName != null ? userName.hashCode() : 0);
        return result;
    }
}
