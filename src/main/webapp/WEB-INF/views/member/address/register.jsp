<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<%@ include file="/assets/common/member/address/import.jsp" %>
<script type="text/javascript" src="${root}/assets/js/plugin/jquery-ztree/dept_ztree.js"></script>
<script src="/treeware/assets/js/register.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
$(document).ready(function(){
	document.getElementById("menu1").setAttribute("class", "nav-item");
	document.getElementById("menu2").setAttribute("class", "nav-item");
	document.getElementById("menu3").setAttribute("class", "nav-item");
	document.getElementById("menu4").setAttribute("class", "nav-item active");
	document.getElementById("menu5").setAttribute("class", "nav-item");
	
	insertZipcode();
});

function registerAddress() {
	$("#registerBtn").click(function() {
		$.ajax({
			type : "POST"
			,url : "${root}/member/address/register.tree"
			,dataType : "json"
			,success : function(data) {
// 				$("#liveclock").html(data.time);
// 				setTimeout("livetime()", 1000);
			}
			,error : function(e) {
				
			}
		})
	})
}

function insertZipcode() {
	$("#findzip").click(function() {
		search_zip();
	})
}
</script>
</head>
<body>
<%@ include file="/assets/common/top.jsp" %>
<%@ include file="/assets/common/member/address/side.jsp" %>
<div class="main-panel">
	<div class="content">
		<div class="container-fluid">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<div class="card-title">주소록 등록하기</div>
					</div>
					<div class="card-body" style="width:100%;padding:0 60px 60px 60px;text-align:left">
						<p style="color:#007bff">
						<label>
										<br>
										<br> 현재 페이지에서는 <b>외부연락처 및 개인연락처</b>를 등록할 수 있습니다.
										<br> <b>내부연락처 변경을 원하실 경우,</b>
										<br> 아래링크의 결재양식을 작성하여 관리자에게 문의해주세요.
										<br> <a href="#">[새결재문서]-[내부연락처 변경사항]</a>
						</label>
						</p>
						<!-- 사원등록1 -->
						<br>
						<form class="form" action="">
							<div class="row">
								<div id="info" class="col-md-12">
									<div class="row">
										<div style="width:100%;border:#007fff 1px solid;margin:5px;border-radius:8px">
											<div class="row" style="margin:5px">
												<div style="width:25%" class="box-group">
													<input name="addr_nm" id="addr_nm" type="text" class="mainbox" placeholder="이름" required>
												</div>
												<div style="width:25%" class="box-group">
													<input name="addr_tel" id="addr_tel" type="text" class="mainbox" placeholder="휴대폰" onkeyup="inputCellPhone(this)" maxlength="13" required>
												</div>
												<div style="width:25%" class="box-group">
													<input name="addr_cpn_tel" id="addr_cpn_tel" type="text" class="mainbox" placeholder="회사전화" onkeyup="inputCellPhone(this)" maxlength="13" required>
												</div>
												<div style="width:25%" class="box-group">
													<input name="addr_eml" id="addr_eml" type="text" class="mainbox" placeholder="이메일주소" onkeyup="inputCellPhone(this)" maxlength="13" required>
												</div>
												<div style="width:50%" class="box-group">
													<table style="width:100%">
														<tr>
															<td>
																<input type="hidden" name="emp_zip" id="emp_zip" value="">
																<input type="text" name="emp_addr" id="emp_addr" class="mainbox" style="border:0;" placeholder="우편번호를 검색하세요">
															</td>
															<td align="right">
																<input name="findzip" id="findzip" class="btn btn-primary btn-sm" type="button" value="찾아보기">
															</td>
														</tr>
													</table>
												</div>
												<div style="width:50%" class="box-group"><input type="text" name="emp_addr_dt" id="emp_addr_dt" class="mainbox" placeholder="상세주소를 입력하세요"></div>
												<div style="width:100%" class="box-group"><input type="text" name="addr_mm" id="addr_mm" class="mainbox" placeholder="메모"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
							<div class="card-action" style="text-align:center">
								<button class="btn btn-default" onclick="javascript:submit()" style="width:120px;padding:10px;margin:5px">입력추가</button>
								<button class="btn btn-success" id="registerBtn" style="width:120px;padding:10px;margin:5px">전송하기</button>
								<button class="btn btn-danger" onclick="javascript:goback()" style="width:120px;padding:10px;margin:5px">작성취소</button>
							</div>
						<hr>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="/assets/common/footer.jsp" %>
</div>
</body>
</html>