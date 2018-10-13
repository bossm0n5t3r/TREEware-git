<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp" %>
<%@ include file="/adminmenu/calendar/import.jsp" %>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/adminmenu/home/top.jsp" %>
		<%@ include file="side.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid" style="height:1100px">
					<div class="row">
							<div class="col-md-12">
								<div class="card" align="center">
									<div class="card-header">
										<div class="card-title" align="left">일정</div>
									</div>
									<div id="calendar"></div>
								</div>
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
			<%@ include file="/common/footer.jsp" %>
</body>
</html>