var noteId;
var postOk = 1;

$(function () {
    $('#btn_post').on('click',function(){
        var noteNumber = "1";
        var noteName = $('#noteName_input').val();
        var noteType = "普通";
        var noteTime = getCurrentTime();

        alert("noteName=" + noteName + "; noteTime=" + noteTime);
        //need change
        //using session
        var noteOwner = sessionStorage.getItem('userId');
        //alert("noteOwner=" + noteOwner);
        if (noteOwner == null){
            alert("请登录！");
            sessionStorage.setItem('goto',"postNote.jsp");
            window.location.href="../login.jsp";
        }
        var param = {
            noteNumber: noteNumber,
            noteName: noteName,
            noteType: noteType,
            noteTime: noteTime,
            noteOwner: noteOwner
        };
        //写入note表
        postAjax("note_addData.action",param,postSuccess);

        if (!postOk){
            return false;
        }

        var userId = noteOwner;
        var floorNumber = "1";
        var content = $('#content_input').val();
        var floorType = "显示";
        var floorTime = noteTime;
        //getNoteId
        //postAjax("note_getDataByOthers.action",param,getNoteId);

        var param2 = {
            noteId: noteId,
            userId: userId,
            floorNumber: floorNumber,
            content: content,
            floorType: floorType,
            floorTime: floorTime
        };
        postAjax("userNote_addData.action",param2,floorPostSuccess);
    });
});

//success
function postSuccess(data){
    if (data.resultCode == "400"){
        postOk = 0;
        alert("发帖失败！");
    }else{
        //alert("发帖成功！");
        //window.location.href="../index.html";
        getNoteId(data);
    }
}

function floorPostSuccess(data){
    if (data.resultCode == "200"){
        alert("发帖成功！");
        window.location.href="../index.html";
    }else{
        alert("发帖失败！");
    }
}

function getNoteId(data){
    $(data).each(function (key,obj) {
        noteId = obj.noteId;
    });
}

//get

function getCurrentTime(){
    var date = new Date();

    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();

    var hh = date.getHours();
    var mm = date.getMinutes();
    var ss = date.getSeconds();

    var clock = year + "-";
    if (month<10) clock += "0"; clock += month + "-";
    if (day  <10) clock += "0"; clock += day   + " ";
    if (hh   <10) clock += "0"; clock += hh    + ":";
    if (mm   <10) clock += "0"; clock += mm    + ":";
    if (ss   <10) clock += "0"; clock += ss;
    return clock;

}