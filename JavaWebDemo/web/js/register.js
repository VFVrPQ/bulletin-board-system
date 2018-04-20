var userId;
$(function () {
    $('#btn_login').on('click',function(){
        userId = $('#userId_input').val();
        var userPwd = $('#userPwd_input').val();
        var userName = $('#userName_input').val();
        var userType = getUserType();
        var userSex = getUserSex();
        //alert("userType = "+userType+"; userSex = " +userSex);

        var param = {
            userId: userId,
            userPwd: userPwd,
            userName: userName,
            userType: userType,
            userSex: userSex
        };
        if (userId === "" || userPwd === "") {
            alert("用户名密码不能为空！");
        }
        else {
            postAjax("user_register.action",param,registerSuccess);
            return false;
        }
    });
});

function registerSuccess(data) {
    if(data.resultCode === "200"){
        alert("注册成功！");
        sessionStorage.setItem('userId',userId);
        window.location.href="../noteList.jsp";
    }
    else if(data.resultCode === "400"){
        alert("注册失败！");
    }
}

function getUserType(){
    var radio = document.getElementsByName("userType");
    for (var i=0; i<radio.length; i++){
        if (radio[i].checked){
            return radio[i].value;
        }
    }
}

function getUserSex(){
    var radio = document.getElementsByName("userSex");
    for (var i=0; i<radio.length; i++){
        if (radio[i].checked){
            return radio[i].value;
        }
    }
}