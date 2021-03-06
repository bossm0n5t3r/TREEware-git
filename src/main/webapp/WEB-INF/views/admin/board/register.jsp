<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
<title>트리웨어 관리자</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="/assets/common/import.jsp" %>
<%@ include file="/assets/common/admin/board/import.jsp" %>
<script>
$(document).ready(function(){
	document.getElementById("menu1").setAttribute("class", "nav-item");
	document.getElementById("menu2").setAttribute("class", "nav-item active");
	
	getCategoryList();
	getBtypeList();
	
	$('#registerBtn').click(function(){
		if($("#bname").val() === '') {
			alert("게시판 이름을 입력해주세요.");
		} else if ($("#ccode").val() === null) {
			alert("카테고리를 선택해주세요.");
		} else if ($("#btype").val() === null) {
			alert("게시판 타입을 선택해주세요.");
		} else {
			$.ajax({
				type : "POST"
				,url : "${root}/admin/board/register.tree"
				,dataType : "text"
				,data : {
					"bname" : $("#bname").val()
					,"ccode" : $("#ccode").val()
					,"btype" : $("#btype").val()
				}
				,success : function(data) {
					alert("등록되었습니다!");
					$(location).attr("href", "${root}/admin/board/register.tree");
				}
				,error : function() {
					
				}
			})
		}
	});
});

</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/admin/home/top.jsp" %>
		<%@ include file="/assets/common/admin/board/side.jsp" %>
		<div class="main-panel" >
			<div class="content">
				<div class="container-fluid" style="height:1000px">
					<div align="center" style="padding:10px;margin:30px 0">
						<div class="col-md-12">
							<!-- card -->
							<div class="card" style="width:100%;padding:30px 30px 60px 30px;text-align:left">
								<div class="card-header">
									<div class="card-title">게시판 등록</div>
								</div>
								<div class="card-body" style="text-align:center">
									<!-- 사원등록1 -->
									<br>
									<form class="form" id="registerMemberForm" name="registerMemberForm" action="">
										<div class="row" style="padding:0 20px">
											<div style="width:25%;padding:10px;" class="box-group" style="pading:5px">
												게시판 이름
											</div>
											<div style="width:75%" class="box-group">
												<input id="bname" name="bname" type="text" class="mainbox">
											</div>
										</div>
										<div class="row" style="padding:0 20px">
											<div style="width:25%;padding:10px;" class="box-group">
												카테고리
											</div>
											<div style="width:25%" class="box-group">
												<select id="ccode" name="ccode" class="form-control ctgry" style="font-size:100%">
												</select>
											</div>
											<div style="width:25%;padding:10px;" class="box-group">
												게시판 타입
											</div>
											<div style="width:25%" class="box-group">
												<select id="btype" name="btype" class="form-control" style="font-size:100%">
												</select>
											</div>
										</div>
									</form>
								</div>
							<div class="card-footer" align="center">
								<button class="btn btn-success" id="registerBtn" style="width:120px;padding:10px;margin:5px">등록하기</button>
								<button class="btn btn-danger" style="width:120px;padding:10px;margin:5px">등록취소</button>
							</div>
							</div>
							<!-- card end -->
							<!-- register form end-->
						</div>	
					</div>
					<%@ include file="/assets/common/modal/departments.jsp" %>
					<%@ include file="/assets/common/modal/zipcode.jsp" %>
				</div>
			</div>
		<%@ include file="/assets/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>
