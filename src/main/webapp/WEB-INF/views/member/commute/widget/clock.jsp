<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
#liveclock {
	font-size: 400%;
	margin: 40px 0;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	livetime();	
	status();
	$("#punchInBtn").click(function() {
		punchIn();
		$("#punchInBtn").attr("class", "nav-link active");
		location.reload();
	});
	$("#workOutBtn").click(function() {
		workOut();
		$("#workOutBtn").attr("class", "nav-link active");
		location.reload();
	});
	$("#comeBackBtn").click(function() {
		comeBack();
		$("#comeBackBtn").attr("class", "nav-link active");
		location.reload();
	});
	$("#punchOutBtn").click(function() {
		if (confirm("정말 퇴근하시겠습니까?")) {
			punchOut();
			$("#punchOutBtn").attr("class", "nav-link active");
			location.reload();			
		}
	});
})

function livetime() {
	$.ajax({
		type : "GET"
		,url : "${root}/member/commute/livetime.tree"
		,dataType : "json"
		,success : function(data) {
			$("#liveclock").html(data.time);
			setTimeout("livetime()", 1000);
		}
		,error : function(e) {
			
		}
	})
}

function status() {
	$.ajax({
		type : "GET"
		,url : "${root}/member/commute/today.tree"
		,dataType : "json"
		,success : function(data) {
			$("#today_kor").text(data.TODAY_KOR);
			$("#gtw").text(data.CMT_STR_TM);
			$("#osw").text(data.CMT_WOUT_TM);
			$("#cbw").text(data.CMT_CB_TM);
			$("#ofw").text(data.CMT_END_TM);
			if (data.CMT_STR_TM != "-") {
				$("#punchInBtn").attr("class", "nav-link active");
			}
			if (data.CMT_WOUT_TM != "-") {
				$("#workOutBtn").attr("class", "nav-link active");
			}
			if (data.CMT_CB_TM != "-") {
				$("#comeBackBtn").attr("class", "nav-link active");
			}
			if (data.CMT_END_TM != "-") {
				$("#punchOutBtn").attr("class", "nav-link active");
			}
		}
		,error : function(e) {
			
		}
	})
}

function punchIn() {
	$.ajax({
		type : "GET"
		,url : "${root}/member/commute/punchIn.tree"
		,dataType : "json"
		,success : function(data) {
			status();
		}
		,error : function(e) {
			
		}
	})
}

function workOut() {
	$.ajax({
		type : "GET"
		,url : "${root}/member/commute/workOut.tree"
		,dataType : "json"
		,success : function(data) {
			status();
		}
		,error : function(e) {
			
		}
	})
}

function comeBack() {
	$.ajax({
		type : "GET"
		,url : "${root}/member/commute/comeBack.tree"
		,dataType : "json"
		,success : function(data) {
			status();
		}
		,error : function(e) {
			
		}
	})
}

function punchOut() {
	$.ajax({
		type : "GET"
		,url : "${root}/member/commute/punchOut.tree"
		,dataType : "json"
		,success : function(data) {
			status();
		}
		,error : function(e) {
			
		}
	})
}
</script>
<div class="card" align="center">
	<div class="card-header">
		<div class="card-title" align="left">근무상태</div>
	</div>
	<div id="clockbtn" style="width: 80%; margin: 10px 0">
		<ul class="nav nav-pills nav-justified">
			<li class="nav-item"><a class="nav-link" id="punchInBtn">출근</a></li>
			<li class="nav-item"><a class="nav-link" id="workOutBtn">외근</a></li>
			<li class="nav-item"><a class="nav-link" id="comeBackBtn">복귀</a></li>
			<li class="nav-item"><a class="nav-link" id="punchOutBtn">퇴근</a>
			</li>
		</ul>
	</div>
	<!-- 시계 -->
	<span id="liveclock"></span>
	<!-- 시계끝 -->

	<div id="clockstatus" style="width: 80%">
		<table class="table" style="width: 100%; text-align: center">
			<tr>
				<th colspan="2" width="100%" style="text-align: center" id="today_kor"></th>
			</tr>
			<tr>
				<td width="30%">출근</td>
				<td id="gtw" width="90%"></td>
			</tr>
			<tr>
				<td>외근</td>
				<td id="osw"></td>
			</tr>
			<tr>
				<td>복귀</td>
				<td id="cbw"></td>
			</tr>
			<tr>
				<td>퇴근</td>
				<td id="ofw"></td>
			</tr>

		</table>
	</div>
	<!-- JavaScript Includes -->
	<%-- <script src="${root}/assets/js/plugin/clock/clock.js"></script> --%>
</div>
