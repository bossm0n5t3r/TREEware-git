<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/top.jsp" %>
		<%@ include file="/assets/common/member/commute/side.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<!-- 근태관리메인 -->
					<div class="row">
						<div class="col-md-5">
							<div>
								<%@ include file="widget/clock.jsp" %>
							</div>
							<div>
								<%@ include file="widget/statics.jsp" %>
							</div>
						</div>
						<div class="col-md-7">
							<%@ include file="widget/worktime.jsp" %>
						</div>
					</div>
					<!-- 근태관리메인 끝 -->
				</div>
			</div>
		<%@ include file="/assets/common/footer.jsp" %>
		</div>
	</div>
</body>
<script src="${root}/assets/js/member/commute/commute.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	setRoot('${root}');
	livetime();	
	status();
	getStatics();
	punchInClick();
	workOutClick();
	comeBackClick();
	punchOutClick();
	
	workStatus();
	beforeClick();
	afterClick();
})
</script>
</html>