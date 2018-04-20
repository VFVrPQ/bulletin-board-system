# bulletin-board-system

## 一、实验简介

bulletin-board-system，一个教师教学的论坛（仓促完成，略显简陋）

__实现的功能__：

* 用户注册
* 登录/登出
* 发贴
* 评论
* 搜索（贴子名称，内容，发帖人）
* 查看最近的帖子功能

## 二、实验环境

* tomcat 8.0.38
* jdk 1.8.0_151
* IntelliJ IDEA 2017.02
* mysql数据库
* 使用SSH（struts+spring+hibernate）框架

执行sql脚本`JavaWebDemo/res/bulletin.sql`，创建数据库，IntelliJ IDEA打开`JavaWebDemo`文件夹，可以运行网页。

## 三、实验展示

首先是注册界面：

![reigster.jsp](https://raw.githubusercontent.com/VFVrPQ/markdownPhotos/master/bulletin-1.jpg)

注册成功后自动将用户Id记录到session，并跳转导主界面noteList.jsp

![register_ok](https://raw.githubusercontent.com/VFVrPQ/markdownPhotos/master/bulletin-2.jpg)

![(index)noteList.jsp](https://raw.githubusercontent.com/VFVrPQ/markdownPhotos/master/bulletin-3.jpg)

主界面上有很多很多帖子，当帖子字数过多时，会自动隐藏，保证界面美观性。主界面上还有`Pre<<`,`Next>>`两个按钮用以翻页。（主界面上的内容来自知乎）
我们的搜索词可以对帖子名，内容，用户昵称进行搜索。这时候我们输入搜索词`九条可怜`,就可以跳转到如下页面:

![search_noteList.jsp](https://raw.githubusercontent.com/VFVrPQ/markdownPhotos/master/bulletin-4.jpg)

我们点开文章，看到如下图的内容：

![singleNote.jsp](https://raw.githubusercontent.com/VFVrPQ/markdownPhotos/master/bulletin-5.jpg)

在主文章后面，有5条comments，之后可以进行评论，如图：

![comment](https://raw.githubusercontent.com/VFVrPQ/markdownPhotos/master/bulletin-6.jpg)

评论后会显示成功信息，以及是第几个评论的。

我们拉回导航栏，做了好几天的实验也想发个帖子：

![postNote](https://raw.githubusercontent.com/VFVrPQ/markdownPhotos/master/bulletin-8.jpg)

提示成功后，我们可以在主界面上看到自己的帖子啦,如图:

![noteListAfterPost](https://raw.githubusercontent.com/VFVrPQ/markdownPhotos/master/bulletin-9.jpg)

完成了操作后，我们点击了右上角的登出，退出账号。

## 四、实验原理

体系结构图：
<img src="https://raw.githubusercontent.com/VFVrPQ/markdownPhotos/master/bulletin-10.jpg" width = "300" height = "600" alt="files" align=center />

本实验分成**前端**和**后端**。
后端采用action,service,dao和entity四层结构。Dao层是使用了Hibernate连接数据库、操作数据库（增删改查）。Service层：引用对应的Dao数据库操作，在这里可以编写自己需要的代码（比如简单的判断）。Action层：引用对应的Service层，在这里结合Struts的配置文件，跳转到指定的页面，当然也能接受页面传递的请求数据，也可以做些计算处理。以上的Hibernate，Struts，都需要注入到Spring的配置文件中，Spring把这些联系起来，成为一个整体。
前端使用jsp和js开发，主要做界面展示和简单的逻辑处理。

## 五、数据库设计（bulletin）

数据库由三张表和两个视图构成。
__三张表__：note表（帖子表）、user表（用户表）、userNote表 （帖子内的每个消息）。
__两个视图__：noteList视图（做noteList.jsp界面的外模式）、comment视图(做singleNote.jsp界面的外模式)

1. note表：

* noteId : 帖子Id
* noteNumber : 帖子内的消息数目
* noteName : 帖子的标题
* noteType : 帖子类型（置顶，普通）
* noteOwner : 发帖人（userId表示）
* noteTime : 发帖时间

2. user表:

* userName ：昵称
* userId ：学号或者工号
* userSex ： 性别vv
* userType ： 用户类型，管理员，学生
* userPwd ： 密码

3. userNote表:

* noteId
* userId
* floorNumber : 第几个消息
* content ：内容
* floorType : 隐藏，删除，显示
* upNumber ： 点赞数（暂时不加）
* downNumber ：踩数（暂时不加）
* floorTime : 发送时间

4. noteList视图的创建：

```sql
CREATE VIEW `noteList` (noteId , noteNumber , noteName , noteType , noteOwner , noteTime , userId , content , userName , number) AS
    SELECT 
        note.noteId,
        note.noteNumber,
        note.noteName,
        note.noteType,
        note.noteOwner,
        note.noteTime,
        usernote.userId,
        usernote.content,
        user.userName,
        COUNT(*)
    FROM
        note,
        usernote,
        user
    WHERE
        note.noteId = usernote.noteId
            AND user.userId = usernote.userId
            AND usernote.floorNumber = 1
    GROUP BY note.noteId
    ORDER BY note.noteTime DESC
```

5. comment视图的创建：

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

## 六、参考资料

* [菜鸟教程](http://www.runoob.com/js/js-tutorial.html)
* [前端模版moban178](http://sc.chinaz.com)
* [实验原理部分](https://blog.csdn.net/limuzi13/article/details/44968819)