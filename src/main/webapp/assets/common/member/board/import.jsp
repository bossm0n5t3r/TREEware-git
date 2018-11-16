<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
input[type=text]{
	margin:10px 0px;
}
</style>
<script type="text/javascript" src="${root}/assets/js/member/board/board.js"></script>
<script type="text/javascript">
var brdList;

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
	$("#brd_category").empty();
	var sBrdList = data.brdList;
	brdList = sBrdList;
	$("#brd_category").append("<option value='0' selected='selected' disabled>게시판 선택</option>");
	for (var i = 0; i < brdList.length; i++) {
		var option = $("<option></option>").attr("value", brdList[i].BCODE)
										   .text(brdList[i].BNAME);
		$("#brd_category").append(option);
	}
}

function makeBrdListInSide(data) {
	$("#boardlist").empty();
	var sBrdList = data.brdList;
	brdList = sBrdList;
	for (var i = 0; i < brdList.length; i++) {
		var atag = $("<a></a>").text(brdList[i].BNAME);
		var board = $("<li></li>").attr("class", "nav-item")
								  .append(atag);
		$("#boardlist").append(board);
	}
}
</script>

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