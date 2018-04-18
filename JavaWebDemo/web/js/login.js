$(function () {
    $('#btn_login').on('click',function(){
        var userId = $('#userId_input').val();
        var userPwd = $('#userPwd_input').val();
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
        window.location.href="../index.html";
    }
    else if(data.resultCode === "400"){
        alert("用户名或者密码错误！");
    }
}