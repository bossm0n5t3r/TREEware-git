<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<%@ include file="/assets/common/member/board/import.jsp" %>
<script type="text/javascript">
$(document).ready(function(){
	getBrdList();
	
	$("#writeBtn").click(function() {
		if ($("#brd_category").val() == null) {
			alert("게시판을 선택해주세요.");
			return;
		} else if ($("#brd_ttl").val() == '') {
			alert("제목이 비어있습니다.");
			return;
		} else if ($("#brd_ctt").val() == '') {
			alert("내용이 비어있습니다.");
			return;
		} else {
			$("#writeBoard #bcode").val($("#brd_category").val());
			$("#writeBoard").attr("method", "POST")
							.attr("action", "${root}/member/board/write.tree")
						    .submit();
		}
	});
	
	$("#returnBtn").click(function() {
		$(location).attr("href", "${root}/member/board/main.tree");
	});
})
</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/top.jsp" %>
		<%@ include file="/assets/common/member/board/side.jsp" %>
		<div class="main-panel">
			<div class="content" align="center">
				<form id="writeBoard" enctype="multipart/form-data" style="width:95%">
					<input type="hidden" name="bcode" id="bcode" value="">
					<input type="hidden" name="pg" value="1">
					<input type="hidden" name="key" value="">
					<input type="hidden" name="word" value="">
					<div class="form-group">
						<select id="brd_category" name="category" class="form-control" style="width:100%;font-size:100%;height:45px">
						</select>
						<input type="text" name="brd_ttl" class="form-control" id="brd_ttl" placeholder="제목을 입력하세요" style="height:45px">
						<textarea name="brd_ctt" id="brd_ctt" rows="20" style="width:100%;margin:10px 0"></textarea>
						<input type="file" name="brdFile" id="brdFile" style="background-color:white;width:200px;button-radius:5px"><br><br>
						<button class="btn btn-success" id="writeBtn" style="width:120px;padding:10px;margin:5px">글쓰기</button>
						<button class="btn btn-danger" id="returnBtn" style="width:120px;padding:10px;margin:5px">작성취소</button>
				    </div>
				</form>
			</div>
		<%@ include file="/assets/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>