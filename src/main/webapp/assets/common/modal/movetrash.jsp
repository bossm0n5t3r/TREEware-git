<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	$("#closeBtn").click(function(){
		$(location).attr("href", "${root}/member/mail/sendmailbox.tree");
	});
});
</script>

</head>
<body>
	<!-- 삭제 Modal -->
  <div class="modal fade" id="movetrashmodal">
    <div class="modal-dialog modal-dialog-centered modal-sm">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <font size="3" class="modal-title"><i class="la la-bell"> 알림</i></font>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" style="text-align:center;">
        <br>
          	메일을 휴지통으로 이동했습니다. <br><br>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button id="closeBtn" type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">닫기</button>
        </div>
        
      </div>
    </div>
  </div>
</body>
</html>