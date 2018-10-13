<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
	<title>트리웨어 로그인</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@ include file="/common/import.jsp" %>
<script>
function modify(){
	if(document.getElementById("id").value == ''){
		alert("아이디를 입력하세요");
	} else if(document.getElementById("id").value.length < 4){
		alert("ID를 4자리이상 입력하세요");
	} else if(document.getElementById("pw").value == ''){
		alert("비밀번호를 입력하세요");
	} else if(document.getElementById("pw").value < 4){
		alert("PW를 4자리이상 입력하세요");
	} else {
		document.modifyForm.action = "${root}/member";
		document.modifyForm.submit();
	}
}
	
function check_id(check){
        $.ajax({
            async: true,
            type : 'GET',
            data : {
            	act: 'idcheck',
            	id: $(check).val()
            },
            url : "${root}/member",
            dataType : "json",
            contentType: "application/json; charset=UTF-8",
            success : function(data) {
            	console.log(data)
                if (data != 0) {
                    $("#id_check").text("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
                    //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
					$("#id_check").css("color", "red")                    
                } else {
                	$("#id_check").text("사용가능한 아이디입니다.");
                    //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
                    $("#id_check").css("color", "blue")
                    //아이디가 중복하지 않으면  idck = 1 
                    idck = 1;
                }
            },
            error : function(error) {
                alert("error : " + error);
            }
        });
	}
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
			<form class="login" name="modifyForm" method="POST" action="">
				<input type="hidden" name="act" value="modify">
				<div class="mainform"><input id="id" name="id" class="mainbox" type="text" onkeyup="check_id(this)" placeholder="사용하실 아이디"></div>
				<div class="mainform" align="left"><span id="id_check"></span></div>
				<div class="mainform"><input id="pw" name="pw" class="mainbox" type="password" placeholder="사용하실 비밀번호"></div>
			</form>
				<div class="mainform"><button class="btn btn-success" style="width:100%;height:60px" onclick="modify()">수정하기</button></div>
				<div class="mainform">
				</div>
		</div>
	</div>
</body>
</html>
