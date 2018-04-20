var noteId;
var nowFloorNumber=null;
$(function(){
/*    $('#comment_btn').on('click',function(){

    });*/
    noteId = getUrlParam('noteId');
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
        noteListHtml = noteListHtml + "            <a href=\"#\">"+obj.noteName+"</a>\n";
        noteListHtml = noteListHtml + "        </h3>\n";
        noteListHtml = noteListHtml + "\n";
        noteListHtml = noteListHtml + "        <div class=\"post-meta clearfix\">\n";
        noteListHtml = noteListHtml + "            <span class=\"date\">"+obj.noteTime+"</span>\n";
        noteListHtml = noteListHtml + "            <span class=\"comments\"><a href=\"#comment_title\" title=\"Comment on "+obj.noteName+"\">"+(obj.noteNumber-1) +" Comments</a></span>\n";
        noteListHtml = noteListHtml + "            <span class=\"like-count\">1</span>";
        noteListHtml = noteListHtml + "        </div><!-- end of post meta -->\n";
        noteListHtml = noteListHtml + "    </header>\n";
        noteListHtml = noteListHtml + obj.content+"\n";
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
    floorListHtml = floorListHtml + "<h3 id=\"comments-title\"><a name=\"comment_title\">("+(nowFloorNumber-1)+") Comments</a></h3>";
    floorListHtml = floorListHtml + "<ol class=\"commentlist\">\n";
    $(data).each(function(key,obj){
        if (obj.floorNumber!=1) {//1是内容
            floorListHtml = floorListHtml + "  <li class=\"comment even thread-even depth-1\" id=\"li-comment-" + obj.floorNumber + "\">\n";
            floorListHtml = floorListHtml + "     <article id=\"comment-"+obj.floorNumber+"\">\n";
            floorListHtml = floorListHtml + "       <div class=\"comment-meta\">\n";
            floorListHtml = floorListHtml + "           <a href=\"#\"><img alt=\"\" src=\"http://0.gravatar.com/avatar/2df5eab0988aa5ff219476b1d27df755?s=60&amp;d=http%3A%2F%2F0.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D60&amp;r=G\" class=\"avatar avatar-60 photo\" height=\"60\" width=\"60\"></a>";
            floorListHtml = floorListHtml + "         <h5 class=\"author\">\n";
            floorListHtml = floorListHtml + "           <cite class=\"fn\">"+obj.userName+"</cite>";
            floorListHtml = floorListHtml + "           - <a class=\"comment-reply-link\" href=\"#\">Reply</a>\n";
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

