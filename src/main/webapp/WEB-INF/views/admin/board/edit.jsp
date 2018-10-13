<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
	<title>트리웨어 관리자</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@ include file="/common/import.jsp" %>
	<script>
	function submit(){
		 $("#successMsg").modal();
	}
	function goback(){
		location.href="${root}/index.jsp";
	}
	</script>
	<style>

	</style>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/adminmenu/home/top.jsp" %>
		<%@ include file="side.jsp" %>
		<div class="main-panel" >
			<div class="content">
				<div class="container-fluid">
					<div align="center" style="padding:10px">
						<div class="col-md-12">
							<!-- card -->
							<div class="card" style="width:100%;padding:30px 30px 60px 30px;text-align:left">
								<div class="card-header">
									<div class="card-title">사원정보수정</div>
								</div>
								<div class="card-body">
								<% for(int i=0 ; i<3 ; i++){ %>
									<!-- 사원등록1 -->
									<br>
									<form class="form" method="POST" name="registerMemberForm" action="">
									<input type="hidden" name="act" value="registerMember">
										<div class="row" style="width:100%;padding:20px 20px 10px 20px;border-radius:8px;border:1px #ccc solid">
											<div class="col-md-3" style="padding:0 20px 0 0">
												<label class="form-check-label">
													<input class="form-check-input" type="checkbox" value="">
													<span class="form-check-sign">
														사원번호<input id="empnum" name="empnum"type="text" readonly="readonly" value="TREE200966222" style="width:140px;margin:0 10px">
													</span>
												</label>
												<img src="${root}/assets/img/photo.jpg" width="100%" style="margin:5px 0px 10px 0px;padding:5px">
												<input name="photo" id="photo" type="file" >
											</div>
											<div class="col-md-9">
												<div class="row">
													<div style="width:25%" class="box-group">
														<input name="id" id="id" type="text"class="mainbox" placeholder="사용할 아이디" readonly="readonly">
													</div>
													<div style="width:25%" class="box-group">
														<input name="email2" id="email2" type="text"class="mainbox" placeholder="@treeware.com" readonly="readonly">
													</div>
													<div style="width:50%" class="box-group">
														<input id="pw" name="pw" type="password" class="mainbox" placeholder="비밀번호">
													</div>
													<div style="width:100%;margin:5px;border-radius:8px;background-color:#efefef">
														<div class="row" style="margin:5px">
															<div style="width:50%" class="box-group">
																<table style="width:100%">
																<tr>
																	<td><input type="text" name="name" id="name" class="mainbox" style="border:0" placeholder="부서명을 선택하세요" required></td>
																	<td align="right">
																		<input name="dept" id="dept" data-toggle="modal" data-target="#departments" class="btn btn-default btn-sm" type="button" value="찾아보기">
																	</td>
																</tr>
																</table>
															</div>
															<div style="width:25%" class="box-group">
																<select id="jw" name="jw" class="form-control" style="font-size:100%">
																	<option value='0' disabled>직위선택</option>
																	<option value='2'>사원</option>
																	<option value='1'>인턴</option>
																	<option value='2'>대리</option>
																	<option value='4'>과장</option>
																	<option value='5'>차장</option>
																	<option value='6'>부장</option>
																</select>
															</div>
															<div style="width:25%" class="box-group">
																<select id="jc" name="jc" class="form-control" style="font-size:100%">
																	<option value='0' disabled>직책선택</option>
																	<option value='1'>팀원</option>
																	<option value='2'>팀장</option>
																	<option value='3'>파트장</option>
																	<option value='4'>본부장</option>
																</select>
															</div>
															<div style="width:35%" class="box-group">
																<input name="name" id="name" type="text" class="mainbox" placeholder="이름" required>
															</div>
															<div style="width:35%" class="box-group">
																<input name="birth" id="birth" type="text" class="mainbox" placeholder="생년월일 8자리" required>
															</div>
															<div style="width:15%" class="box-group">
																<select id="gender" name="gender" class="form-control" style="font-size:100%" style="border:#007fff 1px solid;">
																	<option value='0' disabled>성별선택</option>
																	<option value='1'>남성</option>
																	<option value='2'>여성</option>
																</select>
															</div>
															<div style="width:15%" class="box-group">
																<select id="power" name="power" class="form-control" style="font-size:100%">
																	<option value='0'>일반</option>
																	<option value='1'>관리자권한</option>
																</select>
															</div>
															<div style="width:50%" class="box-group">
																<input type="text" name="cell" id="cell" class="mainbox" placeholder="cellphone" required>
															</div>
															<div style="width:25%" class="box-group">
																<input type="text" name="joindate" id="joindate" class="mainbox" placeholder="입사일" required>
															</div>
															<div style="width:25%" class="box-group">
																<input type="text" name="resigndate" id="resigndate" class="mainbox" placeholder="퇴사일" required>
															</div>
														</div>
													</div>
													<div style="width:50%" class="box-group">
														<table style="width:100%">
															<tr>
																<td>
																	<input type="hidden" name="address1" id="address1" value="">
																	<input type="text" name="address2" id="address2" class="mainbox" style="border:0" placeholder="우편번호를 검색하세요">
																</td>
																<td align="right">
																	<input name="findzip" id="findzip" data-toggle="modal" data-target="#zipcode" class="btn btn-default btn-sm" type="button" value="찾아보기">
																</td>
															</tr>
														</table>
													</div>
													<div style="width:50%" class="box-group"><input type="text" name="address3" id="address3" class="mainbox" placeholder="상세주소를 입력하세요"></div>
													<div style="width:50%" class="box-group"><input type="text" name="phone" id="phone" class="mainbox" placeholder="내선번호" required></div>
													<div style="width:50%" class="box-group">
														<select id="status" name="status" class="form-control" style="font-size:100%">
																<option value='0'>근무중</option>
																<option value='0'>휴직</option>
																<option value='0'>퇴사</option>
														</select>
													</div>
													<div id="idAlert" class="spanalert" style="color:#ffd001;margin: 10px 0;width:100%"></div></div>
													<div style="width:100%;text-align:right"><label style="font-size:90%;margin:5px 0 5px 0">[최종수정일] 2019.10.01 AM10:00</label></div>
												</div>
											</div>
										</form>
										<br>
										<% } %>
								</div>
							</div>
							<!-- card end -->
							<div class="card-action" style="text-align:center">
								<button class="btn btn-default" onclick="javascript:submit()" style="width:120px;padding:10px;margin:5px">선택삭제</button>
								<button class="btn btn-success" onclick="javascript:submit()" style="width:120px;padding:10px;margin:5px">수정완료</button>
								<button class="btn btn-danger" onclick="javascript:goback()" style="width:120px;padding:10px;margin:5px">수정취소</button>
							</div>
							<!-- register form end-->
						</div>	
					</div>
					<%@ include file="/common/modal/departments.jsp" %>
					<%@ include file="/common/modal/zipcode.jsp" %>
				</div>
			</div>
		<%@ include file="/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>
