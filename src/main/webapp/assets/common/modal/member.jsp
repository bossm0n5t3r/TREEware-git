<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
td{
	height:30px;
}
.list:hover {
	background-color:#eee;
}
</style>
   
<!-- 제이쿼리 모달창 -->
<div id="member" class="modal" align="center" style="height:400px">
	<p>사원을 검색해주세요</p>
	<input type="text" style="width:100%;height:30px;padding:5px">
	<div id="memberlist" style="padding:20px 0px">
		<table class="table" style="width:100%;padding:10px">
			<tr style="border-bottom:1px solid #eee">
				<td style="width:30%"><b>소속부서</b></td>
				<td style="width:15%"><b>직위</b></td>
				<td style="width:20%"><b>이름</b></td>
				<td style="width:35%"><b>연락처</b></td>
			</tr>
<!-- 			<tr class="list"> -->
<!-- 				<td colspan="4">검색 결과가 없습니다.</td> -->
<!-- 			</tr> -->
			<% for(int i=0 ; i<5 ; i++){ %>
			<tr class="list">
				<td>응용SW개발팀</td>
				<td>팀장</td>
				<td>김고은</td>
				<td>010-0000-0000</td>
			</tr>
			<%} %>
		</table>
	</div>
<!-- <p><a href="#" rel="modal:close">Close</a></p> -->
</div>