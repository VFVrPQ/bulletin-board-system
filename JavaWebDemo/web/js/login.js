var userId;
var userPwd;
$(function () {
    $('#btn_login').on('click',function(){
        userId = $('#userId_input').val();
        userPwd = $('#userPwd_input').val();
        var param = {
            userId: userId,
            userPwd: userPwd
        };
        if (userId === "" || userPwd === "") {
            alert("用户名密码不能为空！");
        }
        else {
            postAjax("user_login.action",param,loginSuccess);
            return false;
        }
    });
});

function loginSuccess(data) {
    if(data.resultCode === "200"){
        sessionStorage.setItem('userId', userId);

        var goto = sessionStorage.getItem('goto');
        if (goto==null || goto=="")
            window.location.href="../index.html";
        else {//跳转到如发帖的网站之类的
            window.location.href = "../" + goto;
            sessionStorage.setItem('goto', "");
        }
    }
    else if(data.resultCode === "400"){
        alert("用户名或者密码错误！");
    }
}