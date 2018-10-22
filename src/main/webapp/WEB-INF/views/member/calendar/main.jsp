<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<%@ include file="/assets/common/member/calendar/import.jsp" %>
<script>
$(document).ready(function(){
	document.getElementById("menu1").setAttribute("class", "nav-item active");
	document.getElementById("menu2").setAttribute("class", "nav-item");
});
</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/top.jsp" %>
		<%@ include file="/assets/common/member/calendar/side.jsp" %>
			<div class="main-panel">
				<div class="content">
					<div class="container-fluid" style="height:1100px">
						<div class="row">
							<div class="col-md-12">
									<div id="calendar"></div>
							</div>
						</div>
					</div>
				</div>
		<!-- 일정 추가 Modal -->
		<%@ include file="/assets/common/modal/schedule/register.jsp" %>
		<!-- 일정 보기, 수정, 삭제 Modal -->
		<%@ include file="/assets/common/modal/schedule/modify.jsp" %>
		<%@ include file="/assets/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>