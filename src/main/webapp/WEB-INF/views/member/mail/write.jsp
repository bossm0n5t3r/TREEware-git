<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<%@ include file="/assets/common/member/board/import.jsp" %>
<link href="${root}/assets/js/plugin/summernote/summernote.css" rel="stylesheet">
<!-- <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.10/summernote.css" rel="stylesheet"> -->
<script src="${root}/assets/js/plugin/summernote/summernote.js"></script>
<!-- <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.10/summernote.js"></script> -->
<script type="text/javascript">

$(document).ready(function() {
    $('#content').summernote({
            height: 300,                 // set editor height
            minHeight: null,             // set minimum height of editor
            maxHeight: null,             // set maximum height of editor
            focus: true                  // set focus to editable area after initializing summernote
    });
});

$(document).ready(function() {
	
    $(".mailwritebtn").click(function(){
		if($("#receiver").val().trim().length==0){
			alert("받는 사람을 입력하세요!!!");
			return;
		}
		else if($("#title").val().trim().length==0){
			alert("제목을 입력하세요!!!");
			return;
		}
		else if($("#content").val().trim().length==0){
			alert("내용을 입력하세요!!!");
			return;
		}
		else{
			$("#mailwriteform").attr("action","${root}/member/mail/write.tree");
    		$("#mailwriteform").submit();
		}
	});
    $("#tome").change(function(){
        if($("#tome").is(":checked")){
            $("#receiver").attr("value","${userInfo.emp_ml_id}${userInfo.emp_ml_addr}");
        }else{
        	 $("#receiver").attr("value","");
        }
    });

});
</script>
</head>
<body>
   <div class="wrapper">
      	<%@ include file="/assets/common/top.jsp" %>
		<%@ include file="/assets/common/member/mail/side.jsp"%>
      <div class="main-panel">
         <div class="content">
            <div class="card">
				<div class="card-header">
            <form id="mailwriteform" name="mailwriteform" action="" method="post">
            <input type="hidden" name="emp_sq" value="${userInfo.emp_sq}">
               <div class="form-group">
                 <div id="mailwritebtn" class="card-title" style="margin-left: 15px">
						메일쓰기 </div><br>
                  <div class="btn-group">
                  <button id="" class="mailwritebtn btn btn-info btn-sm">보내기</button>&nbsp;
                  <button class="btn btn-default btn-sm">미리보기</button>&nbsp;
                  <button class="btn btn-default btn-sm">다시쓰기</button>&nbsp;
                  </div>
                  <br>
               <table width="100%">
                  <tr>
                     <td style="width:70px">받는사람</td>
                     <td style="width:80px"><div style="margin-top:10px"><label class="form-check-label">
                                    <input id="tome" name="tome" class="form-check-input" type="checkbox" value="">
                                    <span class="form-check-sign">나에게</span>
                                 </label>
                                 </div>
                     </td>
                     <td><input id="receiver" name="receiver" type="text" class="form-control"  placeholder="이메일을 입력하세요" style="width:100%"></td>   
                  </tr>
                     <tr>
                     <td colspan="2">제목</td>
                     <td><input id="title" name="title" type="text" class="form-control" placeholder="제목을 입력하세요" style="width:100%"></td>   
                  </tr>
              
                     <tr>
                     <td colspan="2">첨부파일 </td>
                     <td><input name="file" type="file" style="width:200px">
                        <button class="btn btn-default btn-sm">삭제</button>
                     </td>   
                  </tr>
                  </table>
               <br>                                        
   
                  <textarea name="content" id="content" rows="20" style="width:100%"></textarea>
                <br>
                <button id="" class="mailwritebtn btn btn-info btn-sm" onclick="">보내기</button>
                
                </div>              
            </form>
         </div>
      <%@ include file="/assets/common/footer.jsp" %>
      </div>
   </div>
</body>
</html>