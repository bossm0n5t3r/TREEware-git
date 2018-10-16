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
		<h2 style="text-decoration: underline;">경 력 증 명 서</h2>
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
						</tr>
						<tr>
							<td class="info_text">결재자</td>
						</tr>
						<tr>
							<td class="info_img">서명</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	
	<table id="second" class="formtable" style="width:100%">
		<tr>
			<td width="20%" class="info_title" colspan="2">인 적 사 항 <a href=""> [변경]</a></td>
		</tr> 
		<tr>
			<td width="20%" class="info_title">성 명</td>
			<td width="80%"><span id="text11">김고은</span></td>
		</tr> 
		<tr>
			<td width="20%" class="info_title">주민번호</td>
			<td width="80%"><span id="text12">900000-000000</span></td>
		</tr>
		<tr>
			<td width="20%" class="info_title">주 소</td>
			<td width="80%"><span id="text13">서울특별시 구로구 디지털로 333 사이언스밸리 405호</span></td>
		</tr>
	</table>
	
	<table id="third" class="formtable" style="width:100%">
		<tr>
			<td width="100%" class="info_title" colspan="3" style="padding:10px 0">증 명 사 항</td>
		</tr>
		<tr>
			<td width="40%" class="info_title" style="padding:10px 0">기 간</td>
			<td width="30%" class="info_title" style="padding:10px 0">소속 및 직위</td>
			<td width="30%" class="info_title" style="padding:10px 0">업무내용</td>
		</tr>
		<tr>
			<td width="40%" class="info_text" style="padding:10px 0"><span id="text21">2018-00-00</span> ~ <span id="text22">2018-00-00</span></td>
			<td width="30%" class="info_text" style="padding:10px 0"><span id="text23">인터넷마케팅팀 인턴</span></td>
			<td width="30%" class="info_text" style="padding:10px 0"><span id="text24">바이럴마케팅 업무</span></td>
		</tr>
		<tr>
			<td width="40%" class="info_text" style="padding:10px 0"><span id="text21">2018-00-00</span> ~ <span id="text22">2018-00-00</span></td>
			<td width="30%" class="info_text" style="padding:10px 0"><span id="text23">인터넷마케팅팀 인턴</span></td>
			<td width="30%" class="info_text" style="padding:10px 0"><span id="text24">바이럴마케팅 업무</span></td>
		</tr>
		<tr>
			<td colspan="3" align="center">
				<br>
				<br>
				<br>
				상기와 같이 재직하였음을 증명함.
				<br>
				<br>
				<br>
				<br>
				<span id="today">2018.08.08.</span>
				<br>
				TREE WARE company
				<br>
				<br>
				<br>
				<br>
			</td>
		</tr>
	</table>


	<p style="text-align:center;margin:30px 0 30px 0 ">
	<button type="button" id="btn-add-nodes" class="signbtn">신청하기</button>
	<button type="button" id="btn-delete-nodes" class="signbtn">신청취소</button>
	</p>
</form>
</div>