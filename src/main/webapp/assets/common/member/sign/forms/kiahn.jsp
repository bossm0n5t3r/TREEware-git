<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script src="/treeware/assets/js/common.js"></script>
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
	var a = ${userInfo.dpt_sq};
	var b = change_dpt(a);
	$("#dpt_name").text(b);
	
});

var members = [];
console.log(members.length);

</script>
<div class="row" style="border:1px solid #777;padding:20px;border-radius:1px;">
	<div id="title" align="center">
		<h2 style="text-decoration: underline;">기 안 문</h2>
		<span id="putnum"></span>
	</div>
	<form class="signform" method="POST" name="signform" action="">
	<input type="hidden" name="formName" value="kiahn">
	<input type="hidden" name="member1" value="">
	<input type="hidden" name="member2" value="">
	<input type="hidden" name="member3" value="">
	<input type="hidden" id="members_num" value="">
	<div id="info" class="row">
		<table style="width:100%">
			<tr>
				<td width="50%">
					<table style="height:5px">
						<tr>
							<td>
								<b style="line-height:160%">
									| 기안자<br>
									| 부서<br>
									| 전화<br>
									| 이메일<br>
								</b>
							</td>
							<td>
								<span style="line-height:160%">
								: ${userInfo.emp_nm}<br>
								: <span id="dpt_name"></span><br>
								: ${userInfo.emp_tel1}-${userInfo.emp_tel2}-${userInfo.emp_tel3}<br>
								: ${userInfo.emp_ml_id}${userInfo.emp_ml_addr}<br>
								</span>
							</td>
						</tr> 
					</table>
				</td>
				<td width="50%">
					<table id="sign" class="formtable" align="right">
						<tr>
							<td class="info_title" width="80px" style="background-color:#eee;text-align:center">결재자</td>
							<td class="info_title" width="80px" style="background-color:#eee;text-align:center">결재자</td>
							<td class="info_title" width="80px" style="background-color:#eee;text-align:center">결재자</td>
						</tr>
						<tr>
							<td class="info_text" id="memberName1" style="text-align:center">김지훈</td>
							<td class="info_text" id="memberName2" style="text-align:center">강혜인</td>
							<td class="info_text" id="memberName3" style="text-align:center">김고은</td>
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
				<td width="20%" class="info_title" style="background-color:#eee;text-align:center">문서번호</td>
				<td width="80%" colspan="3">트리웨어기안문-2018-0123</td>
			</tr> 
			<tr>
				<td width="20%" class="info_title" style="background-color:#eee;text-align:center">수 신 처</td>
				<td width="80%" colspan="3">
					<span id="members"></span>
					<a href="#member" rel="modal:open">
						<input type="button" value="찾아보기">
					</a>
				</td>
			</tr>
			<tr>
				<td width="20%" class="info_title" style="background-color:#eee;text-align:center">제 목</td>
				<td width="80%" colspan="3"><input id="title" name="title" type="text" value="" style="width:100%"></td>
			</tr>
			<tr>
				<td width="20%" class="info_title" style="background-color:#eee;text-align:center">기 안 일</td>
				<td width="30%"><input type="date" id="date1" name="date1"></td>
				<td width="20%" class="info_title" style="background-color:#eee;text-align:center">시행일자</td>
				<td width="30%"><input type="date" id="date2" name="date2"></td>
			</tr>
			<tr>
				<td class="info_title" colspan="4" style="background-color:#eee;text-align:center">상 세 내 용</td>
			</tr>
	</table>
	<br>
	<textarea id="content" name="content" rows="30" style="width:100%"></textarea>
	<p style="text-align:center;margin:30px 0 30px 0 ">
	<button type="button" id="writeBtn" style="padding:5px 15px">등록하기</button>
	<button type="button" id="cancelBtn" style="padding:5px 15px">등록취소</button>
</form>
</div>