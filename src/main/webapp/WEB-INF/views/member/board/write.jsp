<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<%@ include file="/assets/common/member/board/import.jsp" %>
<script>
$(document).ready(function(){
	var btype = '${userBoardInfo.btype}';
	$('#category').val('${userBoardInfo.bname}');
	if(btype == 1){
		$('#file').attr("type", "hidden");
	}
	$('#write_submit').click(function(){
		$('#bcode').val('${userBoardInfo.bcode}');
		$('#writeform').attr("action", "${root}/member/board/write.tree").submit();
	})
});
</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/top.jsp" %>
		<%@ include file="/assets/common/member/board/side.jsp" %>
		<div class="main-panel">
			<div class="content" align="center">
				<form name="writeform" id="writeform" method="post" style="width:95%">
					<div class="form-group">
<!-- 						<select id="" name="category" class="form-control" style="width:100%;font-size:100%;height:45px"> -->
<!-- 							<option value='0'>[자유게시판] 일반게시글</option> -->
<!-- 							<option value='1'>[자유게시판] 정보공유</option> -->
<!-- 							<option value='2'>[자유게시판] Q&A</option> -->
<!-- 							<option value='3'>[자유게시판] 건의사항</option> -->
<!-- 							<option value='4'>[자유게시판] 칭찬합니다</option> -->
<!-- 						</select> -->
						<input name="category" type="text" class="form-control" id="category" readonly="readonly" style="height:45px">
						<input name="brd_ttl" type="text" class="form-control" id="brd_ttl" placeholder="제목을 입력하세요" style="height:45px">
						<textarea name="brd_ctt" id="brd_ctt" rows="20" style="width:100%;margin:10px 0"></textarea>
						<input name="file1" type="file" id="file" style="background-color:white;width:200px;button-radius:5px"><br><br>
						<button class="btn btn-success" id="write_submit" style="width:120px;padding:10px;margin:5px">등록하기</button>
						<button class="btn btn-danger" onclick="javascript:goback()" style="width:120px;padding:10px;margin:5px">작성취소</button>
				    </div>
				    <input type="hidden" id="bcode" name="bcode">
					<input type="hidden" id="pg" name="pg">
					<input type="hidden" id="word" name="word">
					<input type="hidden" id="key" name="key">
				</form>
			</div>
		<%@ include file="/assets/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>