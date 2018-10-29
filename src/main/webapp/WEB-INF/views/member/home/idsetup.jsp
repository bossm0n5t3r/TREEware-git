<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
	<title>트리웨어 로그인</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@ include file="/assets/common/import.jsp" %>
<script>
$(document).ready(function(){
	$("#id").keyup(function() {
		var sid = $("#id").val();
		if (sid.length < 4 || sid.length > 16) {
			$("#id_check").css("color", "gray").text("아이디는 4자이상 16자이하입니다.");
		} else {
			$.ajax({
				type : "GET"
				,url : "${root}/admin/member/idcheck.tree"
				,dataType : "json"
				,data : {
					"id" : sid
				}
				,success : function(data) {
					var cnt = parseInt(data.count);
					if (cnt == 0) {
						$("#id_check").css("color", "blue").text(sid + "는 사용가능합니다.");
					} else {
						$("#id_check").css("color", "red").text(sid + "는 사용불가능합니다.");
					}
				}
				,error : function(e) {
					
				}
			})
		}
	});
	
	$("#modifyBtn").click(function() {
		if ($("#id").val() == '') {
			alert("아이디를 입력하세요");
			return;
		} else if ($("#id").val().trim().length < 4) {
			alert("아이디를 4자이상 입력하세요");
			return;
		} else if ($("#pw").val() == '') {
			alert("비밀번호를 입력하세요");
			return;
		} else if ($("#pw").val().trim().length < 4) {
			alert("비밀번호를 4자이상 입력하세요");
			return;
		} else {
			$.ajax({
				type : "POST"
				,url : "${root}/admin/member/idsetup.tree"
				,dataType : "json"
				,data : {
					"id" : $("#id").val()
					,"pw" : $("#pw").val()
					,"emp_sq" : "${userInfo.emp_sq}"
				}
				,success : function(data) {
					var cnt = parseInt(data.count);
					if (cnt != 0) {
						alert("정상적으로 처리되었습니다! 변경한 아이디로 로그인해주세요!");
						$(location).attr("href", "${root}/index.jsp");
					} else {
						alert("서버에 장애가 생겨 처리되지 않았습니다. 다시 시도해주세요!");
						return;
					}
				}
				,error : function(e) {
					
				}
			})
		}
	})
	
})

</script>
</head>
<body>
	<div align="center" style="padding:100px">
		<div class="col-lg-4">
				<h4>TREE WARE 계정설정</h4><br>
				<p align="center">
				사원번호로 로그인하셨습니다.<br>
				아이디와 비밀번호를 설정하신 후<br>
				다시 로그인 해주세요.
				</p>
				<form class="login" name="modifyForm" id="modifyForm">
					<div class="mainform"><input id="id" name="id" class="mainbox" type="text" placeholder="사용하실 아이디"></div>
					<div class="mainform" align="left"><span id="id_check"></span></div>
					<div class="mainform"><input id="pw" name="pw" class="mainbox" type="password" placeholder="사용하실 비밀번호"></div>
				</form>
					<div class="mainform"><button class="btn btn-success" id="modifyBtn" style="width:100%;height:60px">수정하기</button></div>
					<div class="mainform"></div>
		</div>
	</div>
</body>
</html>
