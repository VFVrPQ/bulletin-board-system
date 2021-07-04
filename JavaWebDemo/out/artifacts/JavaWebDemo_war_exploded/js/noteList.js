var page = 0;//第几页
var pageNumber = 5;//每页多少个
var pageTotal = 0;//表示最后一页的页号

var s;
//完成分页
$(function(){
    //搜索的关键词
    s = getUrlParam('s');
    getCurrentNoteList(s);
});

function getCurrentNoteList(s){
    var param = {
        page: page,
        pageNumber: pageNumber
    };

    if (s==null){
        postAjax("noteList_getData.action", param, getNoteList);
    }else{
        param['key'] = s;//增加参数
        //alert(param);
        postAjax("search_getDataByKey.action", param, getNoteList);
    }
}
var noteList;
function getNoteList(data){
    noteList = data;
    showNoteList(noteList);
}
function showNoteList(data){
    var noteListHtml = "";
    //noteId,noteNumber,noteName,noteType, noteOwner,noteTime
    $(data).each(function (key,obj) {
        pageTotal = parseInt((obj.number-1) / pageNumber);
        //alert(obj.noteName + "," + obj.noteNumber + "," + obj.userName);
        noteListHtml = noteListHtml + "<article class=\"format-standard type-post hentry clearfix\">\n";
        noteListHtml = noteListHtml + "    <header class=\"clearfix\">\n";
        noteListHtml = noteListHtml + "        <h3 class=\"post-title\">\n";
        noteListHtml = noteListHtml + "            <a href=\"../singleNote.jsp?noteId="+obj.noteId+"\">"+obj.noteName+"</a>\n";
        noteListHtml = noteListHtml + "        </h3>\n";
        noteListHtml = noteListHtml + "\n";
        noteListHtml = noteListHtml + "        <div class=\"post-meta clearfix\">\n";
        noteListHtml = noteListHtml + "            <span class=\"date\">"+obj.noteTime+"</span>\n";
        noteListHtml = noteListHtml + "            <span class=\"category\"><a href=\"#\" title=\"Written By "+obj.userName+"\">"+obj.userName+"</a></span>";
        noteListHtml = noteListHtml + "            <span class=\"comments\"><a href=\"singleNote.jsp?noteId="+obj.noteId+"#comment_title\" title=\"Comment on "+obj.noteName+"\">"+(obj.noteNumber-1) +" Comments</a></span>\n";
        noteListHtml = noteListHtml + "            <span class=\"like-count\">1</span>";
        noteListHtml = noteListHtml + "        </div><!-- end of post meta -->\n";
        noteListHtml = noteListHtml + "    </header>\n";

        var content = obj.content;
        if (content.length>100) content=content.substr(0,100) + " . . . <a class=\"readmore-link\" href=\"../singleNote.jsp?noteId="+obj.noteId+"\">Read more</a>\n";
        noteListHtml = noteListHtml + content;
        noteListHtml = noteListHtml + "</article>\n\n";
    });
    //alert("pageTotal="+pageTotal);
    $('#main_listing_div').html(noteListHtml);
}

function paginationPre(){
    if (page>0){
        page = page - 1;
        getCurrentNoteList(s);
    }else{
        alert("已经是第一页了！");
    }
}
function paginationNext(){
    if (page<pageTotal){
        page = page + 1;
        getCurrentNoteList(s);
    }else{
        alert("已经是最后一页了！");
    }
}

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