<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
	<title>트리웨어 관리자</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
		<%@ include file="/assets/common/admin/account/side.jsp" %>
		<script type="text/javascript">
		$(document).ready(function(){
			document.getElementById("menu1").setAttribute("class", "nav-item");
			document.getElementById("menu2").setAttribute("class", "nav-item");
			document.getElementById("menu3").setAttribute("class", "nav-item active");
		});
		</script>
		<div class="main-panel" >
			<div class="content">
				<div class="container-fluid">
					<div align="center" style="padding:10px">
						<div class="col-md-12">
							<!-- card -->
							<div class="card" style="width:100%;padding:30px 30px 60px 30px;text-align:left">
								<div class="card-header">
									<div class="card-title">정보수정</div>
								</div>
								<div class="card-body">
									<!-- 사원등록1 -->
									<br>
									<form class="form" method="POST" name="registerMemberForm" id="registerMemberForm" action="">
									<input type="hidden" name="act" value="registerMember">
										<div class="row" style="width:100%;padding:20px 20px 10px 20px;border-radius:8px;border:1px #ccc solid">
											<div class="col-md-2" style="padding:0 20px 0 0">									
														&emsp;사원번호
														<input id="emp_sq" name="emp_sq"type="text" readonly="readonly" style="width:140px;margin:0 10px">					
												<img src="${root}/assets/img/photo.jpg" width="100%" style="margin:5px 0px 10px 0px;padding:5px">
												<input type="file" name="file" id="file" class="inputfile" />
												<label for="file" style="width:100%"><i class="la la-upload"></i>&nbsp;사진추가하기</label>
											</div>
											<div class="col-md-10">
													<div id="info" class="row">
														<div style="width:50%" class="box-group">
															<input type="text" name="dpt_nm" id="dpt_nm" class="mainbox">
															<input type="hidden" name="dpt_sq" id="dpt_sq">															
														</div>
														<div style="width:25%" class="box-group">
															<input name="rnk_nm" id="rnk_nm" type="text" class="mainbox">
															<input type="hidden" name="rnk_sq" id="rnk_sq">
														</div>
														<div style="width:25%" class="box-group">
															<input name="pst_nm" id="pst_nm" type="text" class="mainbox">
															<input type="hidden" name="pst_sq" id="pst_sq">
														</div>
														<div style="width:35%" class="box-group">
															<input name="emp_nm" id="emp_nm" type="text" class="mainbox" readonly="readonly">
														</div>
														<div style="width:35%" class="box-group">
															<input name="emp_bdate" id="emp_bdate" type="birth" class="mainbox"  readonly="readonly">
														</div>
														<div style="width:15%" class="box-group">
															<input name="emp_sex" id="emp_sex" type="gender" class="mainbox"  readonly="readonly">
														</div>
														<div style="width:15%" class="box-group">
															<input name="pms_nm" id="pms_nm" type="power" class="mainbox" placeholder="관리자" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input type="text" name="emp_reg" id="emp_reg" class="mainbox" placeholder="입사일" readonly="readonly">
														</div>
														<div style="width:25%" class="box-group">
															<input type="text" name="emp_exit" id="emp_exit" class="mainbox" placeholder="퇴사일">
														</div>
														<div style="width:50%" class="box-group">
															<input name="status" id="status" type="text" class="mainbox" placeholder="근무중" readonly="readonly">
														</div>
														<div style="width:50%" class="box-group">
															<input name="email" id="email" type="text" class="mainbox" readonly="readonly">
														</div>
														<div style="width:50%" class="box-group">
															<input name="bes_tel" id="bes_tel" type="text" class="mainbox">
															<input name="emp_bs_tel1" id="emp_bs_tel1" type="hidden">
															<input name="emp_bs_tel2" id="emp_bs_tel2" type="hidden">
															<input name="emp_bs_tel3" id="emp_bs_tel3" type="hidden">
														</div>
														<div style="width:50%" class="box-group">
															<input type="text" name="address" id="address" class="mainbox" readonly="readonly" required>
														</div>
														<div style="width:50%" class="box-group">
															<input type="text" name="tel" id="tel" class="mainbox" readonly="readonly" required>
														</div>
														<div style="width:100%" class="box-group">
															<input class="simplebtn1" type="button" value="정보수정하기" id="modify" style="width:100%;padding:15px;background-color:#f2f3f8">
														</div>
													</div>
												</div>
											</div>
										</form>
										<br>
								</div>
								<div class="card-footer">
									<div class="card-title">사원목록</div>
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
											<tr class="emp" id="${list.emp_sq}">
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
<script type="text/javascript">
$(document).ready(function(){
	
	//정보수정클릭
	$('#modify').click(function(){
		if($('#dpt_nm').val()==='퇴사'){
			$('#dpt_sq').val(0);
		} else if($('#dpt_nm').val()==='관리부'){
			$('#dpt_sq').val(1);
		} else if($('#dpt_nm').val()==='인사과'){
			$('#dpt_sq').val(2);
		} else if($('#dpt_nm').val()==='무역부'){
			$('#dpt_sq').val(3);
		} else if($('#dpt_nm').val()==='영업부'){
			$('#dpt_sq').val(4);
		} else if($('#dpt_nm').val()==='판매부'){
			$('#dpt_sq').val(5);
		}
		if($('#rnk_nm').val()==='퇴사'){
			$('#rnk_sq').val(0);
		} else if($('#rnk_nm').val()==='사원'){
			$('#rnk_sq').val(1);
		} else if($('#rnk_nm').val()==='대리'){
			$('#rnk_sq').val(2);
		} else if($('#rnk_nm').val()==='과장'){
			$('#rnk_sq').val(3);
		} else if($('#rnk_nm').val()==='차장'){
			$('#rnk_sq').val(4);
		} else if($('#rnk_nm').val()==='부장'){
			$('#rnk_sq').val(5);
		} else if($('#rnk_nm').val()==='사장'){
			$('#rnk_sq').val(6);
		}
		if($('#pst_nm').val()==='퇴사'){
			$('#pst_sq').val(0);
		} else if($('#pst_nm').val()==='팀원'){
			$('#pst_sq').val(1);
		} else if($('#pst_nm').val()==='파트장'){
			$('#pst_sq').val(2);
		} else if($('#pst_nm').val()==='팀장'){
			$('#pst_sq').val(3);
		} else if($('#pst_nm').val()==='실장'){
			$('#pst_sq').val(4);
		} else if($('#pst_nm').val()==='본부장'){
			$('#pst_sq').val(5);
		} else if($('#pst_nm').val()==='사업부장'){
			$('#pst_sq').val(6);
		}
		$('#emp_bs_tel1').val($('#bes_tel').val().split('-')[0]);
		$('#emp_bs_tel2').val($('#bes_tel').val().split('-')[1]);
		$('#emp_bs_tel3').val($('#bes_tel').val().split('-')[2]);
		
		$('#registerMemberForm').attr("action", "${root}/admin/account/modify.tree").submit();
	});
	
	$('tr.emp').click(function(){
		var emp_sq=$(this).attr("id");
		$.ajax({
			type : "GET"
			,url : "${root}/admin/account/getmember.tree"
			,dataType : "json"
			,data : {
				"emp_sq" : emp_sq
			}
			,success : function(data) {
				var emp_sq = data.emp_sq;
				var emp_nm = data.emp_nm;
				var emp_bdate = data.emp_bdate;
				var emp_sex = data.emp_sex;
				var emp_reg = data.emp_reg;
				var emp_exit = data.emp_exit;
				var emp_tel1 = data.emp_tel1;
				var emp_tel2 = data.emp_tel2;
				var emp_tel3 = data.emp_tel3;
				var emp_bs_tel1 = data.emp_bs_tel1;
				var emp_bs_tel2 = data.emp_bs_tel2;
				var emp_bs_tel3 = data.emp_bs_tel3;
				var emp_ml_id = data.emp_ml_id;
				var emp_ml_addr = data.emp_ml_addr;
				var emp_addr = data.emp_addr;
				var emp_addr_dt = data.emp_addr_dt;
				var dpt_nm = data.dpt_nm;
				var pst_nm = data.pst_nm;
				var rnk_nm = data.rnk_nm;
				$('#emp_sq').val(emp_sq);
				$('#emp_nm').val(emp_nm);
				$('#emp_bdate').val(emp_bdate);
				$('#emp_sex').val(emp_sex);
				$('#emp_reg').val(emp_reg);
				$('#emp_exit').val(emp_exit);
				$('#tel').val(emp_tel1+'-'+emp_tel2+'-'+emp_tel3);
				$('#bes_tel').val(emp_bs_tel1+'-'+emp_bs_tel2+'-'+emp_bs_tel3);
				$('#email').val(emp_ml_id+emp_ml_addr);
				$('#address').val(emp_addr+' '+emp_addr_dt);
				$('#dpt_nm').val(dpt_nm);
				$('#pst_nm').val(pst_nm);
				$('#rnk_nm').val(rnk_nm);
			}
			,error : function(e) {
				alert("에러");
			}
		})
	})
});
</script>
</body>
</html>
