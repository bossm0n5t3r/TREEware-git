<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="card" align="center">
	<div class="card-header">
		<div class="card-title" align="left">9월 근무현황</div>
	</div>
	<div id="clockstatus" style="width:100%;margin:10px 0">
	 	이전 다음
		<table class="table table-hover" style="width:100%;text-align:center">
			<tr>
				<th width="10%" style="text-align:center">1</th>
				<th width="10%" style="text-align:center">토</th>
				<th width="10%" style="text-align:center">출근</th>
				<th width="10%" style="text-align:center">퇴근</th>
				<th width="10%" style="text-align:center">외근</th>
				<th width="10%" style="text-align:center">출장</th>
				<th width="10%" style="text-align:center">연차</th>
				<th width="10%" style="text-align:center">휴가</th>
				<th width="20%" style="text-align:center">비고</th>
			</tr>
			<% for(int i=0 ; i<30 ; i++){ %>
			<tr>
				<td><%=i%></td>
				<td>일</td>
				<td>09:00</td>
				<td>17:00</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
			</tr>
			<%} %>
		</table>
	</div>
</div>
