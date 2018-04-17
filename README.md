# bulletin-board-system

using j2ee
实现教师教学的论坛

## 界面

1. 登陆界面
2. 论坛主界面
3. 每个论坛的界面
4. 创建帖子的界面

## 数据库bulletin

1. user表(用户表)

* userName ：昵称
* userId ：学号或者工号
* userSex ： 性别
* userType ： 用户类型，管理员，学生
* userPwd ： 密码

2. note表（帖子表）

* noteId : 帖子Id
* noteNumber : 帖子内的消息数目
* noteName : 帖子的标题
* noteType : 帖子类型（置顶，普通）
* noteOwner : 发帖人（userId表示）

3. user-note表 （帖子内的每个消息）

* noteId
* userId
* floorNumber : 第几个消息
* content ：内容