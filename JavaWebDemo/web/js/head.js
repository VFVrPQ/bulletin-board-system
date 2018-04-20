$(function(){
    var userId = sessionStorage.getItem('userId');
    var loginHtml = "";
    if (userId==null || userId==""){
        loginHtml = "<a href='login.jsp'>登陆</a>";
    }else{
        loginHtml = "<a href='logout.jsp'>登出</a>";
    }
    $('#login_li').html(loginHtml);
});