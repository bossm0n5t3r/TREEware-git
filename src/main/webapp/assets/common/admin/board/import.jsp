<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
#listtable th, #listtable td{
    padding: 8px;
    text-align: left;
    border-top: 1px solid #eee;
}
</style>
<script type="text/javascript" >
var dptList;
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
	$('#btype').append("<option selected='selected' disabled>게시판 종류 선택</option>");
	for (var i = 0; i < btypeList.length; i++) {
		var option = $("<option></option>").attr("value", btypeList[i].BTYPE)
										   .text(btypeList[i].BTYPE_NAME);
		$('#btype').append(option);
	}
}

</script>