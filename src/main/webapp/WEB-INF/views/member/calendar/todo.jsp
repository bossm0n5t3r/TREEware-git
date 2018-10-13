<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp" %>
<%@ include file="/menu/calendar/import/import.jsp" %>
<script>
$(document).ready(function(){
	document.getElementById("menu1").setAttribute("class", "nav-item");
	document.getElementById("menu2").setAttribute("class", "nav-item active");
});
</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/common/top.jsp" %>
		<%@ include file="import/side.jsp" %>
			<div class="main-panel">
				<div class="content">
					<div class="container-fluid" style="height:1100px">
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<table id="cardtitle" width="100%">
											<tr>
												<td style="width:50%"><h6>이번주업무</h6></td>
												<td style="width:50%;text-align:right"><button class="simplebtn1">추가하기</button></td>
											</tr>
										</table>
									</div>
									<div class="card-body">
										<table class="table table-bordered" style="padding:0 20px;width:100%;align:center">
											<tr style="text-align:center">
												<th>SUN</th>
												<th>MON</th>
												<th>TUE</th>
												<th>WED</th>
												<th>THU</th>
												<th>FRI</th>
												<th>SAT</th>
											</tr>
											<tr>
												<td>할일1</td>
												<td>할일1</td>
												<td>할일1</td>
												<td>할일1</td>
												<td>할일1</td>
												<td>할일1</td>
												<td>할일1</td>
											</tr>
										</table>
									</div>							
								</div>
							</div>
							
							<div class="col-md-6">
								<div class="card">
									<div class="card-header">
										<table id="cardtitle" width="100%">
											<tr>
												<td style="width:50%"><h6>오늘의업무</h6></td>
												<td style="width:50%;text-align:right"><button class="simplebtn1">추가하기</button></td>
											</tr>
										</table>
									</div>
										<!-- 주소록 콘텐츠 페이지  -->
										<div class="card-body"  align="center">
										<table class="table-hover" id="listtable" style="width:100%;font-size:100%;padding:5px 0">
											<thead>
												<tr height="50px" style="border-bottom:1px #ddd solid">
													<th width="10%">이름</th>
													<th width="10%">직위</th>
													<th width="10%">직책</th>
													<th width="20%">회사전화</th>
													<th width="20%">이메일</th>
													<th width="20%">휴대전화</th>
													<th width="10%">입사일</th>
												</tr>
											</thead>
											<tbody>
												<% for(int i=0; i<10 ; i++){ %>
												<tr height="40px">
													<td>김하늘</td>
													<td>팀원</td>
													<td>사원</td>
													<td>010-0000-0000</td>
													<td>skykim@gmail.com</td>
													<td>070-000-0000</td>
													<td>18.09.01</td>
												</tr>
												<%} %>
											</tbody>
										</table>
										<!-- 주소록 콘텐츠 끝 -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		<%@ include file="/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>