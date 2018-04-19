# bulletin-board-system

using j2ee
实现教师教学的论坛

## 界面

1. 登陆/注册界面
2. 论坛主界面
3. 每个论坛的界面
4. 创建帖子的界面

## 数据库bulletin

1. user表(用户表)

* userName ：昵称
* userId ：学号或者工号
* userSex ： 性别vv
* userType ： 用户类型，管理员，学生
* userPwd ： 密码

2. note表（帖子表）

* noteId : 帖子Id
* noteNumber : 帖子内的消息数目
* noteName : 帖子的标题
* noteType : 帖子类型（置顶，普通）
* noteOwner : 发帖人（userId表示）
* noteTime : 发帖时间

3. userNote表 （帖子内的每个消息）

* noteId
* userId
* floorNumber : 第几个消息
* content ：内容
* floorType : 隐藏，删除，显示
* upNumber ： 点赞数（暂时不加）
* downNumber ：踩数（暂时不加）
* floorTime : 发送时间

### 帖子内的消息

帖子内的消息删除不是真的从表中删除（不然要修改floorNumber，很麻烦，只是设置类型成"删除",并不显示在帖子中）

### 数据库的视图（外模式）

今天听课听到"视图"这个概念的时候，突然觉得以前写的很多程序都做了好多无用功。
视图是一个面向应用的东西，可以任意组合表（模式），并显示在一张表内。
在他面前，联合查询变得没必要了，直接创建视图并查询试图就可以了。

我现在一个页面可以制作一张视图了，并直接查询这个视图就好了。

### 创建noteList

```sql
CREATE VIEW `noteList` (noteId , noteNumber , noteName , noteType , noteOwner , noteTime , userId , content , number) AS
    SELECT
        note.noteId,
        note.noteNumber,
        note.noteName,
        note.noteType,
        note.noteOwner,
        note.noteTime,
        usernote.userId,
        usernote.content,
        COUNT(*)
    FROM
        note,
        usernote
    WHERE
        note.noteId = usernote.noteId
            AND usernote.floorNumber = 1
    GROUP BY note.noteId
    ORDER BY note.noteTime DESC
```

### 创建comment视图

```sql
CREATE VIEW `comment` (noteId , userId , floorNumber , content , floorType , floorTime , userName) AS
    SELECT
        usernote.noteId,
        usernote.userId,
        usernote.floorNumber,
        usernote.content,
        usernote.floorType,
        usernote.floorTime,
        user.userName
    FROM
        usernote,
        user
    WHERE
        usernote.userId = user.userId
            AND usernote.floorNumber != 1
    GROUP BY usernote.noteId , usernote.floorNumber
    ORDER BY floorNumber DESC
```