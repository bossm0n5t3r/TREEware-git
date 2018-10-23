<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
	<title>트리웨어 로그인</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@ include file="/assets/common/import.jsp" %>
	<c:set var="id" value=""/>
	<c:set var="loginCk" value=""/>
	<c:set var="loop_flag" value="false"/>
	<c:forEach var="cookie" items="${pageContext.request.cookies}">
		<c:if test="${not loop_flag}">
			<c:if test="${'TREEWARE_ID' == cookie.TREEWARE_ID.name}">
				<c:set var="id" value="${cookie.TREEWARE_ID.value}"/>
				<c:set var="loginCk" value="checked='checked'"/>
				<c:set var="loop_flag" value="true"/>
			</c:if>
		</c:if>
	</c:forEach>
	<script>
	$(document).ready(function(){
		$("#loginBtn").click(function() {
			login();
		});
		
		$("#pw").keydown(function(e) {
			if(e.keyCode == 13) {
				login();
			}
		})
	});
	function login(){
		$("#loginForm").attr("action", "${root}/member/home/login.tree");
		$("#loginForm").submit();
	}
	</script>
</head>
<body>
	<div align="center" style="padding:100px">
	<div class="col-lg-4">
		<img src="/treeware/assets/img/treeware4.png" width="190px">
			<form class="login" name="loginForm" id="loginForm" method="POST" action="">
				<div class="mainform"><input id="id" name="id" class="mainbox" type="text" value="${id}" placeholder="사원번호"></div>
				<div class="mainform"><input id="pw" name="pw" class="mainbox" type="password" placeholder="비밀번호"></div>
				<div class="mainform">
					<label class="form-check-label">
						<input class="form-check-input" name="autoLogin" value="loginOk" type="checkbox" value="" ${loginCk}>
						<span class="form-check-sign">현재 PC에서 아이디저장</span>
					</label>
				</div>
			</form>
				<div class="mainform"><button class="btn btn-success" id="loginBtn" style="width:100%;height:60px">로그인</button></div>
				<div class="mainform">
<!-- 					<span class="txt1">비밀번호를 잊으셨나요?</span> -->
<%-- 					<a href="${root}/member/home/askform.tree" class="txt2">관리자에게 문의해주세요</a> --%>
<%-- 					<a href="${root}/member/home/main.tree" class="txt2">만능로그인을 클릭하세요!</a> --%>
					<%--  --%>
				</div>
		</div>
	</div>
	<!-- Trigger the modal with a button -->
</body>
</html>
