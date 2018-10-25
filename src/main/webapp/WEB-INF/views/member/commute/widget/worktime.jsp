<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="card" align="center">
	<div class="card-header">
		<div class="card-title" align="left" id="workStatus"></div>
	</div>
	<div id="clockstatus" style="width:100%;margin:10px 0">
	 	<div id="before" style="width:10%;float:left;height:30px;text-align:center">이전</div>
	 	<div id="after" style="width:10%;float:right;height:30px;text-align:center">다음</div>
<!-- 	 	<button id="before" class="btn btn-primary" style="float:left">이전</button> -->
<!-- 	 	<button id="after" class="btn btn-primary" style="float:right">다음</button> -->
		<table class="table table-hover" style="width:100%;text-align:center">
			<tr>
				<th width="10%" style="text-align:center">날짜</th>
				<th width="10%" style="text-align:center">요일</th>
				<th width="20%" style="text-align:center">출근</th>
				<th width="20%" style="text-align:center">퇴근</th>
				<th width="20%" style="text-align:center">외근</th>
<!-- 				<th width="10%" style="text-align:center">출장</th> -->
<!-- 				<th width="10%" style="text-align:center">연차</th> -->
<!-- 				<th width="10%" style="text-align:center">휴가</th> -->
				<th width="20%" style="text-align:center">비고</th>
			</tr>
			<tbody id="listView"></tbody>
		</table>
	</div>
</div>
