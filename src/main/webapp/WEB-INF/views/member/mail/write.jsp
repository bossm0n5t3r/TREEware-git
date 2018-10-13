<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp" %>
<%@ include file="/menu/board/import/import.jsp" %>
<link href="${root}/assets/js/plugin/summernote/summernote.css" rel="stylesheet">
<!-- <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.10/summernote.css" rel="stylesheet"> -->
<script src="${root}/assets/js/plugin/summernote/summernote.js"></script>
<!-- <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.10/summernote.js"></script> -->
<script type="text/javascript">
$(document).ready(function() {
    $('#summernote').summernote({
            height: 300,                 // set editor height
            minHeight: null,             // set minimum height of editor
            maxHeight: null,             // set maximum height of editor
            focus: true                  // set focus to editable area after initializing summernote
    });
});
</script>
</head>
<body>
   <div class="wrapper">
      <%@ include file="/common/top.jsp" %>
      <%@ include file="import/side.jsp" %>
      <div class="main-panel">
         <div class="content">
            <div class="card">
				<div class="card-header">
            <form name="mailwriteform" action="" method="post">
               <div class="form-group">
                  <input name="act" type="hidden" value="mailwrite">
                 <div class="card-title" style="margin-left: 15px">
						메일쓰기 &nbsp;			
								</div>
                  <div class="btn-group">
                  <button class="btn btn-info btn-sm">보내기</button>&nbsp;
                  <button class="btn btn-default btn-sm">미리보기</button>&nbsp;
                  <button class="btn btn-default btn-sm">다시쓰기</button>&nbsp;
                  </div>
                  <br>
               <table width="100%">
                  <tr>
                     <td style="width:70px">받는사람</td>
                     <td style="width:80px"><div style="margin-top:10px"><label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" value="">
                                    <span class="form-check-sign">나에게</span>
                                 </label>
                                 </div>
                     </td>
                     <td><input name="title" type="text" class="form-control" id="title" placeholder="이메일을 입력하세요" style="width:100%"></td>   
                  </tr>
                     <tr>
                     <td colspan="2">제목</td>
                     <td><input name="title" type="text" class="form-control" id="title" placeholder="제목을 입력하세요" style="width:100%"></td>   
                  </tr>
              
                     <tr>
                     <td colspan="2">첨부파일 </td>
                     <td><input name="file" type="file" style="width:200px">
                        <button class="btn btn-default btn-sm">삭제</button>
                     </td>   
                  </tr>
                  </table>
               <br>                                        
   
                  <textarea name="contents" id="summernote" rows="20" style="width:100%"></textarea>
                <br>
                <button class="btn btn-info btn-sm" onclick="">보내기</button>
                
                </div>              
            </form>
         </div>
      <%@ include file="/common/footer.jsp" %>
      </div>
   </div>
</body>
</html>