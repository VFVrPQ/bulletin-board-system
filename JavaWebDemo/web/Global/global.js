﻿function postAjax(url,param,callback){
    $.ajax({
        url : url,
        type : 'post',
        data : param,
        dataType : 'json',
        success : function(data, status) {
            if (status === "success") {
                callback(data);
            }
        },
        error : function(XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.status);
            console.log(XMLHttpRequest.readyState);
            console.log(textStatus);
        },
        complete : function() {
        }
    });
}
function postAjaxE(url,param){
    $.ajax({
        url : url,
        type : 'post',
        data : param,
        dataType : 'json'
    });
}
// error事件返回的第一个参数XMLHttpRequest：
// XMLHttpRequest.readyState: 状态码的意思
// 0 － （未初始化）还没有调用send()方法
// 1 － （载入）已调用send()方法，正在发送请求
// 2 － （载入完成）send()方法执行完成，已经接收到全部响应内容
// 3 － （交互）正在解析响应内容
// 4 － （完成）响应内容解析完成，可以在客户端调用了

function checkPermission(str) {
    var param = {url:str.split("/",3)[2]};
    var url = "permission_checkPermission.action";
    postAjax(url,param,loginForward);
}
function loginForward(data) {
    if(data.resultCode !== "200"){
        alert("您没有权限访问该页面");
        history.go(-1);
    }
}
// window.alert = function (msg) {
//     $("#common_modal").find(".modal-body").text(msg);
//     $("#common_modal").modal('show');
// };

function format(json) {
    var a = [];
    for (var key in json) {
        a.push(encodeURIComponent(key) + '=' + encodeURIComponent(json[key]));
    }
    return a.join('&');
}

