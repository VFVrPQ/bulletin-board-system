var userId;
var noteId;
var nowFloorNumber=null;
$(function(){
    noteId = getUrlParam('noteId');
    userId = sessionStorage.getItem('userId');
    //alert("noteId="+noteId);
    var param = {
        noteId: noteId
    };
    postAjax("noteList_getDataByNoteId.action", param, showNoteList);
});

function getUrlParam(name) {
    //构造一个含有目标参数的正则表达式对象
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    //匹配目标参数
    var r = window.location.search.substr(1).match(reg);
    //返回参数值
    if(r != null) {
        return decodeURI(r[2]);
    }
    return null;
}

function showNoteList(data){
    var noteListHtml = "";
    //noteId,noteNumber,noteName,noteType, noteOwner,noteTime
    $(data).each(function (key,obj) {
        //alert(obj.noteName + "," + obj.noteNumber);
        noteListHtml = noteListHtml + "<article class=\"format-standard type-post hentry clearfix\">\n";
        noteListHtml = noteListHtml + "    <header class=\"clearfix\">\n";
        noteListHtml = noteListHtml + "        <h3 class=\"post-title\">\n";
        noteListHtml = noteListHtml + "            <a href=\"#\"><div contentEditable='false' id='myNoteName'>"+obj.noteName+"</div></a>\n";

        noteListHtml = noteListHtml + "        </h3>\n";
        noteListHtml = noteListHtml + "\n";
        noteListHtml = noteListHtml + "        <div class=\"post-meta clearfix\">\n";
        noteListHtml = noteListHtml + "            <span class=\"date\">"+obj.noteTime+"</span>\n";
        noteListHtml = noteListHtml + "            <span class=\"comments\"><a href=\"#comment_title\" title=\"Comment on "+obj.noteName+"\">"+(obj.noteNumber-1) +" 评论数</a></span>\n";
        noteListHtml = noteListHtml + "            <span class=\"like-count\">1</span>";
        noteListHtml = noteListHtml + "        </div><!-- end of post meta -->\n";
        noteListHtml = noteListHtml + "    </header>\n";
        noteListHtml = noteListHtml + "<div contentEditable=\"false\" id='myContent'>"+obj.content+"</div>\n";
        if (userId == obj.noteOwner) noteListHtml = noteListHtml + "&nbsp;&nbsp;<input class=\"btn\" name=\"delete_\" type=\"submit\" id=\"delete_btn\" onclick=\"deleteClick()\" value=\"删除\">\n";
        if (userId == obj.noteOwner) noteListHtml = noteListHtml + "&nbsp;&nbsp;<input class=\"btn\" name=\"change_\" type=\"submit\" id=\"change_btn\" onclick=\"changeClick()\" value=\"修改\"><div id='cancel_div'></div>\n";
        noteListHtml = noteListHtml + "</article>\n\n";

        nowFloorNumber = obj.noteNumber;
    });
    $('#main_listing_div').html(noteListHtml);

    var param = {
        noteId: noteId
    };
    postAjax("comment_getData.action",param,showFloorList);
}

function showFloorList(data){
    var floorListHtml = "";
    floorListHtml = floorListHtml + "<h3 id=\"comments-title\"><a name=\"comment_title\">("+(nowFloorNumber-1)+") 评论数</a></h3>";
    floorListHtml = floorListHtml + "<ol class=\"commentlist\">\n";
    $(data).each(function(key,obj){
        if (obj.floorNumber!=1) {//1是内容
            floorListHtml = floorListHtml + "  <li class=\"comment even thread-even depth-1\" id=\"li-comment-" + obj.floorNumber + "\">\n";
            floorListHtml = floorListHtml + "     <article id=\"comment-"+obj.floorNumber+"\">\n";
            floorListHtml = floorListHtml + "       <div class=\"comment-meta\">\n";
            floorListHtml = floorListHtml + "           <a href=\"#\"><img alt=\"\" src=\"http://0.gravatar.com/avatar/2df5eab0988aa5ff219476b1d27df755?s=60&amp;d=http%3A%2F%2F0.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D60&amp;r=G\" class=\"avatar avatar-60 photo\" height=\"60\" width=\"60\"></a>";
            floorListHtml = floorListHtml + "         <h5 class=\"author\">\n";
            floorListHtml = floorListHtml + "           <cite class=\"fn\">"+obj.userName+"</cite>";
            floorListHtml = floorListHtml + "           - <a class=\"comment-reply-link\" href=\"#\">回复</a>\n";
            floorListHtml = floorListHtml + "         </h5>\n";
            floorListHtml = floorListHtml + "         <p class=\"date\">\n";
            floorListHtml = floorListHtml + "           <a href=\"#\">";
            floorListHtml = floorListHtml + "               <time>"+obj.floorTime+"</time>\n";
            floorListHtml = floorListHtml + "           </a>\n";
            floorListHtml = floorListHtml + "         </p>\n";
            floorListHtml = floorListHtml + "       </div><!-- end .comment-meta -->\n";
            floorListHtml = floorListHtml + "       <div class=\"comment-body\">\n";
            floorListHtml = floorListHtml + obj.content + "\n";
            floorListHtml = floorListHtml + "       </div><!-- end of comment-body -->\n";
            floorListHtml = floorListHtml + "   </article><!-- end of comment -->\n";
            floorListHtml = floorListHtml + "  </li>\n";
        }
    });
    floorListHtml = floorListHtml + "</ol>\n";
    $('#myComments_div').html(floorListHtml);
}


function deleteClick(){
    var param = {
        noteId: noteId
    };
    postAjax("userNote_delData.action",param, deleteSuccess);

}

function deleteSuccess(data){
    if(data.resultCode === "200"){
        var param = {
            noteId: noteId
        };
        postAjax("note_delData.action",param, deleteUserNoteSuccess);
    }
    else if(data.resultCode === "400"){
        alert("删除失败！");
    }
}
function deleteUserNoteSuccess(data){
    if(data.resultCode === "200"){
        alert("删除成功！");
        window.location.href="../noteList.jsp";
    }
    else if(data.resultCode === "400"){
        alert("删除成功！");
        window.location.href="../noteList.jsp";
    }
}

function changeClick(){
    var value_btn = $('#change_btn').val();
    if (value_btn=="修改"){
        document.getElementById('myNoteName').setAttribute('contenteditable','true');
        document.getElementById('myContent').setAttribute('contenteditable','true');
        document.getElementById('change_btn').setAttribute('value','完成');
        $('#cancel_div').html("<input class=\"btn\" name=\"cancel_\" type=\"submit\" id=\"cancel_btn\" onclick=\"cancelClick()\" value=\"取消\">");
    }else{
        document.getElementById('myNoteName').setAttribute('contenteditable','false');
        document.getElementById('myContent').setAttribute('contenteditable','false');
        document.getElementById('change_btn').setAttribute('value','修改');
        $('#cancel_div').html("");
        var param ={
            noteId : noteId,
            noteName: $('#myNoteName').html()
        };
        //alert("myNoteName="+$('#myNoteName').html()+";myContent="+$('#myContent').html());
        postAjax('note_updateData.action',param,changeSuccess);
    }
}
function changeSuccess(data){
    if(data.resultCode === "200"){
        var param = {
            noteId: noteId,
            floorNumber: "1",
            content: $('#myContent').html()
        };
        postAjax("userNote_updateData.action",param,changeContentSuccess);
    }
    else if(data.resultCode === "400"){
        alert("修改失败！");
    }
}
function changeContentSuccess(data){
    if(data.resultCode === "200"){
        alert("修改成功！");
        //window.location.reload();
    }
    else if(data.resultCode === "400"){
        alert("修改失败！");
    }
}
function cancelClick(){
    document.getElementById('myNoteName').setAttribute('contenteditable','false');
    document.getElementById('myContent').setAttribute('contenteditable','false');
    document.getElementById('change_btn').setAttribute('value','修改');
    $('#cancel_div').html("");
}
function commentClick(){
    if (nowFloorNumber==null){
        alert("当前无帖子，评论失败！");
        window.location.href="../noteList.jsp";
    }else {
        var content = $('#comment').val();

        if (content == "" || content == null) {
            alert("请输入评论！");
        }else {
            var userId = sessionStorage.getItem('userId');
            if (userId == "" || userId == null) {
                alert("请登录！");
                sessionStorage.setItem('goto', "singleNote.jsp?noteId=" + noteId + "#comment");
                window.location.href = "../login.jsp";
            }else {
                nowFloorNumber = parseInt(nowFloorNumber) + 1;
                //alert("nowFloorNumber="+nowFloorNumber);
                var param = {
                    noteId: noteId,
                    userId: userId,
                    floorNumber: nowFloorNumber,
                    content: content,
                    floorType: "显示",
                    floorTime: getCurrentTime()
                };
                postAjax("userNote_addData.action", param, addSuccess);
            }
        }
    }
}

function addSuccess(data){
    if(data.resultCode === "200"){

        //updateNote
        var param = {
            noteId: noteId,
            noteNumber: nowFloorNumber
        };
        postAjax("note_updateData.action",param,addNoteNumSuccess);
        //alert("评论失败！");
    }
    else if(data.resultCode === "400"){
        alert("评论失败！");
    }
}

function addNoteNumSuccess(data){
    if(data.resultCode === "200"){
        alert("评论成功！您是第"+(parseInt(nowFloorNumber)-1)+"位");
        window.location.reload();
    }
    else if(data.resultCode === "400"){
        alert("评论失败！");
    }

}
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

