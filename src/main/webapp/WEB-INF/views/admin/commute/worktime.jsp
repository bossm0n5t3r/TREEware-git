<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(document).ready(function commuteDate(){
	var dt = new Date();
	//Display the month, day, and year. getMonth() returns a 0-based number.
	var month = dt.getMonth()+1;
	var day = dt.getDate();
	var year = dt.getFullYear();
	document.getElementById("commuteDate").innerHTML = (year + '년 ' + month + '월 ' + day + '일');
});
</script>
<div class="card" align="center">
	<div class="card-header">
		<div class="card-title" align="left"><span id="commuteDate"></span></div>
	</div>
	<div id="clockstatus" style="width:100%;margin:10px 0">
	 	<이전>&emsp;<다음>
		<table class="table table-hover" style="width:100%;text-align:center">
			<tr>
				<th width="10%" style="text-align:center">
				<div class="form-check" >
					<label class="form-check-label">
						<input class="form-check-input  select-all-checkbox" type="checkbox" data-select="checkbox" data-target=".task-select">
						<span class="form-check-sign"></span>
					</label>
				</div>
				</th>
				<th width="10%" style="text-align:center">이름</th>
				<th width="15%" style="text-align:center">부서</th>
				<th width="10%" style="text-align:center">직책</th>
				<th width="10%" style="text-align:center">직급</th>
				<th width="5%" style="text-align:center">출근</th>
				<th width="5%" style="text-align:center">퇴근</th>
				<th width="5%" style="text-align:center">외출</th>
				<th width="5%" style="text-align:center">외근</th>
				<th width="5%" style="text-align:center">복귀</th>
				<th width="25%" style="text-align:center">비고</th>
			</tr>
			<% for(int i=0 ; i<30 ; i++){ %>
			<tr>
				<td>
				<div class="form-check">
					<label class="form-check-label">
						<input class="form-check-input task-select" type="checkbox">
						<span class="form-check-sign"></span>
					</label>
				</div>
				</td>
				<td>김고은</td>
				<td>응용 소프트웨어 개발팀</td>
				<td>-</td>
				<td>부장</td>
				<td>08:00</td>
				<td>21:00</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
			</tr>
			<%} %>
		</table>
	</div>
</div>
