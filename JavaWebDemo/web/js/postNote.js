var noteId;
var noteNumber;
var noteName;
var noteType;
var noteTime;
var noteOwner;

$(function () {
    $('#btn_post').on('click',function(){
        noteNumber = "1";
        noteName = $('#noteName_input').val();
        noteType = "普通";
        noteTime = getCurrentTime();

        //alert("noteName=" + noteName + "; noteTime=" + noteTime);
        //using session
        noteOwner = sessionStorage.getItem('userId');
        //alert("noteOwner=" + noteOwner);
        if (noteOwner == null){
            alert("请登录！");
            sessionStorage.setItem('goto',"postNote.jsp");
            window.location.href="../login.jsp";
        }else{
            var param = {
                noteNumber: noteNumber,
                noteName: noteName,
                noteType: noteType,
                noteTime: noteTime,
                noteOwner: noteOwner
            };
            //写入note表
            postAjax("note_addData.action",param,postSuccess);
        }
    });
});

//success
function postSuccess(data){
    if (data.resultCode == "400"){
        alert("发帖失败！");
    }else{
        //alert("发帖成功！");
        //window.location.href="../index.html";
        getNoteId(data);
        var userId = noteOwner;
        var floorNumber = "1";
        var content = $('#content_input').val();
        var floorType = "显示";
        var floorTime = noteTime;
        //getNoteId
        //postAjax("note_getDataByOthers.action",param,getNoteId);

        var param = {
            noteId: noteId,
            userId: userId,
            floorNumber: floorNumber,
            content: content,
            floorType: floorType,
            floorTime: floorTime
        };
        postAjax("userNote_addData.action",param,floorPostSuccess);
    }
}

function floorPostSuccess(data){
    if (data.resultCode == "200"){
        alert("发帖成功！");
        window.location.href="../noteList.jsp";
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