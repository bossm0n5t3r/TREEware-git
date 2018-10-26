<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
	<title>트리웨어 관리자</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@ include file="/assets/common/import.jsp" %>
<script>
$(document).ready(function(){
// 	document.getElementById("menu1").setAttribute("class", "nav-item");
	document.getElementById("menu2").setAttribute("class", "nav-item active");
	
	$('#registerBtn').click(function(){
		 $('#registerMemberForm').attr("action", "${root}/admin/board/register.tree");
		 $('#registerMemberForm').submit();
	})
});
	function goback(){
		location.href="${root}/index.jsp";
	}
	</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/admin/home/top.jsp" %>
		<%@ include file="/assets/common/admin/board/side.jsp" %>
		<div class="main-panel" >
			<div class="content">
				<div class="container-fluid" style="height:1000px">
					<div align="center" style="padding:10px;margin:30px 0">
						<div class="col-md-10">
							<!-- card -->
							<div class="card" style="width:100%;padding:30px 30px 60px 30px;text-align:left">
								<div class="card-header">
									<div class="card-title">게시판등록</div>
								</div>
								<div class="card-body">
									<!-- 사원등록1 -->
									<br>
									<form class="form" method="POST" id="registerMemberForm" name="registerMemberForm" action="">
										<div class="row" style="padding:0 20px">
											<div style="width:15%;padding:10px;" class="box-group" style="pading:5px">
												게시판 제목
											</div>
											<div style="width:85%" class="box-group">
												<input id="bname" name="bname" type="text" class="mainbox">
											</div>
										</div>
										<div class="row" style="padding:0 20px">
											<div style="width:15%;padding:10px;" class="box-group">
												카테고리
											</div>
											<div style="width:85%" class="box-group">
												<select id="ccode" name="ccode" class="form-control" style="font-size:100%">
													<option value='0'>전체부서</option>
													<option value='1'>관리부</option>
													<option value='2'>인사부</option>
													<option value='3'>무역부</option>
													<option value='4'>영업부</option>
													<option value='5'>판매부</option>
												</select>
											</div>
										</div>
										<div class="row" style="padding:0 20px">
											<div style="width:15%;padding:10px;" class="box-group">
												게시판 종류
											</div>
											<div style="width:85%" class="box-group">
												<select id="btype" name="btype" class="form-control" style="font-size:100%">
													<option value='0' disabled>게시판선택</option>
													<option value='1'>일반게시판</option>
													<option value='2'>앨범게시판</option>
													<option value='3'>자료실</option>
												</select>
												<input type="hidden" id="bname" name="bname">
											</div>
										</div>
										<div class="row" style="padding:0 20px">
											<div style="width:15%;padding:10px;" class="box-group" style="pading:5px">
												쓰기부서
											</div>
											<div style="width:35%" class="box-group">
												<select id="jw" name="jw" class="form-control" style="font-size:100%">
													<option value='0'>전체부서</option>
													<option value='1'>관리부</option>
													<option value='2'>인사부</option>
													<option value='3'>무역부</option>
													<option value='4'>영업부</option>
													<option value='5'>판매부</option>
												</select>
											</div>
											<div style="width:15%;padding:10px;" class="box-group" style="pading:5px">
												읽기부서
											</div>
											<div style="width:35%" class="box-group">
												<select id="jw" name="jw" class="form-control" style="font-size:100%">
													<option value='0'>전체부서</option>
													<option value='1'>관리부</option>
													<option value='2'>인사부</option>
													<option value='3'>무역부</option>
													<option value='4'>영업부</option>
													<option value='5'>판매부</option>
												</select>
											</div>
										</div>
										<div class="row" style="padding:0 20px 20px 20px">
											<div style="width:15%;padding:10px;" class="box-group" style="pading:5px">
												쓰기권한
											</div>
											<div style="width:35%" class="box-group">
												<select id="jw" name="jw" class="form-control" style="font-size:100%">
													<option value='0'>전체사원</option>
													<option value='1'>사원</option>
													<option value='2'>대리</option>
													<option value='3'>과장</option>
													<option value='4'>차장</option>
													<option value='5'>부장</option>
													<option value='6'>사장</option>
												</select>
											</div>
											<div style="width:15%;padding:10px;" class="box-group" style="pading:5px">
												읽기권한
											</div>
											<div style="width:35%" class="box-group">
												<select id="jw" name="jw" class="form-control" style="font-size:100%">
													<option value='0'>전체사원</option>
													<option value='1'>사원</option>
													<option value='2'>대리</option>
													<option value='3'>과장</option>
													<option value='4'>차장</option>
													<option value='5'>부장</option>
													<option value='6'>사장</option>
												</select>
											</div>
										</div>
									</form>
								</div>
							<div class="card-footer" align="center">
								<button class="btn btn-success" id="registerBtn" style="width:120px;padding:10px;margin:5px">등록하기</button>
								<button class="btn btn-danger" onclick="javascript:goback()" style="width:120px;padding:10px;margin:5px">등록취소</button>
							</div>
							</div>
							<!-- card end -->
							<!-- register form end-->
						</div>	
					</div>
					<%@ include file="/assets/common/modal/departments.jsp" %>
					<%@ include file="/assets/common/modal/zipcode.jsp" %>
				</div>
			</div>
		<%@ include file="/assets/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>
