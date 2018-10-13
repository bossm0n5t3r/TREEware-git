<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
	<title>트리웨어 관리자</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@ include file="/common/import.jsp" %>
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
									<div class="card-title">사원정보상세</div>
								</div>
								<div class="card-body">
									<!-- 사원등록1 -->
									<br>
									<form class="form" method="POST" name="registerMemberForm" action="">
									<input type="hidden" name="act" value="registerMember">
										<div class="row" style="width:100%;padding:20px 20px 10px 20px;border-radius:8px;border:1px #ccc solid">
											<div class="col-md-2" style="padding:0 20px 0 0">
												
														사원번호<input id="empnum" name="empnum"type="text" readonly="readonly" value="TREE200966222" style="width:140px;margin:0 10px">
													
												<img src="${root}/assets/img/photo.jpg" width="100%" style="margin:5px 0px 10px 0px;padding:5px">
											</div>
											<div class="col-md-10">
													<div id="info" class="row">
														<div style="width:50%" class="box-group">
															<input type="text" name="name" id="name" class="mainbox" style="border:0" placeholder="SW개발부 응용소프트웨어개발팀" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input name="birth" id="birth" type="text" class="mainbox" placeholder="부장" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input name="birth" id="birth" type="text" class="mainbox" placeholder="팀장" readonly="readonly">
														</div>
														<div style="width:35%" class="box-group">
															<input name="name" id="name" type="text" class="mainbox" placeholder="김고은" readonly="readonly">
														</div>
														<div style="width:35%" class="box-group">
															<input name="name" id="birth" type="birth" class="mainbox" placeholder="1990.08.25" readonly="readonly">
														</div>
														<div style="width:15%" class="box-group">
															<input name="name" id="gender" type="gender" class="mainbox" placeholder="여성" readonly="readonly">
														</div>
														<div style="width:15%" class="box-group">
															<input name="name" id="power" type="power" class="mainbox" placeholder="관리자" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input type="text" name="joindate" id="joindate" class="mainbox" placeholder="입사일" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input type="text" name="resigndate" id="resigndate" class="mainbox" placeholder="퇴사일" readonly="readonly">
														</div>
														<div style="width:50%" class="box-group">
															<input name="status" id="status" type="text" class="mainbox" placeholder="근무중" readonly="readonly">
														</div>
														<div style="width:50%" class="box-group">
															<input name="email" id="email" type="text" class="mainbox" placeholder="eunbining@kitree.com" readonly="readonly">
														</div>
														<div style="width:50%" class="box-group">
															<input name="email" id="email" type="text" class="mainbox" placeholder="070-000-0000" readonly="readonly">
														</div>
														<div style="width:50%" class="box-group">
															<input type="text" name="address" id="address" class="mainbox" placeholder="서울특별시 관악구 난곡로" required>
														</div>
														<div style="width:50%" class="box-group">
															<input type="text" name="cell" id="cell" class="mainbox" placeholder="cellphone" required>
														</div>
														<div style="width:100%" class="box-group">
															<input class="simplebtn1" type="button" value="정보수정하기" style="width:100%;padding:15px;background-color:#f2f3f8">
														</div>
													</div>
												</div>
											</div>
										</form>
										<br>
								</div>
								<div class="card-footer">
									<div class="card-title">정보수정내역</div>
									<hr>
									<table class="table-hover" id="listtable" style="width:100%;font-size:100%">
										<thead>
											<tr style="style=background-color:#eee">
												<th width="13%">이름</th>
												<th width="13%">부서</th>
												<th width="7%">직책</th>
												<th width="7%">직위</th>
												<th width="15%">회사전화</th>
												<th width="15%">휴대전화</th>
												<th width="10%">상태</th>
												<th width="20%">수정일</th>
											</tr>
										</thead>
										<tbody>
											<% for(int i=0; i<10 ; i++){ %>
											<tr>
												<td>김하늘</td>
												<td>영업개발팀</td>
												<td>부장</td>
												<td>팀장</td>
												<td>070-0202-0202</td>
												<td>010-0000-0000</td>
												<td>휴직</td>
												<td>2018.01.01 PM 02:01:12</td>
											</tr>
											<%} %>
										</tbody>
									</table>
									
								</div>
							</div>
							<!-- card end -->
							<div class="card-action" style="text-align:center">
								<button class="btn btn-success" onclick="javascript:edit()" style="width:120px;padding:10px;margin:5px">수정하기</button>
								<button class="btn btn-danger" onclick="javascript:goback()" style="width:120px;padding:10px;margin:5px">이전메뉴</button>
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
