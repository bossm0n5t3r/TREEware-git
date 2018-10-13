<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/import.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>

	<!-- 삭제 Modal -->
  <div class="modal fade" id="dropmodal">
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
          	삭제되었습니다. <br><br>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">닫기</button>
        </div>
        
      </div>
    </div>
  </div>
  
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
        <button type="button" class="btn btn-secondary btn-sm" onclick="">확인</button>
          <button type="button" class="btn btn-outline-secondary btn-sm" data-dismiss="modal">닫기</button>
        </div>
        
      </div>
    </div>
  </div>
  
  	<!-- 메일함 추가 Modal -->
  <div class="modal fade" id="addmodal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <font size=3 class="modal-title"><i class="la la-plus-square"> 메일함 추가</i></font>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
       
        <!-- Modal body -->
        <div class="modal-body" style="text-align:center;">
 	        <br>새 메일함 이름을 입력해주세요.<br><br>
 	       <div style="width:100%; text-align:center;">
				<div style="width:300px; margin:0 auto;">
         			 <input id="mailboxname" type="text" class="form-control" style="width:300px;">
          		</div>
          </div>
        </div>
        <br>
        <!-- Modal footer -->
        <div class="modal-footer" >
        <button type="button" class="btn btn-secondary btn-sm" onclick="">확인</button>
          <button type="button" class="btn btn-outline-secondary btn-sm" data-dismiss="modal">닫기</button>
        </div>
        
      </div>
    </div>
  </div>
</body>
</html>