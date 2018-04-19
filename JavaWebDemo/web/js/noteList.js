var page = 0;//第几页
var pageNumber = 10;//每页多少个

//暂时不加分页
$(function(){
    getCurrentNoteList();
});

function getCurrentNoteList(){
    var param = {
        page: page,
        pageNumber: pageNumber
    };
    postAjax("noteList_getData.action", param, getNoteList);
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
        //alert(obj.noteName + "," + obj.noteNumber);
        noteListHtml = noteListHtml + "<article class=\"format-standard type-post hentry clearfix\">\n";
        noteListHtml = noteListHtml + "    <header class=\"clearfix\">\n";
        noteListHtml = noteListHtml + "        <h3 class=\"post-title\">\n";
        noteListHtml = noteListHtml + "            <a href=\"../singleNote.jsp?noteId="+obj.noteId+"\">"+obj.noteName+"</a>\n";
        noteListHtml = noteListHtml + "        </h3>\n";
        noteListHtml = noteListHtml + "\n";
        noteListHtml = noteListHtml + "        <div class=\"post-meta clearfix\">\n";
        noteListHtml = noteListHtml + "            <span class=\"date\">"+obj.noteTime+"</span>\n";
        noteListHtml = noteListHtml + "            <span class=\"comments\"><a href=\"#\" title=\"Comment on "+obj.noteName+"\">"+(obj.noteNumber-1) +" Comments</a></span>\n";
        noteListHtml = noteListHtml + "        </div><!-- end of post meta -->\n";
        noteListHtml = noteListHtml + "    </header>\n";
        noteListHtml = noteListHtml + "<p>"+obj.content+" . . . <a class=\"readmore-link\" href=\"../singleNote.jsp?noteId"+obj.noteId+"\">Read more</a></p>\n";
        noteListHtml = noteListHtml + "</article>\n\n";
    });
    $('#main_listing_div').html(noteListHtml);
}

function paginationPre(){
}
function paginationNext(){
}
