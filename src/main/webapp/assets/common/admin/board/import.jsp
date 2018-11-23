<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
#listtable th, #listtable td{
    padding: 15px;
    text-align: center;
}
</style>
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
		var categoryTag = $("<td></td>").attr("value", brdList[i].CCODE)
										.text(brdList[i].CNAME);
		var btypeTag = $("<td></td>").attr("value", brdList[i].BTYPE)
									 .text(brdList[i].BTYPE_NAME);
		var nameTag = $("<td></td>").attr("value", brdList[i].BCODE)
									.text(brdList[i].BNAME);
		var trTag = $("<tr></tr>").append(categoryTag)
								  .append(btypeTag)
								  .append(nameTag)
		$('#boardList').append(trTag);
	}
}
</script>