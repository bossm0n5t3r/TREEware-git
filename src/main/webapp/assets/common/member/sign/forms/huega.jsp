<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
table {
    border-collapse: collapse;
}
.formtable{
	margin:20px 0 0 0;
}
.formtable th, .formtable td{
    border: 1px solid #777;
    padding: 5px;
}
.signform td{
	font-size:80%;
}
.signform .info_title{
	background-color:#eee;
	text-align:center;
	padding:7px 0px;
	width:100px;
}
.signform .info_text{
	text-align:center;
	padding:3px 0px;
	width:100px;
}
.signform .info_img{
	text-align:center;
	width:100px;
	height:50px;
}
.signform input[type=text]{
	width:140px;
	height:25px;
}
#title h2{
	color:rgba(50, 50, 50, 0.9);
	margin:20px 0px 20px 0;
}
.signbtn{
	padding:5px 20px;
}
span{
	color:#444;
}
</style>

<div class="row" style="border:1px solid #777;padding:20px;border-radius:1px;">
	<div id="title" align="center">
		<h2 style="text-decoration: underline;">휴 가 원</h2>
	</div>
	<form class="signform" method="POST" name="registerMemberForm" action="">
	<div id="info" class="row">
		<table style="width:100%">
			<tr>
				<td width="50%">
					<table id="first" style="width:100%">
						<tr><td><b>| 기안자:&nbsp;</b><span id="userName">김고은</span></td></tr>
						<tr><td><b>| 소속:&nbsp;</b><span id="userDept">응용SW개발팀</span></td></tr>
						<tr><td><b>| 전화:&nbsp;</b><span id="userTel">02-000-0000</span></td></tr>
						<tr><td><b>| 이메일:&nbsp;</b><span id="userEmail">nuogmik@treeware.com</span></td></tr>
					</table>
				</td>
				<td width="50%">
					<table id="sign" class="formtable" align="right">
						<tr>
							<td class="info_title" width="80px">결재1</td>
							<td class="info_title" width="80px">결재2</td>
						</tr>
						<tr>
							<td class="info_text">결재자</td>
							<td class="info_text">결재자</td>
						</tr>
						<tr>
							<td class="info_img">서명</td>
							<td class="info_img">서명</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	
	<table id="second" class="formtable" style="width:100%">
		<tr>
			<td width="20%" class="info_title" colspan="2">신청인 <a href=""> [변경]</a></td>
		</tr> 
		<tr>
			<td width="20%" class="info_title">소 속</td>
			<td width="80%"><span id="text11">응용SW개발팀</span></td>
		</tr> 
		<tr>
			<td width="20%" class="info_title">직 책</td>
			<td width="80%"><span id="text12">부장</span></td>
		</tr>
		<tr>
			<td width="20%" class="info_title">성 명</td>
			<td width="80%"><span id="text12">김고은</span></td>
		</tr>
	</table>
	
	<table id="third" class="formtable" style="width:100%">
		<tr>
			<td width="20%" class="info_title">휴가종류</td>
			<td width="30%" ><span id="text21">연차</span></td>
			<td width="20%" class="info_title">잔 여 일</td>
			<td width="30%"><span id="text22">15</span></td>
		</tr> 
		<tr>
			<td width="20%" class="info_title">휴가시작</td>
			<td width="30%"><span id="text23"><input type="date" id="date1"></span></td>
			<td width="20%" class="info_title">휴가종료</td>
			<td width="30%"><span id="text24"><input type="date" id="date1"></span></td>
		</tr>
		<tr>
			<td width="20%" class="info_title">휴가사유</td>
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