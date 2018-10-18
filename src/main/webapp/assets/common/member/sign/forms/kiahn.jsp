<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<link rel="stylesheet" href="/treeware/assets/css/form.css">
<%@ include file="/assets/common/modal/member.jsp" %>
<script>
$(document).ready(function() {
	$("#writeBtn").click(function() {
		if($("#members").val()==''){
			alert("수신처를 추가해주세요");
			return;
		}else if($("#title").val() == '') {
			alert("제목을 입력해주세요");
			return;
		} else if($("#date2").val() == '') {
			alert("시행일을 입력해주세요");
			return;
		} else if($('#text').val()==''){
			alert("내용을 입력해주세요");
			return;
		}else {
			$("#signform").attr("action", "${root}/reboard/write.kitri").submit();
		}
	});
});
</script>

<div class="row" style="border:1px solid #777;padding:20px;border-radius:1px;">
	<div id="title" align="center">
		<h2 style="text-decoration: underline;">기 안 문</h2>
	</div>
	<form class="signform" method="POST" name="signform" action="">
	<input type="hidden" name="formName" value="kiahn">
	<input type="hidden" name="member1" value="">
	<input type="hidden" name="member2" value="">
	<input type="hidden" name="member3" value="">
	<div id="info" class="row">
		<table style="width:100%">
			<tr>
				<td width="50%">
					<table id="first" style="width:100%">
						<tr><td><b>| 기안자:&nbsp;</b>김고은</td></tr>
						<tr><td><b>| 소속:&nbsp;</b>응용SW개발팀</td></tr>
						<tr><td><b>| 전화:&nbsp;</b>02-000-0000</td></tr>
						<tr><td><b>| 이메일:&nbsp;</b>nuogmik@treeware.com</td></tr>
					</table>
				</td>
				<td width="50%">
					<table id="sign" class="formtable" align="right">
						<tr>
							<td class="info_title" width="80px">결재자</td>
							<td class="info_title" width="80px">결재자</td>
							<td class="info_title" width="80px">결재자</td>
						</tr>
						<tr>
							<td class="info_text" id="memberName1">김지훈</td>
							<td class="info_text" id="memberName2">강혜인</td>
							<td class="info_text" id="memberName3">김고은</td>
						</tr>
						<tr>
							<td class="info_img" id="memberSign1"><img src="/treeware/assets/img/signjh.png" height="50px"></td>
							<td class="info_img" id="memberSign2"><img src="/treeware/assets/img/signhi.png" height="50px"></td>
							<td class="info_img" id="memberSign3"><img src="/treeware/assets/img/signge.png" height="50px"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	<table id="second" class="formtable" style="width:100%">
			<tr>
				<td width="20%" class="info_title">문서번호</td>
				<td width="80%" colspan="3">트리웨어기안문-2018-0123</td>
			</tr> 
			<tr>
				<td width="20%" class="info_title">수 신 처</td>
				<td width="80%" colspan="3">
					<span id="members"></span>
					<a href="#member" rel="modal:open">
						<input type="button" value="찾아보기">
					</a>
				</td>
			</tr>
			<tr>
				<td width="20%" class="info_title">제 목</td>
				<td width="80%" colspan="3"><input id="title" name="title" type="text" value="" style="width:100%"></td>
			</tr>
			<tr>
				<td width="20%" class="info_title">기 안 일</td>
				<td width="30%"><input type="date" id="date1" name="date1"></td>
				<td width="20%" class="info_title">시행일자</td>
				<td width="30%"><input type="date" id="date2" name="date2"></td>
			</tr>
			<tr>
				<td class="info_title" colspan="4">상 세 내 용</td>
			</tr>
	</table>
	<br>
	<textarea id="content" name="content" rows="30" style="width:100%"></textarea>
	<p style="text-align:center;margin:30px 0 30px 0 ">
	<button type="button" id="writeBtn" style="padding:5px 15px">등록하기</button>
	<button type="button" id="cancelBtn" style="padding:5px 15px">등록취소</button>
</form>
</div>