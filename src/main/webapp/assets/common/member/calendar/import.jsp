<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 캘린더 import -->
<script type="text/javascript" src="${root}/assets/js/moment.min.js"></script>
<script type="text/javascript" src="${root}/assets/js/fullcalendar/fullcalendar.min.js"></script>
<script type="text/javascript" src="${root}/assets/js/fullcalendar/gcal.js"></script>
<link href="${root}/assets/css/fullcalendar.min.css" rel="stylesheet" />
<script type="text/javascript">
var scheduleList;
var scheduleDivideList;

$(document).ready(function() {
	getList();
	
	$("#calendar").fullCalendar({
       	
		defaultDate : new Date()
		, color : '#FFFFFF'
		, titleFormat : 'YYYY년 M월'
		, columnFormat : 'ddd'
		, monthNames : ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"]
		, monthNamesShort : ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"]
		, dayNames : ["일요일","월요일","화요일","수요일","목요일","금요일","토요일"]
		, dayNamesShort : ["일","월","화 ","수 ","목 ","금 ","토 "]
		, buttonText : {
			today : "오늘"
		}
		, editable : true
		, eventLimit : true
		, dayClick : function(date) {
			cleanSchedule();
			getScdDivList();
			$("#register .scd_sday").val(date.format());
			$("#register").modal({backdrop: 'static'});
		}
		, eventClick: function(event) {
			cleanSchedule();
			getScdDivList();
	    	// 수정모달에 데이터 집어넣기
	    	$("#modify .scd_sq").val(event.id);
	    	$("#modify .scd_nm").val(event.subject);
	    	$("#modify .scd_div_sq option:eq("+ event.div +")").attr("selected", "selected");
	    	$("#modify .scd_sday").val(new Date(event.start).toISOString().slice(0, 10));
	    	if (event.end == null) {
	    		$("#modify .scd_eday").val(new Date(event.start).toISOString().slice(0, 10));
	    	} else {
		    	$("#modify .scd_eday").val(new Date(event.end).toISOString().slice(0, 10));	    		
	    	}
	    	$("#modify .scd_dct").val(event.content);
	    	$("#modify").modal({backdrop: 'static'});
		}
		// 구글 캘린더를 사용하기 위한 ApiKey - 지훈
		// https://fullcalendar.io/docs/google-calendar
		, googleCalendarApiKey: 'AIzaSyCoSzL9_Raphwupf46XPGJmHcNSJhRA1M0'
		, eventSources: [
			// 구글 공휴일 캘린더 소스 적용
			{
				googleCalendarId: "ko.south_korea#holiday@group.v.calendar.google.com"
				,className: "대한민국 공휴일"
				,color: "#FF0000"
				,textColor: "#FFFFFF"
			}
		]
	});
});

// 일정 등록하기
$(document).on("click", "#registerBtn", function() {
	if ($("#register .scd_nm").val() == '') {
		alert('제목이 없습니다');
		return;
	} else if ($("#register .scd_div_sq").val() == null) {
		alert('일정 종류를 선택해주세요.');
		return;
	} else if ($("#register .scd_sday").val() == '' || $("#register .scd_eday").val() == '') {
		alert('날짜가 완전하지 않습니다.');
		return;
	} else if ($("#register .scd_sday").val() == $("#register .scd_eday").val()) {
		alert('시작일과 종료일이 같을 수 없습니다.');
		return;
	} else {
		var startDate = $("#register .scd_sday").val();
		var endDate = $("#register .scd_eday").val();
		if(startDate > endDate) {
			alert("종료일이 시작일 보다 빠를 수 없습니다.");
			return;
		}
		$.ajax({
			type : "POST"
			,url : "${root}/member/calendar/register.tree"
			,dataType : "json"
			,data : {
				"scd_div_sq" : $("#register .scd_div_sq").val()
				,"emp_sq" : "${userInfo.emp_sq}"
				,"scd_nm" : $("#register .scd_nm").val()
				,"scd_pst" : $("#register .scd_pst").val()
				,"scd_sday" : $("#register .scd_sday").val()
				,"scd_eday" : $("#register .scd_eday").val()
				,"scd_dct" : $("#register .scd_dct").val()
			}
			,success : function(data) {
				addList(data);
			}
		});
	}
});

// 일정 수정하기
$(document).on("click", "#modifyBtn", function() {
	if ($("#modify .scd_nm").val() == '') {
		alert('제목이 없습니다');
		return;
	} else if ($("#modify .scd_div_sq").val() == null) {
		alert('일정 종류를 선택해주세요.');
		return;
	} else if ($("#modify .scd_sday").val() == '' || $("#modify .scd_eday").val() == '') {
		alert('날짜가 완전하지 않습니다.');
		return;
	} else {
		var startDate = $("#modify .scd_sday").val();
		var endDate = $("#modify .scd_eday").val();
		if(startDate > endDate) {
			alert("종료일이 시작일 보다 빠를 수 없습니다.");
			return;
		}
		if (confirm("수정하시겠습니까?")) {
			$.ajax({
				type : "POST"
				,url : "${root}/member/calendar/modify.tree"
				,dataType : "json"
				,data : {
					"scd_sq" : $("#modify .scd_sq").val()
					,"scd_div_sq" : $("#modify .scd_div_sq").val()
					,"emp_sq" : "${userInfo.emp_sq}"
					,"scd_nm" : $("#modify .scd_nm").val()
					,"scd_pst" : $("#modify .scd_pst").val()
					,"scd_sday" : $("#modify .scd_sday").val()
					,"scd_eday" : $("#modify .scd_eday").val()
					,"scd_dct" : $("#modify .scd_dct").val()
				}
				,success : function(data) {
					modifySchedule();
				}
				,error : function() {

				}
			});	
		} else {
			return;
		}
	}
});

// 일정목록 수정하기
function modifySchedule() {
	// 기존의 리스트를 불러와서 삭제
	clearCalendar();
	getList();
}

// 일정 삭제하기
$(document).on("click", "#deleteBtn", function() {
	if (confirm("삭제하시겠습니까?")) {
		$.ajax({
			type : "GET"
			,url : "${root}/member/calendar/delete.tree"
			,dataType : "json"
			,data : {
				"scd_sq" : $("#modify .scd_sq").val()
			}
			,success : function(data) {
				deleteSchedule(data.SCD_SQ);
			}
			,error : function() {

			}
		});	
	} else {
		return;
	}
});

function deleteSchedule(data) {
	$('#calendar').fullCalendar('removeEvents', data);
}

// 등록한 일정 화면에 보여주기
function addList(data) {

	// 이벤트마다 색 설정
	var scolor= "";
	// 휴가, 파랑
	if(data.scd_div_sq == 1){
		scolor= "#3399ff";
	// 출장, 주황
	} else if(data.scd_div_sq == 2){
		scolor= "#ff9900";
	// 회의, 노랑
	} else if(data.scd_div_sq == 3){
		scolor= "#efc050";
	// 사내행사, 하늘
	} else if(data.scd_div_sq == 4){
		scolor= "#33ccff";
	// 연차, 초록
	} else if(data.scd_div_sq == 5){
		scolor= "#006600";
	// 반차, 연두
	} else if(data.scd_div_sq == 6){
		scolor= "#33ff00";
	// 병가, 회색
	} else if(data.scd_div_sq == 7){
		scolor= "gray";
	// 교육, 선명한청록색
	} else if(data.scd_div_sq == 8){
		scolor= "#36BC9B";
	}

	// 이벤트 추가
	$('#calendar').fullCalendar('addEventSource', [{
        id: data.scd_sq,
        title: "["+data.scd_div_nm+"]"+data.scd_nm,
        start: data.scd_sday,
        end: data.scd_eday,
        color: scolor,
        textColor: 'white',
        content: data.scd_dct,
        div: data.scd_div_sq, 
        subject: data.scd_nm
    }]);
}

// 전체 일정 가져오기
function getList() {
	$.ajax({
		type : "GET"
		,url : "${root}/admin/calendar/getList.tree"
		,dataType : "json"
		,data : {
			"emp_sq" : "${userInfo.emp_sq}"
		}
		,success : function(data) {
			makeList(data);
		}
		,error : function(e) {
			
		}
	})
}

// 전체 일정 화면에 보여주기
function makeList(data) {
	var slist = data.scheduleList;
	scheduleList = slist;
	for(var i = 0; i < scheduleList.length; i++){
		// 이벤트마다 색 설정
		var scolor= "";
		// 휴가, 파랑
		if(scheduleList[i].scd_div_sq == 1){
			scolor= "#3399ff";
		// 출장, 주황
		} else if(scheduleList[i].scd_div_sq == 2){
			scolor= "#ff9900";
		// 회의, 노랑
		} else if(scheduleList[i].scd_div_sq == 3){
			scolor= "#efc050";
		// 사내행사, 하늘
		} else if(scheduleList[i].scd_div_sq == 4){
			scolor= "#33ccff";
		// 연차, 초록
		} else if(scheduleList[i].scd_div_sq == 5){
			scolor= "#006600";
		// 반차, 연두
		} else if(scheduleList[i].scd_div_sq == 6){
			scolor= "#33ff00";
		// 병가, 회색
		} else if(scheduleList[i].scd_div_sq == 7){
			scolor= "gray";
		// 교육, 선명한청록색
		} else if(scheduleList[i].scd_div_sq == 8){
			scolor= "#36BC9B";
		}

		// 이벤트 추가
		$('#calendar').fullCalendar('addEventSource', [{
	        id: scheduleList[i].scd_sq,
	        title: "["+scheduleList[i].scd_div_nm+"]"+scheduleList[i].scd_nm,
	        start: scheduleList[i].scd_sday,
	        end: scheduleList[i].scd_eday,
	        color: scolor,
	        textColor: 'white',
	        content: scheduleList[i].scd_dct,
	        div: scheduleList[i].scd_div_sq, 
	        subject: scheduleList[i].scd_nm
	    }]);
	}
}

function clearCalendar() {
	for(var i=0; i < scheduleList.length; i++){
		$('#calendar').fullCalendar('removeEvents', scheduleList[i].scd_sq);
	}
}

// 일정 분류 가져오기
function getScdDivList() {
	$.ajax({
		type : "GET"
		,url : "${root}/admin/calendar/getScdDivList.tree"
		,dataType : "json"
		,success : function(data) {
			makeDivList(data);
		}
		,error : function(e) {
			
		}
	})
}

// 일정 분류를 등록하기 화면에서 보여주기
function makeDivList(data) {
	$(".scd_div_sq").empty();
	var sdivlist = data.scheduleDivList;
	scheduleDivideList = sdivlist;
	$(".scd_div_sq").append("<option value='0' selected='selected' disabled>일정분류선택</option>");
	for (var i = 0; i < scheduleDivideList.length; i++) {
		var option = $("<option></option>").attr("value", scheduleDivideList[i].SCD_DIV_SQ)
										   .text(scheduleDivideList[i].SCD_DIV_NM);
		$(".scd_div_sq").append(option);
	}
}

// 기존에 입력한 값을 새로운 창 뜰 때 지우는 과정
function cleanSchedule() {
	$("#register .scd_nm").val('');
	$("#register .scd_sday").val('');
	$("#register .scd_eday").val('');
	$("#register .scd_pst").val('');
	$("#register .scd_dct").val('');
}
</script>
