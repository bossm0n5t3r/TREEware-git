var root;

var punchInTime;
var workOutTime;
var comeBackTime;
var punchOutTime;

var currentMonth;

function setRoot(data) {
	root = data;
}

function livetime() {
	$.ajax({
		type : "GET"
		,url : root + "/member/commute/livetime.tree"
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
		,url : root + "/member/commute/today.tree"
		,dataType : "json"
		,success : function(data) {
			$("#today_kor").text(data.TODAY_KOR);
			$("#gtw").text(data.CMT_STR_TM);
			$("#osw").text(data.CMT_WOUT_TM);
			$("#cbw").text(data.CMT_CB_TM);
			$("#ofw").text(data.CMT_END_TM);
			savePunchInTime(data.CMT_STR_TM);
			saveWorkOutTime(data.CMT_WOUT_TM);
			saveComeBackTime(data.CMT_CB_TM);
			savePunchOutTime(data.CMT_END_TM);
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

function punchInClick() {
	$("#punchInBtn").click(function() {
		if (punchOutTime == "-" || punchOutTime.trim().length == 1) {
			punchIn();
		} else {
			alert("이미 퇴근했습니다.");
			return;
		}
	});
}

function workOutClick() {
	$("#workOutBtn").click(function() {
		if (punchInTime == "-" || punchInTime.trim().length == 1) {
			alert("출근하지 않았습니다.");
			return;
		} else if (punchOutTime == "-" || punchOutTime.trim().length == 1) {
			workOut();
		} else {
			alert("이미 퇴근했습니다.");
			return;
		}
	});
}

function comeBackClick() {
	$("#comeBackBtn").click(function() {
		if (punchInTime == "-" || punchInTime.trim().length == 1) {
			alert("출근하지 않았습니다.");
			return;
		} else if (workOutTime == "-" || workOutTime.trim().length == 1) {
			alert("외근하지 않았습니다.");
			return;			
		} else if (punchOutTime == "-" || punchOutTime.trim().length == 1) {
			comeBack();
		} else {
			alert("이미 퇴근했습니다.");
			return;
		}
	});
}

function punchOutClick() {
	$("#punchOutBtn").click(function() {
		if (confirm("정말 퇴근하시겠습니까?")) {
			if (punchInTime == "-" || punchInTime.trim().length == 1) {
				alert("출근하지 않았습니다.");
				return;
			} else if (punchOutTime == "-" || punchOutTime.trim().length == 1) {
				punchOut();
			} else {
				alert("이미 퇴근했습니다.");
				return;
			}
		}
	});
}

function punchIn() {
	$.ajax({
		type : "GET"
		,url : root + "/member/commute/punchIn.tree"
		,dataType : "json"
		,success : function(data) {
			savePunchInTime(data.CMT_STR_TM);
			status();
			getStatics();
			workStatus();
		}
		,error : function(e) {
			
		}
	})
}

function workOut() {
	$.ajax({
		type : "GET"
		,url : root + "/member/commute/workOut.tree"
		,dataType : "json"
		,success : function(data) {
			saveWorkOutTime(data.CMT_WOUT_TM);
			status();
			getStatics();
			workStatus();
		}
		,error : function(e) {
			
		}
	})
}

function comeBack() {
	$.ajax({
		type : "GET"
		,url : root + "/member/commute/comeBack.tree"
		,dataType : "json"
		,success : function(data) {
			saveComeBackTime(data.CMT_CB_TM);
			status();
			getStatics();
			workStatus();
		}
		,error : function(e) {
			
		}
	})
}

function punchOut() {
	$.ajax({
		type : "GET"
		,url : root + "/member/commute/punchOut.tree"
		,dataType : "json"
		,success : function(data) {
			savePunchOutTime(data.CMT_END_TM);
			status();
			getStatics();
			workStatus();
		}
		,error : function(e) {
			
		}
	})
}

function savePunchInTime(data) {
	punchInTime = data;
}

function saveWorkOutTime(data) {
	workOutTime = data;
}

function saveComeBackTime(data) {
	comeBackTime = data;
}

function savePunchOutTime(data) {
	punchOutTime = data;
}

function getStatics() {
	$.ajax({
		type : "GET"
		,url : root + "/member/commute/statics.tree"
		,dataType : "json"
		,success : function(data) {
			$("#avgStartTime").text(data.avgStartTime);
			$("#avgEndTime").text(data.avgEndTime);
		}
		,error : function(e) {
			
		}
	})
}

function workStatus() {
	var currentMonth;
	$.ajax({
		type : "GET"
		,url : root + "/member/commute/workStatus.tree"
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
								  		   .append($("<td></td>").text(commutes[j].CMT_STR_TM))
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

function beforeClick() {
	$("#before").click(function(){
		$.ajax({
			type : "GET"
			,url : root + "/member/commute/workStatus.tree"
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
}


function afterClick() {
	$("#after").click(function(){
		$.ajax({
			type : "GET"
			,url : root + "/member/commute/workStatus.tree"
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
}
