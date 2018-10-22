<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<%@ include file="/assets/common/member/sign/import.jsp" %>
<script type="text/javascript" src="${root}/assets/js/plugin/jquery-ztree/forms_ztree.js"></script>
<script>
$(document).ready(function(){
	document.getElementById("menu1").setAttribute("class", "nav-item");
	document.getElementById("menu2").setAttribute("class", "nav-item active");
	document.getElementById("menu3").setAttribute("class", "nav-item");
	$("#controlBtns").html('');
});
</script>
</head>
<body>
<%@ include file="/assets/common/top.jsp" %>
<%@ include file="/assets/common/member/sign/side.jsp" %>
<div class="main-panel">
	<div class="content">
		<div class="container-fluid">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<div class="card-title">받은결재함</div>
					</div>
					<div class="card-body">
						<div class="row">
								<div class="col-md-12" style="padding:0 20px 0px 20px ">
								<c:set var="formsq" value="${formDto.APV_FORM_SQ}"/>
								<c:choose>
									<c:when test="${formsq eq 1}">
										<%@ include file="/assets/common/member/sign/view/kiahn.jsp" %>
									</c:when>
									<c:when test="${formsq eq 2}">
										<%@ include file="/assets/common/member/sign/view/sihaeng.jsp" %>
									</c:when>
									<c:when test="${formsq eq 3}">
										<%@ include file="/assets/common/member/sign/view/huega.jsp" %>
									</c:when>
									<c:otherwise>
										<%@ include file="/assets/common/member/sign/view/gyungryuck.jsp" %>
									</c:otherwise>
								</c:choose>
								<br><br><br>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="/assets/common/footer.jsp" %>
</div>
</body>
</html>