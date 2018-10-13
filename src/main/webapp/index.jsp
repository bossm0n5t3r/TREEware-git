<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
	<title>트리웨어 로그인</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@ include file="/common/import.jsp" %>
	<c:set var="id" value=""/>
	<c:set var="loginCk" value=""/>
	<c:set var="loop_flag" value="false"/>
	<c:forEach var="cookie" items="${pageContext.request.cookies}">
		<c:if test="${not loop_flag}">
			<c:if test="${'LOGIN_ID' == cookie.name}">
				<c:set var="id" value="${cookie.value}"/>
				<c:set var="loginCk" value="checked"/>
				<c:set var="loop_flag" value="true"/>
			</c:if>
		</c:if>
	</c:forEach>
	<script>
	function login(){
		document.loginForm.action = "${root}/member";
		document.loginForm.submit();
	}
	function enterkey() {
        if (window.event.keyCode == 13) {
             login();
        }
	}
	</script>
</head>
<body>
	<div align="center" style="padding:100px">
	<div class="col-lg-4">
			<h4>TREE WARE</h4><br>
			<form class="login" name="loginForm" method="POST" action="">
				<input type="hidden" name="act" value="login">
				<div class="mainform"><input id="id" name="id" class="mainbox" type="text" value="${id}" placeholder="사원번호"></div>
				<div class="mainform"><input id="pw" name="pw" class="mainbox" type="password" placeholder="비밀번호" onkeyup="enterkey()"></div>
				<div class="mainform">
					<label class="form-check-label">
						<input class="form-check-input" name="autoLogin" value="loginOk" type="checkbox" value="" checked="${loginCk}">
						<span class="form-check-sign">현재 PC에서 아이디저장</span>
					</label>
				</div>
			</form>
				<div class="mainform"><button class="btn btn-success" style="width:100%;height:60px" onclick="javascript:login()">로그인</button></div>
				<div class="mainform">
					<span class="txt1">비밀번호를 잊으셨나요?</span>
					<a href="${root}/member?act=mvAskform" class="txt2">관리자에게 문의해주세요</a>
				</div>
		</div>
	</div>
</body>
</html>
