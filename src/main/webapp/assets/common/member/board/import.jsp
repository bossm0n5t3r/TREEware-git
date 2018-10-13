<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
input[type=text]{
	margin:10px 0px;
}
</style>
<script>
function register(){
	if(document.getElementById("title").value == ""){
		alert("제목을 입력하세요.");
		return;
	}
	if(document.getElementById("contents").value ==""){
		alert("내용을 입력하세요.");
		return;
	}
}
</script>
