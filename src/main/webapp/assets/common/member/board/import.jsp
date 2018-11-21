<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
input[type=text]{
	margin:10px 0px;
}
</style>

<c:set var="bcode" value="${param.bcode }"/>
<c:set var="pg" value="${param.pg }"/>
<c:set var="key" value="${param.key }"/>
<c:set var="word" value="${param.word }"/>
<form name="commonform" id="commonform">
	<input type="hidden" name="bcode" id="bcode" value="">
	<input type="hidden" name="pg" id="pg" value="">
	<input type="hidden" name="key" id="key" value="">
	<input type="hidden" name="word" id="word" value="">
	<input type="hidden" name="seq" id="seq" value="">
</form>

<script type="text/javascript" src="${root}/assets/js/member/board/board.js"></script>
<script type="text/javascript">
var brdList;
var commentList;

//	게시판 종류 가져오기
function getBrdList() {
	$.ajax({
		type : "GET"
		,url : "${root}/admin/board/getBrdList.tree"
		,dataType : "json"
		,success : function(data) {
			makeBrdListInWrite(data);
			makeBrdListInSide(data);
		}
		,error : function(e) {
			
		}
	})
}

//	게시판 분류를 글쓰기 화면에서 보여주기
function makeBrdListInWrite(data) {
	$('#brd_category').empty();
	var sBrdList = data.brdList;
	brdList = sBrdList;
	$('#brd_category').append("<option value='0' selected='selected' disabled>게시판 선택</option>");
	for (var i = 0; i < brdList.length; i++) {
		var option = $("<option></option>").attr("value", brdList[i].BCODE)
										   .text(brdList[i].BNAME);
		$('#brd_category').append(option);
	}
}

//	게시판 종류를 side에 표시. 클릭시 해당 게시판의 첫 페이지로 이동
function makeBrdListInSide(data) {
	$('#boardlist').empty();
	var sBrdList = data.brdList;
	brdList = sBrdList;
	for (var i = 0; i < brdList.length; i++) {
		var ptag = $("<p></p>").text(brdList[i].BNAME);
		var atag = $("<a></a>").attr("href", "${root}/member/board/mvBoard.tree?bcode=" + brdList[i].BCODE + "&pg=1&key=&word=&seq=")
							   .append(ptag);
		var board = $("<li></li>").attr("class", "nav-item")
								  .append(atag);
		$('#boardlist').append(board);
	}
}

//	댓글 가져오기
function getCommentList() {
	$.ajax({
		type : "GET"
		,url : "${root}/member/comment/listComment.tree"
		,data : {
			"brd_sq" : $("#brd_sq").val()
			,"rpl_chkdlt" : "0"
		}
		,dataType : "json"
		,success : function(data) {
			$("#rpl_ctt").val("");
			makeCommentList(data);
		}
		,error : function(e) {
			
		}
	})
}

function makeCommentList(data) {
	$("#commentList").empty();
	var sCommentList = data.commentList;
	commentList = sCommentList;
	for (var i = 0; i < commentList.length; i++) {
		var idTag = $("<input>").attr("type", "hidden")
								.attr("class", "rpl_sq")
								.attr("value", commentList[i].rpl_sq);
		var nameTag = $("<td></td>").text(commentList[i].emp_nm);
		var commentTag = $("<td></td>").text(commentList[i].rpl_ctt);
		var registerTag = $("<td></td>").text(commentList[i].rpl_register);
		var deleteTag = $("<td></td>").attr("class", "deleteCommentBtn")
									  .text("삭제");
		var comment = $("<tr></tr>").append(idTag)
									.append(nameTag)
									.append(commentTag)
									.append(registerTag);
		if (commentList[i].rpl_sq[0] !== "") {
			comment.append(deleteTag);
		}
		$("#commentList").append(comment);
	}
}
</script>
