<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script src="/treeware/assets/js/common.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<link rel="stylesheet" href="/treeware/assets/css/form.css">
<%@ include file="/assets/common/modal/member.jsp" %>
<script>
$(document).ready(function() {
	
	var a = ${writer.dpt_sq};
	var b = change_dpt(a);
	$("#userDpt").html(b);
	
	var emp1 = $("#emp1").text();			//1차결재자
	var emp2 = $("#emp2").text();			//2차결재자
	var emp3 = $("#emp3").text();			//최종결재자
	var emp = $("#tempUser").text();		//접속중인 사원
	var status = ${formDto.APV_OK_SQ}; 		//문서의 결재단계
	var apvsq = ${formDto.APV_SQ}; 			//문서번호
	var emp_status = ${formDto.APV_OK_SQ};	//사원의 결재단계 진행권한
	
	//결재단계에 해당하는 도장표시
	//0:진행중 1:1차완료 2:2차완료 3:최종완료 4:보류
	if(status==1 || status==2 || status==3){
		$("#sign1").html("<img src='/treeware/assets/img/stamp/"+${formDto.EMP_1ST_SQ}+".png' height='50px'>");
	}
	if(status==2 || status==3){
		$("#sign2").html("<img src='/treeware/assets/img/stamp/"+${formDto.EMP_2ND_SQ}+".png' height='50px'>");
	}
	if(status==3){
		$("#sign3").html("<img src='/treeware/assets/img/stamp/"+${formDto.EMP_FNL_SQ}+".png' height='50px'>");
	}	
	//결재자 해당하는 사원만 signBtns 사용
	if(emp == emp1){
		emp_status=1;
	}else if(emp == emp2){
		emp_status=2;
	}else if(emp == emp3){
		emp_status=3;
	}else{
		$("#signBtns").html('');
	}
	if(emp_status==status || emp_status<status){
		$("#signBtns").html('');
	}
	
	if(status==4){
		$(".nonono").html("<td  class='info_img'  id='sign1' colspan='3'><span style='color:#dc3545'>반려처리</span></td>")
	}
	
	$("#approveBtn").click(function() {
		if(confirm("아래 서류를 승인하시겠습니까?")){
			$("#apvsq").val(apvsq);
			$("#oksq").val(emp_status);
			$("#signform").attr("action","${root}/member/sign/change.tree").submit();
		}
		else{
		  	return;
		}
	});
	
	$("#denyBtn").click(function() {
		var con_test = confirm("아래 서류를 반려하시겠습니까?");
		if(con_test == true){
			emp_status=4;
			$("#apvsq").val(apvsq);
			$("#oksq").val(emp_status);
			$("#signform").attr("action","${root}/member/sign/change.tree").submit();
		}
		else if(con_test == false){
		  	return;
		}
	});
});

</script>
<div class="row" style="border:1px solid #777;padding:20px;margin:20px;border-radius:1px;">
	<div class="col-md-12" id="doc" align="center">
			<h3 style="text-decoration: underline;">기 안 문</h3>
			<span id="putnum"></span>
	</div>
	<div class="col-md-12">
		<form class="signform" id="signform" name="signform" method="POST">
		<input type="hidden" id="apvsq" name="APV_SQ" value="">
		<input type="hidden" id="oksq" name="APV_OK_SQ" value="">
		<div id="tempUser" style="color:white">${userInfo.emp_nm}</div>
		<div id="info">
			<table style="width:100%">
				<tr>
					<td width="50%">
						<table style="height:5px">
							<tr>
								<td>
									<b style="line-height:160%">
										| 기안자<br>
										| 부서<br>
										| 전화<br>
										| 이메일<br>
										| 작성일<br>
									</b>
								</td>
								<td>
									<span style="line-height:160%">
									: <span id="emp">${writer.emp_nm}</span><br>
									: <span id="userDpt"></span><br>
									: ${writer.emp_tel1}-${writer.emp_tel2}-${writer.emp_tel3}<br>
									: ${writer.emp_ml_id}${writer.emp_ml_addr}<br>
									: ${formDto.APV_WRITE_DATE}<br>
									</span>
								</td>
							</tr> 
						</table>
					</td>
					<td width="50%">
						<table id="sign" class="formtable" align="right">
							<tr>
								<td class="info_title" width="60px" style="background-color:#eee;text-align:center">1차결재</td>
								<td class="info_title" width="60px" style="background-color:#eee;text-align:center">2차결재</td>
								<td class="info_title" width="60px" style="background-color:#eee;text-align:center">최종결재</td>
							</tr>
							<tr>
								<td class="info_text" id="emp1" style="text-align:center">${approver1.emp_nm}</td>
								<td class="info_text" id="emp2" style="text-align:center">${approver2.emp_nm}</td>
								<td class="info_text" id="emp3" style="text-align:center">${approver3.emp_nm}</td>
							</tr>
							<tr class="nonono">
								<td class="info_img" id="sign1" ></td>
								<td class="info_img" id="sign2" ></td>
								<td class="info_img" id="sign3" ></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div id="content">
			<table id="second" class="formtable" style="width:100%">
				<tr>
					<td width="20%" class="info_title" style="background-color:#eee;text-align:center">문서번호</td>
					<td width="80%" colspan="3">
						<input type="text" style="border:0px" readonly="readonly" value="${formDto.APV_SQ}">
					</td>
				</tr> 
				<tr>
					<td width="20%" class="info_title" style="background-color:#eee;text-align:center">수 신 처</td>
					<td width="80%" colspan="3">
						<span id="memberTo">${approver1.emp_nm}, ${approver2.emp_nm}, ${approver3.emp_nm}</span>
					</td>
				</tr>
				<tr>
					<td width="20%" class="info_title" style="background-color:#eee;text-align:center">제 목</td>
					<td width="80%" colspan="3">
						<input type="text" style="border:0px;width:100%" readonly="readonly" value="${formDto.APV_TITLE}">
					</td>
				</tr>
				<tr>
					<td width="20%" class="info_title" style="background-color:#eee;text-align:center">시행일자</td>
					<td width="80%">
						<input id="date" name="APV_DATE" type="date" style="width:100%;border:0px" readonly="readonly" value="${formDto.APV_DATE}">
					</td>
				</tr>
				<tr>
					<td class="info_title" colspan="4" style="background-color:#eee;text-align:center">상 세 내 용</td>
				</tr>
			</table>
		</div>
		<br>
		<textarea id="content" rows="20" name="APV_CTT" style="width:100%;padding:20px 20px 40px 20px " readonly="readonly">${formDto.APV_CTT}</textarea>
		<p id="signBtns" style="text-align:center;margin:30px 0 30px 0 ">
			<button class="btn btn-primary" type="button" id="approveBtn" style="padding:5px 15px">승인하기</button>
			<button class="btn btn-danger" type="button" id="denyBtn" style="padding:5px 15px">반려하기</button>
			<a href="${root}/member/sign/main.tree">
				<button class="btn btn-default" type="button" id="listBtn" style="padding:5px 15px">
							목록으로
				</button>
			</a>
		<p>
		<p id="controlBtns" style="text-align:center;margin:30px 0 30px 0 ">
			<a href="${root}/member/sign/sendbox.tree">
				<button class="btn btn-default" type="button" id="listBtn" style="padding:5px 15px;margin:10px 20px;alignt:right">
							목록으로
				</button>
			</a>
		<p>
	</form>
</div>
</div>
