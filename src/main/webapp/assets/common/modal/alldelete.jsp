<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	$("#deleteokBtn").click(function(){
		$.ajax({
			type : "GET",
			url : "${root}/member/mail/deleteall.tree",
			data : {
				"ml_grp_sq" : 3,
				"emp_sq" : "${userInfo.emp_sq}"
			},
			success : function(response) {
				$(location).attr("href", "${root}/member/mail/trashmailbox.tree");
			},
			error : function(e) {
				alert('Error: ' + e);
			}
		});
		return;
	});
// 		$("#commonform").attr("action", "${root}/member/mail/deleteall.tree").submit();

// 	});
});

	</script>

</head>
<body>

	<form name="commonform" id="commonform">
		<input type="hidden" name="ml_grp_sq" id="ml_grp_sq" value=3>	
		<input type="hidden" name="emp_sq" id="emp_sq" value="${userInfo.emp_sq}">
	</form>

	<!-- 휴지통 비우기 Modal -->
  <div class="modal fade" id="alldropmodal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
       <!-- Modal Header -->
        <div class="modal-header">
          <font size="3" class="modal-title"><i class="la la-bell"> 알림</i></font>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
       
        <!-- Modal body -->
        <div class="modal-body" style="text-align:center;">
        <br>
          	휴지통을 비우시면 메일 복구가 불가능합니다.<br><br>
          	휴지통을 비우시겠습니까?
          	<br><br>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
        <button id="deleteokBtn" type="button" class="btn btn-secondary btn-sm">확인</button>
          <button type="button" class="btn btn-outline-secondary btn-sm" data-dismiss="modal">닫기</button>
        </div>
        
      </div>
    </div>
  </div>
</body>
</html>