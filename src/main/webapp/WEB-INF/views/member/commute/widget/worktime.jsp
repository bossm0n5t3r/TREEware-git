<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
var currentMonth;

$(document).ready(function(){
	workStatus();
	
	$("#before").click(function(){
		alert("currentMonth : " + currentMonth);
		$.ajax({
			type : "GET"
			,url : "${root}/member/commute/workStatus.tree"
			,data : {
				"month" : currentMonth,
				"type" : "before"
			}
			,dataType : "json"
			,success : function(data) {
				$("#workStatus").text(data.YEAR + "년 " + data.MONTH + "월 근무현황");
				makeList(data);
				takeMonth(data);
			}
			,error : function(e) {
				
			}
		})
	});
	
	$("#after").click(function(){
		alert("currentMonth : " + currentMonth);
		$.ajax({
			type : "GET"
			,url : "${root}/member/commute/workStatus.tree"
			,data : {
				"month" : currentMonth,
				"type" : "after"
			}
			,dataType : "json"
			,success : function(data) {
				$("#workStatus").text(data.YEAR + "년 " + data.MONTH + "월 근무현황");
				makeList(data);
				takeMonth(data);
			}
			,error : function(e) {
				
			}
		})
	});
	
})

function workStatus() {
	var currentMonth;
	$.ajax({
		type : "GET"
		,url : "${root}/member/commute/workStatus.tree"
		,dataType : "json"
		,data : {
			"month" : 0,
			"type" : "current"
		}
		,success : function(data) {
			$("#workStatus").text(data.YEAR + "년 " + data.MONTH + "월 근무현황");
			makeList(data);
			takeMonth(data);
		}
		,error : function(e) {
			
		}
	});
}

function takeMonth(data) {
	currentMonth = data.MONTH;
}

function makeList(data) {
	$("#listView").empty();
	var commutes = data.commuteList;
	for (var i = 1; i <= data.MAX_DATE; i++) {
		if (commutes.length != 0) {
			for (var j = 0; j < commutes.length; j++) {
				if (i == commutes[j].DATE) {
					var tr = $("<tr></tr>").append($("<td></td>").text(commutes[j].DATE))
								 		   .append($("<td></td>").text(commutes[j].DAY))
								  		   .append($("<td></td>").text(commutes[j].CMT_SRT_TM))
								  		   .append($("<td></td>").text(commutes[j].CMT_END_TM))
								  		   .append($("<td></td>").text(commutes[j].CMT_WOUT_TM))
								  		   // 출장, 연차, 휴가, 비고
								  		   .append($("<td></td>").text("-"))
										   .append($("<td></td>").text("-"))
										   .append($("<td></td>").text("-"))
										   .append($("<td></td>").text("-"))
					break;
				} else {
					var tr = $("<tr></tr>").append($("<td></td>").text(i))
								 		   .append($("<td></td>").text("-"))
								  		   .append($("<td></td>").text("-"))
								  		   .append($("<td></td>").text("-"))
								  		   .append($("<td></td>").text("-"))
								  		   // 출장, 연차, 휴가, 비고
								  		   .append($("<td></td>").text("-"))
										   .append($("<td></td>").text("-"))
										   .append($("<td></td>").text("-"))
										   .append($("<td></td>").text("-"))
				}
			}
		} else {
			var tr = $("<tr></tr>").append($("<td></td>").text(i))
	 		   .append($("<td></td>").text("-"))
	  		   .append($("<td></td>").text("-"))
	  		   .append($("<td></td>").text("-"))
	  		   .append($("<td></td>").text("-"))
	  		   // 출장, 연차, 휴가, 비고
	  		   .append($("<td></td>").text("-"))
			   .append($("<td></td>").text("-"))
			   .append($("<td></td>").text("-"))
			   .append($("<td></td>").text("-"))
		}
		$("#listView").append(tr);
	}
}

</script>
<div class="card" align="center">
	<div class="card-header">
		<div class="card-title" align="left" id="workStatus"></div>
	</div>
	<div id="clockstatus" style="width:100%;margin:10px 0">
	 	<button id="before">이전</button> <button id="after">다음</button>
		<table class="table table-hover" style="width:100%;text-align:center">
			<tr>
				<th width="10%" style="text-align:center">날짜</th>
				<th width="10%" style="text-align:center">요일</th>
				<th width="10%" style="text-align:center">출근</th>
				<th width="10%" style="text-align:center">퇴근</th>
				<th width="10%" style="text-align:center">외근</th>
				<th width="10%" style="text-align:center">출장</th>
				<th width="10%" style="text-align:center">연차</th>
				<th width="10%" style="text-align:center">휴가</th>
				<th width="20%" style="text-align:center">비고</th>
			</tr>
			<tbody id="listView"></tbody>
		</table>
	</div>
</div>
