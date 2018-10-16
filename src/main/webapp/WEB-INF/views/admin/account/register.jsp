<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
	<title>트리웨어 관리자</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@ include file="/assets/common/import.jsp" %>
<script src="${root}/assets/js/register.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>	
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/admin/home/top.jsp" %>
		<%@ include file="/assets/common/admin/account/side.jsp" %>
		<div class="main-panel" >
			<div class="content">
				<div class="container-fluid">
					<div align="center" style="padding:10px">
						<div class="col-md-12">
							<!-- card -->
							<div class="card" style="width:100%;padding:30px 30px 60px 30px;text-align:left">
								<div class="card-header">
									<div class="card-title">사원등록</div>
									<label>
										<br>
										<br> - 파란색박스는 반드시 작성해야합니다.
										<br> - 사원번호는 자동으로 부여됩니다.
										<br> - 초기 아이디와 비밀번호는 사원번호와 생년월일로 자동 부여된 후, 사원 로그인시 1회 변경 가능합니다.
										<br> - 사원이 처음 설정한 아이디는 회사 이메일 주소로 반영됩니다.
										<br> - 하단의 입력추가/입력삭제 버튼은 여러명을 동시에 입력하기위한 버튼입니다.(구현예정)
										<br>
										<br>
										<br>
									</label>
								</div>
								<div class="card-body">
									<!-- 사원등록1 -->
									<br>
									<form class="form" method="POST" id="registerMemberForm" name="registerMemberForm">
										<div class="row">
											<div class="col-md-2" style="padding:0 20px 0 0">
												<label class="form-check-label">
													<input class="form-check-input" type="checkbox" value="">
													<span class="form-check-sign">
														사원번호<input id="emp_sq" name="emp_sq" type="text" readonly="readonly" value="" style="width:140px;margin:0 10px">
													</span>
												</label>
												
												<img id="photoimg" height="300px" width="100%" style="margin:5px 0px 10px 0px;padding:5px">
												<input name="photo" id="photo" type="file">
											</div>
											<div id="info" class="col-md-10">
												<div class="row">
													<div style="width:50%" class="box-group">
														<input name="emp_id" id="emp_id" type="text"class="mainbox" placeholder="사용할 아이디" readonly="readonly">
													</div>
													<div style="width:50%" class="box-group">
														<input id="emp_pw" name="emp_pw" type="password" class="mainbox" placeholder="비밀번호" readonly="readonly">
													</div>
													<div style="width:100%;border:#007fff 1px solid;margin:5px;border-radius:8px">
														<div class="row" style="margin:5px">
															<div style="width:50%" class="box-group">
																<table style="width:100%">
																<tr>
																	<td><input type="text" name="dptname" id="dptname" class="mainbox" style="border:0" placeholder="부서명을 선택하세요" required readonly="readonly">
																	<input type="hidden" id="dpt_sq" name="dpt_sq">
																	</td>
																	
																	<td align="right">
																		<input name="dept" id="dept" data-toggle="modal" data-target="#departments" class="btn btn-primary btn-sm" type="button" value="찾아보기">
																	</td>
																</tr>
																</table>
															</div>
															<div style="width:25%" class="box-group">
																<select id="rnk_sq" name="rnk_sq" class="form-control" style="font-size:100%">
																	<option value='0' disabled>직위선택</option>
																	<option value='1'>사원</option>
																	<option value='2'>대리</option>
																	<option value='3'>과장</option>
																	<option value='4'>차장</option>
																	<option value='5'>부장</option>
																	<option value='6'>사장</option>
																</select>
															</div>
															<div style="width:25%" class="box-group">
																<select id="pst_sq" name="pst_sq" class="form-control" style="font-size:100%">
																	<option value='0' disabled>직책선택</option>
																	<option value='1'>팀원</option>
																	<option value='2'>파트장</option>
																	<option value='3'>팀장</option>
																	<option value='4'>실장</option>
																	<option value='5'>본부장</option>
																	<option value='6'>사업부장</option>
																</select>
															</div>
															<div style="width:20%" class="box-group">
																<input name="emp_nm" id="emp_nm" type="text" class="mainbox" placeholder="이름" required>
															</div>
															<div style="width:25%" class="box-group">
																<input name="tel" id="tel" type="text" class="mainbox" placeholder="휴대폰번호" maxlength="13" required>
																<input type="hidden" id="emp_tel1" name="emp_tel1">
																<input type="hidden" id="emp_tel2" name="emp_tel2">
																<input type="hidden" id="emp_tel3" name="emp_tel3">
															</div>
															<div style="width:25%" class="box-group">
																<input name="emp_bdate" id="emp_bdate" type="text" class="mainbox" placeholder="생년월일 8자리" onkeyup="" required>
															</div>
															<div style="width:15%" class="box-group">
																<select id="emp_sex" name="emp_sex" class="form-control" style="font-size:100%" style="border:#007fff 1px solid;">
																	<option value='0' disabled>성별선택</option>
																	<option value='M'>남성</option>
																	<option value='F'>여성</option>
																</select>
															</div>
															<div style="width:15%" class="box-group">
																<select id="pms_sq" name="pms_sq" class="form-control" style="font-size:100%">
																	<option value='1'>일반</option>
																	<option value='2'>관리자권한</option>
																</select>
															</div>
															<div style="width:100%" class="box-group">
																<input type="text" name="emp_crt" id="emp_crt" class="mainbox" placeholder="자격증" required>
															</div>
														</div>
													</div>
													<div style="width:50%" class="box-group">
														<table style="width:100%">
															<tr>
																<td>
																	<input type="hidden" name="emp_zip" id="emp_zip" value="">
																	<input type="text" name="emp_addr" id="emp_addr" class="mainbox" style="border:0" placeholder="우편번호를 검색하세요">
																</td>
																<td align="right">
																	<input name="findzip" id="findzip" onclick="search_zip()" class="btn btn-default btn-sm" type="button" value="찾아보기">
																</td>
															</tr>
														</table>
													</div>
													<div style="width:50%" class="box-group"><input type="text" name="emp_addr_dt" id="emp_addr_dt" class="mainbox" placeholder="상세주소를 입력하세요"></div>
													<div style="width:50%" class="box-group"><input type="text" name="email" id="email" class="mainbox" placeholder="이메일"></div>
													<input type="hidden" name="emp_ml_id" id="emp_ml_id" class="mainbox" placeholder="이메일">
													<input type="hidden" name="emp_ml_addr" id="emp_ml_addr" class="mainbox" placeholder="이메일">
													<div style="width:50%" class="box-group"><input type="text" name="phone" id="phone" class="mainbox" placeholder="내선번호" required></div>
													<input type="hidden" name="emp_bs_tel1" id="emp_bs_tel1" class="mainbox" placeholder="내선번호" required>
													<input type="hidden" name="emp_bs_tel2" id="emp_bs_tel2" class="mainbox" placeholder="내선번호" required>
													<input type="hidden" name="emp_bs_tel3" id="emp_bs_tel3" class="mainbox" placeholder="내선번호" required>
													<div id="idAlert" class="spanalert" style="color:#ffd001;margin: 0 0 20px 0;width:100%"></div></div>
												</div>
											</div>
										</form>
									<hr>
								</div>
							</div>
							<!-- card end -->
							<div class="card-action" style="text-align:center">
								<button class="btn btn-default" onclick="" style="width:120px;padding:10px;margin:5px">입력추가</button>
								<button class="btn btn-default" onclick="" style="width:120px;padding:10px;margin:5px">선택삭제</button>
								<button class="btn btn-success" onclick="javascript:submit()" style="width:120px;padding:10px;margin:5px">등록하기</button>
								<button class="btn btn-danger" onclick="javascript:goback()" style="width:120px;padding:10px;margin:5px">작성취소</button>
							</div>
							<!-- register form end-->
						</div>	
					</div>
					<%@ include file="/assets/common/modal/departments.jsp" %>
					<%@ include file="/assets/common/modal/zipcode.jsp" %>
				</div>
			</div>
		<%@ include file="/assets/common/footer.jsp" %>
		</div>1
	</div>
<script>
$(document).ready(function (){
		var dt = new Date();
		var year = dt.getFullYear();
		var empsq;
		var cnt = parseInt('${cnt}') + 1;
		empsq = "TREE"+year + cnt;
		document.getElementById("emp_sq").value = empsq;
		document.getElementById("emp_id").value = empsq;
		document.getElementById("emp_pw").value = "1234";
		
		var upload = document.getElementById('photo'),
	    	photoimg = document.getElementById('photoimg');

		photoimg.src = "/treeware/assets/img/photo.jpg";
	 
		upload.onchange = function (e) {
		  e.preventDefault();
		  var file = upload.files[0],
		      reader = new FileReader();
		  reader.onload = function (event) {  
			var img = new Image(); 
		    img.src = event.target.result;
		    if (img.width > 560) {
		      img.width = 560;
		    }
		    photoimg.src = img.src;
		  };
		  reader.readAsDataURL(file);
	  return false;
	};
});
</script>
</body>
</html>
