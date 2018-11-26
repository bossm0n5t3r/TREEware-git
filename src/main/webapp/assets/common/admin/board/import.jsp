<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
#listtable th, #listtable td{
    padding: 15px;
    text-align: center;
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

<script type="text/javascript" src="${root}/assets/js/board/board.js"></script>
<script type="text/javascript" >
var brdList;
var dptList;
var categoryList;
var rnkList;
var btypeList;

function getDptList() {
	$.ajax({
		type : "GET"
		,url : "${root}/admin/member/getDptList.tree"
		,dataType : "json"
		,success : function(data) {
			makeDptList(data);
		}
		,error : function(e) {
			
		}
	})
}

function makeDptList(data) {
	$('.dpt').empty();
	var sDptList = data.dptList;
	dptList = sDptList;
// 	$('.dpt').append("<option selected='selected' disabled>부서 선택</option>");
	for (var i = 0; i < dptList.length; i++) {
		var option = $("<option></option>").attr("value", dptList[i].DPT_SQ)
										   .text(dptList[i].DPT_NM);
		$('.dpt').append(option);
	}
}

function getCategoryList() {
	$.ajax({
		type : "GET"
		,url : "${root}/admin/board/getCategoryList.tree"
		,dataType : "json"
		,success : function(data) {
			makeCategoryList(data);
		}
		,error : function(e) {
			
		}
	})
}

function makeCategoryList(data) {
	$('.ctgry').empty();
	var sCategoryList = data.categoryList;
	categoryList = sCategoryList;
	$('.ctgry').append("<option selected='selected' disabled>카테고리 선택</option>");
	for (var i = 0; i < categoryList.length; i++) {
		var option = $("<option></option>").attr("value", categoryList[i].CCODE)
										   .text(categoryList[i].CNAME);
		$('.ctgry').append(option);
	}
}

function getRnkList() {
	$.ajax({
		type : "GET"
		,url : "${root}/admin/member/getRnkList.tree"
		,dataType : "json"
		,success : function(data) {
			makeRnkList(data);
		}
		,error : function(e) {
			
		}
	})
}

function makeRnkList(data) {
	$('.rnk').empty();
	var sRnkList = data.rnkList;
	rnkList = sRnkList;
// 	$('.rnk').append("<option selected='selected' disabled>직위 선택</option>");
	for (var i = 0; i < rnkList.length; i++) {
		var option = $("<option></option>").attr("value", rnkList[i].RNK_SQ)
										   .text(rnkList[i].RNK_NM);
		$('.rnk').append(option);
	}
}

function getBtypeList() {
	$.ajax({
		type : "GET"
		,url : "${root}/admin/board/getBtypeList.tree"
		,dataType : "json"
		,success : function(data) {
			makeBtypeList(data);
		}
		,error : function(e) {
			
		}
	})
}

function makeBtypeList(data) {
	$('#btype').empty();
	var sBtypeList = data.btypeList;
	btypeList = sBtypeList;
	$('#btype').append("<option selected='selected' disabled>게시판 타입 선택</option>");
	for (var i = 0; i < btypeList.length; i++) {
		var option = $("<option></option>").attr("value", btypeList[i].BTYPE)
										   .text(btypeList[i].BTYPE_NAME);
		$('#btype').append(option);
	}
}

//	게시판 종류 가져오기
function getBrdList() {
	$.ajax({
		type : "GET"
		,url : "${root}/admin/board/getBrdList.tree"
		,dataType : "json"
		,success : function(data) {
			makeBrdList(data);
		}
		,error : function(e) {
			
		}
	})
}

//	게시판 분류를 글쓰기 화면에서 보여주기
function makeBrdList(data) {
	$('#boardList').empty();
	var sBrdList = data.brdList;
	brdList = sBrdList;
	for (var i = 0; i < brdList.length; i++) {
		var categoryTag = $("<td></td>").text(brdList[i].CNAME);
		var btypeTag = $("<td></td>").text(brdList[i].BTYPE_NAME);
		var nameTag = $("<td></td>").text(brdList[i].BNAME);
		var trTag = $("<tr></tr>").attr("class", "board")
								  .attr("ccode", brdList[i].CCODE)
								  .attr("btype", brdList[i].BTYPE)
								  .attr("bcode", brdList[i].BCODE)
								  .append(categoryTag)
								  .append(btypeTag)
								  .append(nameTag)
		$('#boardList').append(trTag);
	}
}

//댓글 가져오기
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

function addComment() {
	$.ajax({
		type : "POST"
		,url : "${root}/member/comment/add.tree"
		,data : {
			"brd_sq" : $("#brd_sq").val()
			,"emp_sq" : $("#emp_sq").val()
			,"rpl_ctt" : $("#rpl_ctt").val()
		}
		,dataType : "text"
		,success : function(data) {
			getCommentList();
		}
		,error : function(e) {
			
		}
	})
}

function deleteComment(rpl_sq) {
	$.ajax({
		type : "POST"
		,url : "${root}/member/comment/delete.tree"
		,data : {
			"rpl_sq" : rpl_sq
		}
		,dataType : "text"
		,success : function(data) {
			getCommentList();
		}
		,error : function(e) {
			
		}
	})
}
</script>