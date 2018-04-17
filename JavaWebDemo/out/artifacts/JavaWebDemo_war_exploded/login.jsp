<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2017/6/25
  Time: 21:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
    <form action="user_login.action" method="post">
        <label>用户名</label>
        <input type="text" placeholder="username" name="username">
        <label>密码</label>
        <input type="password" placeholder="password" name="password">
        <input type="submit" value="登录">
    </form>
</body>
</html>
