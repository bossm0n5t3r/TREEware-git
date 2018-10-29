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
<script type="text/javascript">
$(document).ready(function(){
	$("#empnum").attr("placeholder", "${userInfo.emp_sq}");
	$("#name").attr("placeholder", "${userInfo.emp_nm}");
	$("#birth").attr("placeholder", "${userInfo.emp_bdate}");
	if ("${userInfo.emp_sex}" == "M") {
		$("#gender").attr("placeholder", "남성");
	} else {
		$("#gender").attr("placeholder", "여성");
	}
	$("#joindate").attr("placeholder", "${userInfo.emp_reg}".split(" ")[0]);
	$("#bsphone").attr("placeholder", "${userInfo.emp_bs_tel1}" + "-" + "${userInfo.emp_bs_tel2}" + "-" + "${userInfo.emp_bs_tel3}");
	$("#email").val("${userInfo.emp_ml_id}" + "${userInfo.emp_ml_addr}");
	$("#cell").val("${userInfo.emp_tel1}" + "-" + "${userInfo.emp_tel2}" + "-" + "${userInfo.emp_tel3}");
	$("#address").val("${userInfo.emp_addr}" + " " + "${userInfo.emp_addr_dt}");
	getDepartment('${userInfo.dpt_sq}');
	getRank('${userInfo.rnk_sq}');
	getPostion('${userInfo.pst_sq}');
	getPermission('${userInfo.pms_sq}');
})

function getDepartment(dpt_sq) {
	$.ajax({
		type : "POST"
		,url : "${root}/admin/member/getDepartment.tree"
		,dataType : "json"
		,data : {
			"dpt_sq" : dpt_sq
		}
		,success : function(data) {
			$("#department").attr("placeholder", data.DPT_NM);
		}
	});
}

function getRank(rnk_sq) {
	$.ajax({
		type : "POST"
		,url : "${root}/admin/member/getRank.tree"
		,dataType : "json"
		,data : {
			"rnk_sq" : rnk_sq
		}
		,success : function(data) {
			$("#rank").attr("placeholder", data.RNK_NM);
		}
	});
}

function getPostion(pst_sq) {
	$.ajax({
		type : "POST"
		,url : "${root}/admin/member/getPosition.tree"
		,dataType : "json"
		,data : {
			"pst_sq" : pst_sq
		}
		,success : function(data) {
			$("#position").attr("placeholder", data.PST_NM);
		}
	});
}

function getPermission(pms_sq) {
	$.ajax({
		type : "POST"
		,url : "${root}/admin/member/getPermission.tree"
		,dataType : "json"
		,data : {
			"pms_sq" : pms_sq
		}
		,success : function(data) {
			$("#power").attr("placeholder", data.PMS_NM);
		}
	});
}
</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/top.jsp" %>
		<%@ include file="/assets/common/side.jsp" %>
			<div class="main-panel" >
			<div class="content">
				<div class="container-fluid">
					<div align="center" style="padding:10px">
						<div class="col-md-12">
							<!-- card -->
							<div class="card" style="width:100%;padding:30px 30px 60px 30px;text-align:left">
								<div class="card-header">
									<div class="card-title">나의 정보</div>
								</div>
								<div class="card-body">
									<!-- 사원등록1 -->
									<br>
									<form class="form" method="POST" name="registerMemberForm" action="">
									<input type="hidden" name="act" value="registerMember">
										<div class="row" style="width:100%;padding:20px 20px 10px 20px;border-radius:8px;border:1px #ccc solid">
											<div class="col-md-2" style="padding:0 20px 0 0">
												사원번호
												<input id="empnum" name="empnum" type="text" readonly="readonly" value="" style="width:100%">
												<img src="${root}/assets/img/photo.jpg" width="100%" style="margin:5px 0px 10px 0px;padding:5px">
												<input type="file" name="file" id="file" class="inputfile" />
												<label for="file" style="width:100%"><i class="la la-upload"></i>&nbsp;사진추가하기</label>
											</div>
											<div class="col-md-10">
													<div id="info" class="row">
														<!-- 부서 -->
														<div style="width:25%" class="box-group">
															<input type="text" class="mainbox" placeholder="부서" style="border:0; text-align:center" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input type="text" name="department" id="department" class="mainbox" style="text-align:center" readonly="readonly">
														</div>
														<!-- 직위 -->
														<div style="width:25%" class="box-group">
															<input type="text" class="mainbox" placeholder="직위" style="border:0; text-align:center" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input name="rank" id="rank" type="text" class="mainbox" style="text-align:center" readonly="readonly">
														</div>
														<!-- 직책 -->
														<div style="width:25%" class="box-group">
															<input type="text" class="mainbox" placeholder="직책" style="border:0; text-align:center" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input name="position" id="position" type="text" class="mainbox" style="text-align:center" readonly="readonly">
														</div>
														<!-- 권한 -->
														<div style="width:25%" class="box-group">
															<input type="text" class="mainbox" placeholder="권한" style="border:0; text-align:center" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input name="power" id="power" type="text" class="mainbox" style="text-align:center" readonly="readonly">
														</div>
														<!-- 이름 -->
														<div style="width:25%" class="box-group">
															<input type="text" class="mainbox" placeholder="이름" style="border:0; text-align:center" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input name="name" id="name" type="text" class="mainbox" style="text-align:center" readonly="readonly">
														</div>
														<!-- 생년월일 -->
														<div style="width:25%" class="box-group">
															<input type="text" class="mainbox" placeholder="생년월일" style="border:0; text-align:center" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input name="birth" id="birth" type="text" class="mainbox" style="text-align:center" readonly="readonly">
														</div>
														<!-- 성별 -->
														<div style="width:25%" class="box-group">
															<input type="text" class="mainbox" placeholder="성별" style="border:0; text-align:center" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input name="gender" id="gender" type="text" class="mainbox" style="text-align:center" readonly="readonly">
														</div>
														<!-- 입사일 -->
														<div style="width:25%" class="box-group">
															<input type="text" class="mainbox" placeholder="입사일" style="border:0; text-align:center" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input type="text" name="joindate" id="joindate" class="mainbox" style="text-align:center" readonly="readonly">
														</div>
														<!-- 사내번호 -->
														<div style="width:25%" class="box-group">
															<input type="text" class="mainbox" placeholder="사내번호" style="border:0; text-align:center" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input name="bsphone" id="bsphone" type="text" class="mainbox" style="text-align:center" readonly="readonly">
														</div>
														<!-- 상태 -->
														<div style="width:25%" class="box-group">
															<input type="text" class="mainbox" placeholder="상태" style="border:0; text-align:center" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input name="status" id="status" type="text" class="mainbox" placeholder="근무중" style="text-align:center" readonly="readonly">
														</div>
														<!-- 이메일 -->
														<div style="width:25%" class="box-group">
															<input type="text" class="mainbox" placeholder="이메일" style="border:0; text-align:center" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input name="email" id="email" type="text" class="mainbox" style="text-align:center">
														</div>
														<!-- 전화번호 -->
														<div style="width:25%" class="box-group">
															<input type="text" class="mainbox" placeholder="전화번호" style="border:0; text-align:center" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input type="text" name="cell" id="cell" class="mainbox" style="text-align:center" required>
														</div>
														<!-- 주소 -->
														<div style="width:25%" class="box-group">
															<input type="text" class="mainbox" placeholder="주소" style="border:0; text-align:center" readonly="readonly">
														</div>
														<div style="width:75%" class="box-group">
															<input type="text" name="address" id="address" class="mainbox" style="text-align:center" required>
														</div>
<!-- 														<div style="width:100%" class="box-group"> -->
<!-- 															<input class="simplebtn1" type="button" value="정보수정하기" style="width:100%;padding:15px;background-color:#f2f3f8"> -->
<!-- 														</div> -->
													</div>
												</div>
											</div>
										</form>
										<br>
								</div>
								<div class="card-footer">
									<div class="card-title">정보수정내역</div>
									<hr>
									<table class="table-hover" id="listtable" style="width:100%;font-size:100%">
										<thead>
											<tr style="style=background-color:#eee">
												<th width="13%">이름</th>
												<th width="13%">부서</th>
												<th width="7%">직책</th>
												<th width="7%">직위</th>
												<th width="15%">회사전화</th>
												<th width="15%">휴대전화</th>
												<th width="10%">상태</th>
												<th width="20%">수정일</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach var="list" items="${employeeInfo}" varStatus="status">
											<tr>
												<td>${list.emp_nm}</td>
												<td>${departmentInfo[status.index].dpt_nm}</td>
												<td>${rankInfo[status.index].rnk_nm}</td>
												<td>${positionInfo[status.index].pst_nm}</td>
												<td>${list.emp_bs_tel1}-${list.emp_bs_tel2}-${list.emp_bs_tel3}</td>
												<td>${list.emp_tel1}-${list.emp_tel2}-${list.emp_tel3}</td>
												<td>휴직</td>
												<td>${list.emp_fnl_mod}</td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
									
								</div>
							</div>
							<!-- card end -->
							<div class="card-action" style="text-align:center">
								<button class="btn btn-success" onclick="javascript:edit()" style="width:120px;padding:10px;margin:5px">수정하기</button>
								<button class="btn btn-danger" onclick="javascript:goback()" style="width:120px;padding:10px;margin:5px">이전메뉴</button>
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