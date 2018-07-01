package cn.vfvrpq.entity;

import javax.persistence.*;
import java.util.Collection;

@Entity
@Table(name = "user", schema = "SCOTT", catalog = "")
public class UserEntity {
    private String userName;
    private String userId;
    private String userSex;
    private String userType;
    private String userPwd;
    private Collection<UserNoteEntity> usernotesByUserid;

    @Basic
    @Column(name = "USERNAME", nullable = true, length = 255)
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Id
    @Column(name = "USERID", nullable = false, length = 45)
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "USERSEX", nullable = true, length = 4)
    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    @Basic
    @Column(name = "USERTYPE", nullable = true, length = 10)
    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    @Basic
    @Column(name = "USERPWD", nullable = false, length = 45)
    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserEntity that = (UserEntity) o;

        if (userName != null ? !userName.equals(that.userName) : that.userName != null) return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        if (userSex != null ? !userSex.equals(that.userSex) : that.userSex != null) return false;
        if (userType != null ? !userType.equals(that.userType) : that.userType != null) return false;
        if (userPwd != null ? !userPwd.equals(that.userPwd) : that.userPwd != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = userName != null ? userName.hashCode() : 0;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (userSex != null ? userSex.hashCode() : 0);
        result = 31 * result + (userType != null ? userType.hashCode() : 0);
        result = 31 * result + (userPwd != null ? userPwd.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "userByUserid")
    public Collection<UserNoteEntity> getUsernotesByUserid() {
        return usernotesByUserid;
    }

    public void setUsernotesByUserid(Collection<UserNoteEntity> usernotesByUserid) {
        this.usernotesByUserid = usernotesByUserid;
    }
}
