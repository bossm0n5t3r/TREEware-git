<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp" %>
<%@ include file="/menu/calendar/import/import.jsp" %>
<script>
$(document).ready(function(){
	document.getElementById("menu1").setAttribute("class", "nav-item active");
	document.getElementById("menu2").setAttribute("class", "nav-item);
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
									<div id="calendar"></div>
							</div>
						</div>
					</div>
				</div>
		<%@ include file="/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>