<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 캘린더 import -->
<script type="text/javascript" src="${root}/assets/js/moment.min.js"></script>
<script type="text/javascript" src="${root}/assets/js/fullcalendar/fullcalendar.min.js"></script>
<script type="text/javascript" src="${root}/assets/js/fullcalendar/gcal.js"></script>
<link href="${root}/assets/css/fullcalendar.min.css" rel="stylesheet"/>
	<script type="text/javascript">
	$(document).ready(function() {
        $("#calendar").fullCalendar({
        	
              defaultDate : new Date()
        	, color : '#FFFFFF'
        	, titleFormat: 'YYYY년 M월'
        	, columnFormat:'ddd',
              monthNames: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
              monthNamesShort: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
              dayNames: ["일요일","월요일","화요일","수요일","목요일","금요일","토요일"],
	           dayNamesShort: ["일","월","화 ","수 ","목 ","금 ","토 "],      ///한글로변환
	           buttonText: {
	            today : "오늘"
	           }
            , editable : true
            , eventLimit : true
//             , select: function(start, end) {
//                 $("#mySchedule .modal-title").html('일정을 입력하세요!');
//                 $('#mySchedule').modal('show');
                
//                 dt_start = moment(start).format('YYYY-MM-DD hh:mm');
//                 dt_end = moment(end).format('YYYY-MM-DD hh:mm');              //달력일자 선택시 작성화면 노출
//                }
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
            , events: [
                {
                      title : "너무 어려워요"
                    , textColor : "#000000"
                    , color : "#FFAAAA"
                    , start : "2018-09-01"
                    , end : "2018-09-29"
                }
            ]
        });
    });
</script>
    