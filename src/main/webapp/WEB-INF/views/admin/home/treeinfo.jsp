<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<style>
	.inputfile {
		width: 0.1px;
		height: 0.1px;
		opacity: 0;
		overflow: hidden;
		position: absolute;
		z-index: -1;
	}
	.inputfile + label {
	    font-size: 85% !important;
	    font-weight:700;
	    display: inline-block;
	    text-align:center;
	    color:#777 !important;
	    border: 1px solid #eee;
	    border-radius: 3px;
	    height:25px;
	    padding:4px;
	}
	.inputfile:focus + label,
	.inputfile + label:hover {
		border: 1px solid #ccc;
	    color:#555 !important;
	}
	.simplebtn1:hover,
	.inputfile + label {
		cursor: pointer; /* "hand" cursor */
	}
</style>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/admin/home/top.jsp" %>
		<%@ include file="/assets/common/admin/home/side.jsp" %>
			<div class="main-panel" >
			<div class="content">
				<div class="container-fluid">
					<div align="center" style="padding:10px">
						<div class="col-md-12">
							<!-- card -->
							<div class="card" style="width:100%;padding:30px 30px 60px 30px;text-align:left">
								<div class="card-header">
									<div class="card-title">회사 정보</div>
								</div>
								<div class="card-body">
									<h6>관리자가 회사정보 수정하는 페이지</h6>
									<img src="/treeware/assets/img/tree.png"><br>
								</div>
							</div>
							<!-- card end -->
							<div class="card-action" style="text-align:center">
<!-- 								<button class="btn btn-success" onclick="javascript:edit()" style="width:120px;padding:10px;margin:5px">수정요청</button> -->
							</div>
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