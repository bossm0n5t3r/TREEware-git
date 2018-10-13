<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<head>
<%@ include file="/common/import.jsp" %>
<script>
$(document).ready(function (){
	document.getElementById("menu2").setAttribute("class", "nav-item");
	document.getElementById("menu3").setAttribute("class", "nav-item");
	document.getElementById("menu4").setAttribute("class", "nav-item");
	document.getElementById("menu5").setAttribute("class", "nav-item");
	document.getElementById("menu1").setAttribute("class", "nav-item active");
});
</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/adminmenu/home/top.jsp" %>
		<%@ include file="side.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<!-- 근태관리메인 -->
					<div class="row">
						<div class="col-md-6">
							<div>
								<%@ include file="category/commute.jsp" %>
							</div>
							<div>
								<%@ include file="category/vacation.jsp" %>
							</div>
						</div>
						<div class="col-md-6">
							<div>
								<%@ include file="category/workinghours.jsp" %>
							</div>
							<div>
								<%@ include file="category/member.jsp" %>
							</div>
						</div>
					</div>
					<!-- 근태관리메인 끝 -->
				</div>
				
			</div>
		<%@ include file="/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>