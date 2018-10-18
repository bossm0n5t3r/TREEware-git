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
</style>

<div class="row" style="border:1px solid #777;padding:20px;border-radius:1px">
	<div id="title" align="center">
		<h2>구 매 신 청 서</h2>
	</div>
	<form class="signform" method="POST" name="registerMemberForm" action="">
	<div id="info" class="row">
		<table style="width:100%">
			<tr>
				<td width="50%">
					<table class="formtable">
						<tr>
							<td class="info_title">기안자</td>
							<td class="signname"><input type="text"></td>
						</tr>
						<tr>
							<td class="info_title">소속</td>
							<td class="signdept">소속</td>
						</tr>
						<tr>
							<td class="info_title">기 안 일</td>
							<td class="signdate">18.08.01</td>
						</tr>
						<tr>
							<td class="info_title">문서번호</td>
							<td class="signnum">201222</td>
						</tr>
					</table>
				</td>
				<td width="50%">
					<table class="formtable" align="right">
						<tr>
							<td class="info_title">확인1</td>
							<td class="info_title">확인2</td>
						</tr>
						<tr>
							<td class="info_text">부서명</td>
							<td class="info_text">부서명</td>
						</tr>
						<tr>
							<td class="info_text">기안자</td>
							<td class="info_text">기안자</td>
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
	
	<table class="formtable" style="width:100%">
		<tr>
			<td width="10%" class="info_title">소속</td>
			<td width="40%" colspan="2"><input type="text" style="width:100%"></td>
			<td width="10%" class="info_title">작성자</td>
			<td width="40%" colspan="2"><input type="text" style="width:100%"></td>
		</tr>
		<tr>
			<td width="10%" class="info_title">제목</td>
			<td width="90%" colspan="5"><input type="text" style="width:100%"></td>
		</tr>
		<tr>
			<td width="20%" class="info_title">품명</td>
			<td width="10%" class="info_title">규격</td>
			<td width="10%" class="info_title">수량</td>
			<td width="20%" class="info_title">단가</td>
			<td width="20%" class="info_title">금액</td>
			<td width="20%" class="info_title">비고</td>
		</tr>
		<% for(int i=1 ; i<10 ; i++){ %>
		<tr>
			<td width="20%"><input type="text" style="width:100%"></td>
			<td width="10%"><input type="text" style="width:100%"></td>
			<td width="10%"><input type="text" style="width:100%"></td>
			<td width="20%"><input type="text" style="width:100%"></td>
			<td width="20%"><input type="text" style="width:100%"></td>
			<td width="20%"><input type="text" style="width:100%"></td>
		</tr>
		<%} %>
		<tr>
			<td width="20%" class="info_title">합계</td>
			<td width="10%"><input type="text" style="width:100%"></td>
			<td width="10%"><input type="text" style="width:100%"></td>
			<td width="20%"><input type="text" style="width:100%"></td>
			<td width="20%"><input type="text" style="width:100%"></td>
			<td width="20%" class="info_title"></td>
		</tr>
		<tr>
			<td width="20%" class="info_title">기타</td>
			<td width="80%" colspan="5"><input type="text" style="width:100%"></td>
		</tr>
	</table>
	<p style="text-align:center;margin:30px 0 40px 0 ">
	<button type="button" id="btn-add-nodes" class="signbtn">등록하기</button>
	<button type="button" id="btn-delete-nodes" class="signbtn">등록취소</button>
	</p>
</form>
</div>