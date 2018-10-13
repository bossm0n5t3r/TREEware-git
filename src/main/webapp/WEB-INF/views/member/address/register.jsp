<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp" %>
<%@ include file="/menu/address/import/import.jsp" %>
<script type="text/javascript" src="${root}/assets/js/plugin/jquery-ztree/dept_ztree.js"></script>
<script>
$(document).ready(function(){
	document.getElementById("menu1").setAttribute("class", "nav-item");
	document.getElementById("menu2").setAttribute("class", "nav-item");
	document.getElementById("menu3").setAttribute("class", "nav-item");
	document.getElementById("menu4").setAttribute("class", "nav-item active");
	document.getElementById("menu5").setAttribute("class", "nav-item");
});
</script>
</head>
<body>
<%@ include file="/common/top.jsp" %>
<%@ include file="import/side.jsp" %>
<div class="main-panel">
	<div class="content">
		<div class="container-fluid">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<div class="card-title">주소록 등록하기</div>
					</div>
					<div class="card-body" style="width:100%;padding:0 60px 60px 60px;text-align:left">
						<p style="color:#007bff">
						<label>
										<br>
										<br> 현재 페이지에서는 <b>외부연락처 및 개인연락처</b>를 등록할 수 있습니다.
										<br> <b>내부연락처 변경을 원하실 경우,</b>
										<br> 아래링크의 결재양식을 작성하여 관리자에게 문의해주세요.
										<br> <a href="#">[새결재문서]-[내부연락처 변경사항]</a>
						</label>
						</p>
						<!-- 사원등록1 -->
						<br>
						<form class="form" method="POST" id="registerMemberForm" name="registerMemberForm" action="">
						<input type="hidden" name="act" value="register">
							<div class="row">
								<div id="info" class="col-md-12">
									<div class="row">
										<div style="width:100%;border:#007fff 1px solid;margin:5px;border-radius:8px">
											<div class="row" style="margin:5px">
												<div style="width:25%" class="box-group">
													<input name="empname" id="empname" type="text" class="mainbox" placeholder="이름" required>
												</div>
												<div style="width:25%" class="box-group">
													<input name="phone2" id="phone2" type="text" class="mainbox" placeholder="휴대폰" onkeyup="inputCellPhone(this)" maxlength="13" required>
												</div>
												<div style="width:25%" class="box-group">
													<input name="phone1" id="phone1" type="text" class="mainbox" placeholder="회사전화" onkeyup="inputCellPhone(this)" maxlength="13" required>
												</div>
												<div style="width:25%" class="box-group">
													<input name="email" id="email" type="text" class="mainbox" placeholder="이메일주소" onkeyup="inputCellPhone(this)" maxlength="13" required>
												</div>
												<div style="width:45%" class="box-group">
													<table style="width:100%">
													<tr>
														<td><input type="text" name="dptname" id="dptname" class="mainbox" style="border:0" placeholder="그룹을 선택하세요" required readonly="readonly">
														<input type="hidden" id="dptcode" name="dptcode">
														</td>
														<td align="right">
															<input name="dept" id="dept" data-toggle="modal" data-target="#departments" class="btn btn-primary btn-sm" type="button" value="찾아보기">
														</td>
													</tr>
													</table>
												</div>
												<div style="width:30%" class="box-group">
													<select id="jc" name="jc" class="form-control" style="font-size:100%;height:50px">
														<option value='0' disabled>분류선택</option>
														<option value='1'>개발팀</option>
														<option value='2'>개발팀</option>
														<option value='3'>개발팀</option>
														<option value='4'>개발팀</option>
													</select>
												</div>
												<div style="width:25%" class="box-group">
													<input name="birth" id="birth" type="text" class="mainbox" placeholder="생년월일 8자리" required>
												</div>
												<div style="width:45%" class="box-group">
													<table style="width:100%">
														<tr>
															<td>
																<input type="hidden" name="address1" id="address1" value="">
																<input type="text" name="address2" id="address2" class="mainbox" style="border:0" placeholder="우편번호를 검색하세요">
															</td>
															<td align="right">
																<input name="findzip" id="findzip" data-toggle="modal" data-target="#zipcode" class="btn btn-primary btn-sm" type="button" value="찾아보기">
															</td>
														</tr>
													</table>
												</div>
												<div style="width:45%" class="box-group"><input type="text" name="address3" id="address3" class="mainbox" placeholder="상세주소를 입력하세요"></div>
												<div style="width:10%" class="box-group">
													<select id="gender" name="gender" class="form-control" style="font-size:100%;height:50px">
														<option value='0' disabled>성별선택</option>
														<option value='1'>남성</option>
														<option value='2'>여성</option>
													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
							<div class="card-action" style="text-align:center">
								<button class="btn btn-default" onclick="javascript:submit()" style="width:120px;padding:10px;margin:5px">입력추가</button>
								<button class="btn btn-success" onclick="javascript:submit()" style="width:120px;padding:10px;margin:5px">전송하기</button>
								<button class="btn btn-danger" onclick="javascript:goback()" style="width:120px;padding:10px;margin:5px">작성취소</button>
							</div>
						<hr>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="/common/footer.jsp" %>
</div>
</body>
</html>