<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<link rel="stylesheet" href="/treeware/assets/css/form.css">
<%@ include file="/assets/common/modal/member.jsp" %>
<div class="row" style="border:1px solid #777;padding:20px;border-radius:1px">
	<div id="title" align="center">
		<h2 style="text-decoration: underline;">시 행 문</h2>
	</div>
	<form class="signform" method="POST" name="registerMemberForm" action="">
	<div id="info" class="row">
	
		<br>
		<table id="first" style="width:100%">
			<tr>
				<td><b>| 담당자:&nbsp;</b><span id="userName">김고은</span></td>
				<td><b>| 소속:&nbsp;</b><span id="userDept">응용SW개발팀</span></td>
				<td><b>| 전화:&nbsp;</b><span id="userPhone">02-0000-9010</span></td>
				<td><b>| 이메일:&nbsp;</b><span id="userEmail">nuogmik@treeware.com</span></td>
			</tr>
		</table>
		<hr>
		
		<table id="second" class="formtable" style="width:100%">
			<tr>
				<td width="20%" class="info_title" style="background-color:#eee;text-align:center">문서번호</td>
				<td width="80%" ><span id="docnum">트리웨어기안문-2018-0123</span></td>
			</tr> 
			<tr>
				<td width="20%" class="info_title" style="background-color:#eee;text-align:center">수 신 처</td>
				<td width="80%"><span id="docto"><a href="">추가하기</a></span></td>
			</tr>
			<tr>
				<td width="20%" class="info_title" style="background-color:#eee;text-align:center">제 목</td>
				<td width="80%"><input id="doctitle" type="text" value="" style="width:100%"></td>
			</tr>
		</table>
	</div>
	
	<table id="third" style="width:100%">
		<tr>
			<td width="100%" colspan="2" align="center">
				<br>
				<br>
				아래와 같이 보고 하오니 검토 후 재가 바랍니다.
				<br>
				<br>
				- 아 래 -
				<br>
				<br>
				<br>
				<textarea id=doctext rows="30" style="width:100%"></textarea>
				<br>
				<br>
			</td>
		</tr>
		<tr>
			<td colspan="2"><input type="file"></td>
		</tr>
	</table>
	<p style="text-align:center;margin:30px 0 30px 0 ">
	<button type="button" id="btn-add-nodes" class="signbtn">등록하기</button>
	<button type="button" id="btn-delete-nodes" class="signbtn">등록취소</button>
	</p>
</form>
</div>