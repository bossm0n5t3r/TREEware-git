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
		, dayNamesShort : ["일","월","화 ","수 ","목 ","금 ","토 "]      ///한글로변환
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
	    	console.log("id : " + event.id);
	    	console.log("sname : " + event.sname);
	    	console.log("subject : " + event.subject);
	    	console.log("start : " + event.start);
	    	console.log(new Date(event.start).toISOString());
	    	console.log("end : " + event.end);
	    	console.log(new Date(event.end).toISOString());
	    	console.log("content : " + event.content);
	    	$("#modify .scd_sq").val(event.id);
	    	$("#modify .scd_div_sq").val(event.sname);
	    	$("#modify .scd_nm").val(event.subject);
	    	$("#modify .scd_sday").text(new Date(event.start).toISOString());
	    	$("#modify .scd_eday").text(new Date(event.end).toISOString());
	    	$("#modify .scd_dct").val(event.content);
	    	$("#modify").modal({backdrop: 'static'});
// 	    	$("#pid").val(event.id);
// 	    	$("#pselect").text(event.sname);
//         	$("#psubject").text(event.subject);
        	
    		//alert(event.end);
        	
        	// Fri Aug 31 2018 09:00:00 GMT+0000 > 기본형
        	// new Date(event.start).toISOString() > format 바꾸기
        	// 2018-08-31T09:00:00.000Z > 바뀐 format
//         	if($("#pselect").text()== "출장" ||$("#pselect").text()== "병가" || $("#pselect").text()== "연차"){
//         		$("#pstart").text(new Date(event.start).toISOString().slice(0, 10));
//         		$("#pend").text(new Date(event.end).toISOString().slice(0, 10));
//         	} else {
// 				$("#pstart").text(new Date(event.start).toISOString().slice(0, 10) + " "+ new Date(event.start).toISOString().slice(11, 19));
	        	
	        	//$("#pend").text(moment(event.end).format('YYYY-MM-DD hh:mm:ss'));
// 	        	$("#pend").text(new Date(event.end).toISOString().slice(0, 10) + " "+ new Date(event.end).toISOString().slice(11, 19));
//         	}
        	
//         	$("#pcontent").html(event.content);
        	
// 	    	$("#dayModal").modal();	
	    	
	    	/* fullcalendar date format 바꾸는법
	    	alert("start date edit >> "+ (new Date(event.start).toISOString()));
	    	alert("end date edit >> "+ (new Date(event.end).toISOString()));
	    	*/
	    	
		    //event.title = "CLICKED!";
		    //$('#calendar').fullCalendar('updateEvent', event);
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

// 일정등록하기
$(document).on("click", "#registerBtn", function() {
	if ($("#register .scd_nm").val() == '') {
		alert('제목이 없습니다');
		return;
	} else if ($("#register #scd_div_sq").val() == null) {
		alert('일정 종류를 선택해주세요.');
		return;
	} else if ($("#register .scd_sday").val() == '' || $("#register .scd_eday").val() == '') {
		alert('날짜가 완전하지 않습니다.');
		return;
	} else {
		var startDate = $("#register .scd_sday").val();
		var startTime = $("#register .scd_stime").val();
		var endDate = $("#register .scd_eday").val();
		var endTime = $("#register .scd_etime").val();
		if(startDate+ " "+ startTime > endDate+ " "+ endTime) {
			alert("종료일이 시작일 보다 빠를 수 없습니다.");
			return;
		}
		$("#register #registerForm").attr("method", "POST")
									.attr("action", "${root}/member/calendar/register.tree")
									.submit();
	}
});

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
        content: data.scd_dct,
        sname: data.scd_div_nm, 
        subject: data.scd_nm,
        color: scolor,
        textColor: 'white'
    }]);
}

// 전체 일정 가져오기
function getList() {
	$.ajax({
		type : "GET"
		,url : "${root}/admin/calendar/getList.tree"
		,dataType : "json"
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
	for(var i=0; i<scheduleList.length; i++){
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
	        content: scheduleList[i].scd_dct,
	        sname: scheduleList[i].scd_div_nm, 
	        subject: scheduleList[i].scd_nm,
	        color: scolor,
	        textColor: 'white'
	    }]);
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
	$("#register .scd_stime").val('');
	$("#register .scd_eday").val('');
	$("#register .scd_etime").val('');
	$("#register .scd_pst").val('');
	$("#register .scd_dct").val('');
}
</script>
