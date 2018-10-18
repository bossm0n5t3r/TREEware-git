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
	document.getElementById("menu1").setAttribute("class", "nav-item active");
	document.getElementById("menu2").setAttribute("class", "nav-item");
	document.getElementById("menu3").setAttribute("class", "nav-item");
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
						<div class="card-title">새결재진행</div>
					</div>
					<div class="card-body">
						<div class="row">
								<div class="col-md-3">
									<div class="card-sub">
										<div style="width:100%">
<!-- 										<table style="width:100%"> -->
<!-- 											<tr> -->
<!-- 												<td><input type="text" style="width:130px" placeholder="검색어입력"></td> -->
<!-- 												<td><input type="button" value="검색" style="font-size:70%;padding:4px 10px"></td> -->
<!-- 											</tr> -->
<!-- 										</table> -->
										문서목록<br>
										<hr>
										<ul id="tree" class="ztree" style="width:100%;overflow:auto;"></ul>
										</div>
									</div>
								</div>
								<div class="col-md-9" style="padding:0 40px 0px 20px ">
								<!-- 주소록 콘텐츠 페이지  -->
								<IFRAME ID="testIframe" Name="testIframe" FRAMEBORDER=0 SCROLLING="no" width=100% height=100% SRC="${root}/assets/common/member/sign/forms/kiahn.jsp"></IFRAME>
								<!-- 주소록 콘텐츠 끝 -->
								<%@ include file="/assets/common/modal/member.jsp" %>
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