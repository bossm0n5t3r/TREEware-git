<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
td{
	height:30px;
}
.member:hover {
	background-color:#eee;
}
</style>
<script>
var data ;
$(document).ready(function(){
	$("#search_word").keyup(function(){
		if($("#search_word").val()!=''){
			empajax();
		}
	});
});
function empajax(){
	var key="emp_nm"
	$.ajax({
		type : "GET"
		,url : "/treeware/member/form/membersearch.tree"
		,dataType : "json"
		,data : {
			"key" : key,
			"word" : $("#search_word").val()
		}
		,success : function(data) {
			memberSearch(data);
		}
		,error : function(e) {
			alert("올바른 입력이 아닙니다");
		}
});
}
function memberSearch(result){
	$('.list').empty();
	data = result.employee;
	if(data.length==0){
		$('.list').append('<tr><td colspan="4"><b>검색결과가 없습니다.</b></td></tr>');
	}else{
		for(var i=0; i<data.length; i++){
			$('.list').append('<tr id="member">');
			$('.list').append('<td><a href="javascript:memberSelect('+i+')">'+change_dpt(data[i].dpt_sq)+'</a></td>');
			$('.list').append('<td>'+change_rnk(data[i].rnk_sq)+'</td>');
			$('.list').append('<td>'+data[i].emp_nm+'</td>');
			$('.list').append('<td>'+data[i].emp_tel1+'-'+data[i].emp_tel2+'-'+data[i].emp_tel3+'</td>');
			$('.list').append('</tr>');
			if(i==10){break;}
		}
	}
}

function memberSelect(a){
	if(members.length==3){
		alert("최대 3명 선택할 수 있습니다. 확인 후 다시 시도해주세요");
	}else{
		members.push('data[a]');
	}
	$(".close-modal").click();
}
</script>
<!-- 제이쿼리 모달창 -->
<div id="member" class="modal" align="center" style="height:500px">
	<p>사원을 검색해주세요</p>
	<form id="findmember" name="findmember" action="">
		<input id="search_word" name="search_word" type="text" style="width:100%;height:30px;padding:5px">
		<input type="hidden" id="word" name="word">
		<div id="memberlist" style="padding:20px 0px">
			<table class="table" style="width:100%;padding:10px">
				<thead>
					<tr style="border-bottom:1px solid #eee">
						<td style="width:30%"><b>소속부서</b></td>
						<td style="width:15%"><b>직위</b></td>
						<td style="width:20%"><b>이름</b></td>
						<td style="width:35%"><b>연락처</b></td>
					</tr>
				</thead>
				<tbody class="list">
					<tr><td colspan="4"><b>검색결과가 없습니다.</b></td></tr>
				</tbody>
			</table>
		</div>
	</form>
<!-- <p><a href="#" rel="modal:close">Close</a></p> -->
</div>