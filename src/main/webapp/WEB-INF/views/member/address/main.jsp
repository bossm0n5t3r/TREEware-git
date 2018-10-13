<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp" %>
<%@ include file="/menu/address/import/import.jsp" %>
<%@ include file="/adminmenu/group/import.jsp" %>
<script type="text/javascript" src="${root}/assets/js/plugin/jquery-ztree/dept_ztree.js"></script>
<script>
$(document).ready(function(){
	document.getElementById("menu1").setAttribute("class", "nav-item active");
	document.getElementById("menu2").setAttribute("class", "nav-item");
	document.getElementById("menu3").setAttribute("class", "nav-item");
	document.getElementById("menu4").setAttribute("class", "nav-item");
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
						<div class="card-title">사내조직도</div>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-md-12">
								<div id="chart-container" style="background-color:white;width:100%;padding:40px 0"></div>
							</div>
							<div class="col-md-12" style="padding:10px 80px 60px 80px ">
							<!-- 주소록 콘텐츠 페이지  -->
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
	</div>
<%@ include file="/common/footer.jsp" %>
</div>
</body>
</html>