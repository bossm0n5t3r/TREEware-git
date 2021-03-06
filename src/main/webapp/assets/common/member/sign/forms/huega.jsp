<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<link rel="stylesheet" href="/treeware/assets/css/form.css">
<%@ include file="/assets/common/modal/member.jsp" %>
<div class="row" style="border:1px solid #777;padding:20px;border-radius:1px;">
	<div id="title" align="center">
		<h2 style="text-decoration: underline;">휴 가 원</h2>
	</div>
	<form class="signform" method="POST" name="registerMemberForm" action="">
	<div id="info" class="row">
		<table style="width:100%">
			<tr>
				<td width="50%">
					<p id="first" style="line-height: 160%">
					<b>| 기안자:&nbsp;</b>김고은<br>
					<b>| 소속:&nbsp;</b>응용SW개발팀<br>
					<b>| 전화:&nbsp;</b>02-000-0000<br>
					<b>| 이메일:&nbsp;</b>nuogmik@treeware.com
					</p>
				</td>
				<td width="50%">
					<table id="sign" class="formtable" align="right">
						<tr>
							<td class="info_title" width="80px" style="background-color:#eee;text-align:center">결재1</td>
							<td class="info_title" width="80px" style="background-color:#eee;text-align:center">결재2</td>
						</tr>
						<tr>
							<td class="info_text" style="text-align:center">강수민</td>
							<td class="info_text" style="text-align:center">박윤민</td>
						</tr>
						<tr>
							<td class="info_img" style="align:center"><img src="/treeware/assets/img/signsm.png" height="50px"></td>
							<td class="info_img" style="align:center"><img src="/treeware/assets/img/signym.png" height="50px"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	
	<table id="second" class="formtable" style="width:100%">
		<tr>
			<td width="20%" class="info_title" colspan="2" style="background-color:#eee;text-align:center">신청인 <a href=""> [변경]</a></td>
		</tr> 
		<tr>
			<td width="20%" class="info_title" style="background-color:#eee;text-align:center">소 속</td>
			<td width="80%"><span id="text11">응용SW개발팀</span></td>
		</tr> 
		<tr>
			<td width="20%" class="info_title" style="background-color:#eee;text-align:center">직 책</td>
			<td width="80%"><span id="text12">부장</span></td>
		</tr>
		<tr>
			<td width="20%" class="info_title" style="background-color:#eee;text-align:center">성 명</td>
			<td width="80%"><span id="text12">김고은</span></td>
		</tr>
	</table>
	
	<table id="third" class="formtable" style="width:100%">
		<tr>
			<td width="20%" class="info_title" style="background-color:#eee;text-align:center">휴가종류</td>
			<td width="30%" ><span id="text21">연차</span></td>
			<td width="20%" class="info_title" style="background-color:#eee;text-align:center">잔 여 일</td>
			<td width="30%"><span id="text22">15</span></td>
		</tr> 
		<tr>
			<td width="20%" class="info_title" style="background-color:#eee;text-align:center">휴가시작</td>
			<td width="30%"><span id="text23"><input type="date" id="date1"></span></td>
			<td width="20%" class="info_title" style="background-color:#eee;text-align:center">휴가종료</td>
			<td width="30%"><span id="text24"><input type="date" id="date1"></span></td>
		</tr>
		<tr>
			<td width="20%" class="info_title" style="background-color:#eee;text-align:center">휴가사유</td>
			<td width="80%" colspan="3"><input id="text24" type="text" value="" style="width:100%"></td>
		</tr>
		<tr>
			<td colspan="4" align="center">
				<br>
				<br>
				<br>
				휴가기준 제 13조에 의거 휴가를 신청하오니 허락하여 주시기 바랍니다.
				<br>
				<br>
				<br>
				<br>
			</td>
		</tr>
	</table>
	
	<p style="text-align:center;margin:30px 0 30px 0 ">
	<button type="button" id="btn-add-nodes" class="signbtn">등록하기</button>
	<button type="button" id="btn-delete-nodes" class="signbtn">등록취소</button>
	</p>
</form>
</div>