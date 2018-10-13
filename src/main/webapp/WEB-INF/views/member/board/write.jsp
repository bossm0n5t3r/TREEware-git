<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp" %>
<%@ include file="/menu/board/import/import.jsp" %>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/common/top.jsp" %>
		<%@ include file="import/side.jsp" %>
		<div class="main-panel">
			<div class="content" align="center">
				<form name="historyform" action="" method="post" style="width:95%">
					<div class="form-group">
						<input name="act" type="hidden" value="register">
						<select id="" name="category" class="form-control" style="width:100%;font-size:100%;height:45px">
							<option value='0'>[자유게시판] 일반게시글</option>
							<option value='1'>[자유게시판] 정보공유</option>
							<option value='2'>[자유게시판] Q&A</option>
							<option value='3'>[자유게시판] 건의사항</option>
							<option value='4'>[자유게시판] 칭찬합니다</option>
						</select>
						<input name="title" type="text" class="form-control" id="title" placeholder="제목을 입력하세요" style="height:45px">
						<textarea name="contents" id="contents" rows="20" style="width:100%;margin:10px 0"></textarea>
						<input name="file1" type="file" name="file" style="background-color:white;width:200px;button-radius:5px"><br><br>
						<button class="btn btn-success" onclick="javascript:submit()" style="width:120px;padding:10px;margin:5px">등록하기</button>
						<button class="btn btn-danger" onclick="javascript:goback()" style="width:120px;padding:10px;margin:5px">작성취소</button>
				    </div>
				</form>
			</div>
		<%@ include file="/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>