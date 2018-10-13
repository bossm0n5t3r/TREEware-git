<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
	<title>트리웨어 문의</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@ include file="/common/import.jsp" %>
	<script>
	function submit(){
		 $("#successMsg").modal();
	}
	function goback(){
		location.href="${root}/member";
	}
	</script>
</head>
<body>
	<div align="center" style="padding:100px">
		<div class="col-lg-8">
			<h4> 관리자에게 문의하세요</h4><br>
			<div class="card" style="width:100%;padding:30px 30px 60px 30px;text-align:left">
				<div class="form-group">
					<label for="selection">분류를 선택해주세요</label>
					<select class="mainbox" id="exampleFormControlSelect1">
						<option>일반문의</option>
						<option>비밀번호찾기</option>
						<option>버그신고</option>
						<option>불편사항</option>
					</select>
				</div>
				<div class="form-group"><input type="text" id="email" placeholder="제목" class="mainbox"></div>
				<div class="form-group">
				<textarea class="form-control" id="comment" rows="20"></textarea></div>
				<div class="form-group">
				<input type="text" id="email" placeholder="답변받으실 이메일주소" class="mainbox"></div>
				<div class="form-group"><input type="file" class="form-control-file" id="exampleFormControlFile1"></div>
				<div class="card-action" style="text-align:center">
					<button class="btn btn-success" onclick="javascript:submit()" style="width:120px;padding:10px;margin:5px">전송하기</button>
					<button class="btn btn-danger" onclick="javascript:goback()" style="width:120px;padding:10px;margin:5px">작성취소</button>
				</div>
			</div>	
		</div>
	</div>
	
	<!-- Modal -->
	<!-- <div id="myModal" class="modal fade" role="dialog" aria-labelledby="modalUpdatePro" aria-hidden="true"> -->
	<div id="successMsg" class="modal fade">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h6 class="modal-title">전송완료</h6>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">&times;</button>
				</div>
				<div class="modal-body text-center">
					관리자메일 <mark><b>admin@treeware.com</b></mark>으로<br>
					성공적으로 전송되었습니다.<br>
					입력하신 메일주소로 답변드리겠습니다.
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="javascript:goback()">확인</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
