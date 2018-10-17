<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
	<title>트리웨어 관리자</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@ include file="/assets/common/import.jsp" %>
	<script>
	function submit(){
		 $("#successMsg").modal();
	}
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
					<div align="center" style="padding:10px">
						<div class="col-md-12">
							<!-- card -->
							<div class="card" style="width:100%;padding:30px 30px 60px 30px;text-align:left">
								<div class="card-header">
									<div class="card-title">게시판등록</div>
									<label>
										<br>
										<br> - 파란색박스는 반드시 작성해야합니다.
										<br> - 사원번호는 자동으로 부여됩니다.
										<br> - 초기 아이디와 비밀번호는 사원번호와 생년월일로 자동 부여된 후, 사원 로그인시 1회 변경 가능합니다.
										<br> - 사원이 처음 설정한 아이디는 회사 이메일 주소로 반영됩니다.
										<br> - 하단의 입력추가/입력삭제 버튼은 여러명을 동시에 입력하기위한 버튼입니다.(구현예정)
										<br>
										<br>
									</label>
								</div>
								<div class="card-body">
									<!-- 사원등록1 -->
									<br>
									<form class="form" method="POST" name="registerMemberForm" action="">
									<input type="hidden" name="act" value="registerMember">
										<div class="row">
											<div class="col-md-9">
												<div class="row">
													<div style="width:30%" class="box-group">
														게시판 제목
													</div>
													<div style="width:70%" class="box-group">
														<input id="pw" name="pw" type="password" class="mainbox">
													</div>
													<div style="width:100%;border:#007fff 1px solid;margin:5px;border-radius:8px">
														<div class="row" style="margin:5px">
															<div style="width:50%" class="box-group">
																<table style="width:100%">
																<tr>
																	<td>게시판 종류</td>
																</tr>
																</table>
															</div>
															<div style="width:50%" class="box-group">
																<select id="jw" name="jw" class="form-control" style="font-size:100%">
																	<option value='0' disabled>게시판선택</option>
																	<option value='1'>일반게시판</option>
																	<option value='2'>앨범게시판</option>
																	<option value='3'>자료실</option>
																</select>
															</div>
															</div>
													</div>
													<div style="width:100%;border:#007fff 1px solid;margin:5px;border-radius:8px">
														<div class="row" style="margin:5px">
															<div style="width:50%" class="box-group">
																<table style="width:100%">
																<tr>
																	<td>사용권한</td>
																</tr>
																</table>
															</div>
															<div style="width:50%" class="box-group">
																<select id="jw" name="jw" class="form-control" style="font-size:100%">
																	<option value='0' disabled>권한선택</option>
																	<option value='1'>사원</option>
																	<option value='2'>대리</option>
																	<option value='3'>과장</option>
																	<option value='4'>차장</option>
																	<option value='5'>부장</option>
																	<option value='6'>사장</option>
																</select>
															</div>
															</div>
													</div>
												</div>
											</div>	
										</div>
									</form>
								<hr>
							</div>
							</div>
							<!-- card end -->
							<div class="card-action" style="text-align:center">
								<button class="btn btn-default" onclick="javascript:submit()" style="width:120px;padding:10px;margin:5px">입력추가</button>
								<button class="btn btn-default" onclick="javascript:submit()" style="width:120px;padding:10px;margin:5px">선택삭제</button>
								<button class="btn btn-success" onclick="javascript:submit()" style="width:120px;padding:10px;margin:5px">전송하기</button>
								<button class="btn btn-danger" onclick="javascript:goback()" style="width:120px;padding:10px;margin:5px">작성취소</button>
							</div>
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
