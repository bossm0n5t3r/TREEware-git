<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<link rel="stylesheet" href="/treeware/assets/css/form.css">
<%@ include file="/assets/common/modal/member.jsp" %>
<div class="row" style="border:1px solid #777;padding:20px;border-radius:1px;">
	<div id="title" align="center">
		<h2 style="text-decoration: underline;">경 력 증 명 서</h2>
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
						</tr>
						<tr>
							<td class="info_text" style="text-align:center">김고은</td>
						</tr>
						<tr>
							<td class="info_img"><img src="/treeware/assets/img/signge.png" height="50px"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	
	<table id="second" class="formtable" style="width:100%">
		<tr>
			<td width="20%" class="info_title" colspan="2" style="background-color:#eee;text-align:center">인 적 사 항 <a href=""> [변경]</a></td>
		</tr> 
		<tr>
			<td width="20%" class="info_title" style="background-color:#eee;text-align:center">성 명</td>
			<td width="80%"><span id="text11">김고은</span></td>
		</tr> 
		<tr>
			<td width="20%" class="info_title" style="background-color:#eee;text-align:center">주민번호</td>
			<td width="80%"><span id="text12">900000-000000</span></td>
		</tr>
		<tr>
			<td width="20%" class="info_title" style="background-color:#eee;text-align:center">주 소</td>
			<td width="80%"><span id="text13">서울특별시 구로구 디지털로 333 사이언스밸리 405호</span></td>
		</tr>
	</table>
	
	<table id="third" class="formtable" style="width:100%">
		<tr>
			<td width="100%" class="info_title" colspan="3" style="padding:10px 0;background-color:#eee;text-align:center">증 명 사 항</td>
		</tr>
		<tr>
			<td width="40%" class="info_title" style="padding:10px 0;background-color:#eee;text-align:center">기 간</td>
			<td width="30%" class="info_title" style="padding:10px 0;background-color:#eee;text-align:center">소속 및 직위</td>
			<td width="30%" class="info_title" style="padding:10px 0;background-color:#eee;text-align:center">업무내용</td>
		</tr>
		<tr>
			<td width="40%" class="info_text" style="padding:10px"><span id="text21">2018-00-00</span> ~ <span id="text22">2018-00-00</span></td>
			<td width="30%" class="info_text" style="padding:10px"><span id="text23">인터넷마케팅팀 인턴</span></td>
			<td width="30%" class="info_text" style="padding:10px"><span id="text24">바이럴마케팅 업무</span></td>
		</tr>
		<tr>
			<td width="40%" class="info_text" style="padding:10px"><span id="text21">2018-00-00</span> ~ <span id="text22">2018-00-00</span></td>
			<td width="30%" class="info_text" style="padding:10px"><span id="text23">인터넷마케팅팀 인턴</span></td>
			<td width="30%" class="info_text" style="padding:10px"><span id="text24">바이럴마케팅 업무</span></td>
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