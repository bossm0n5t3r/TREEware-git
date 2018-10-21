<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script src="/treeware/assets/js/common.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<link rel="stylesheet" href="/treeware/assets/css/form.css">
<%@ include file="/assets/common/modal/member.jsp" %>
<script>
$(document).ready(function() {
	$("#writeBtn").click(function() {
		if($("#members").val()==''){
			alert("수신처를 추가해주세요");
			return;
		}else if($("#title").val() == '') {
			alert("제목을 입력해주세요");
			return;
		} else if($("#date2").val() == '') {
			alert("시행일을 입력해주세요");
			return;
		} else if($('#text').val()==''){
			alert("내용을 입력해주세요");
			return;
		}else {
// 			이페이지가 iframe이라서 ${root}로는 안넘어가는건지?
// 			$("#signform").attr("action","${root}/member/sign/write.tree").submit();
			$("#signform").attr("action","/treeware/member/sign/write.tree").submit();
		}
	});
	var a = ${userInfo.dpt_sq};
	var b = change_dpt(a);
	$("#dpt_name").text(b);
	livetime();
});

//결재서류에 보여지는 현재시간
function livetime() {
	$.ajax({
		type : "GET"
		,url : "/treeware/member/commute/livetime.tree"
		,dataType : "json"
		,success : function(data) {
			$("#temp_date").html(data.date);
			$("#temp_time").html(data.time);
			setTimeout("livetime()", 1000);
		}
		,error : function(e) {
			alert("error 발생");
		}
	})
}

//모달 member에서 선택한 결재자목록
var memberlist = "";
var memberCnt = 0;
var cnt = [0,0,0];
function memberDelete0(a){
	$("#memberName0").html('').css('background-color','#eee');
	$("#memberSign0").html('').css('background-color','#eee');
	$("#memberEmpnm0").val('');
	memberList();
	memberCnt--;
	cnt[0] = 0;
}
function memberDelete1(a){
	$("#memberName1").html('').css('background-color','#eee');
	$("#memberSign1").html('').css('background-color','#eee');
	$("#memberEmpnm1").val('');
	memberList();
	memberCnt--;
	cnt[1] = 0;
}
function memberDelete2(a){
	$("#memberName2").html('').css('background-color','#eee');
	$("#memberSign2").html('').css('background-color','#eee');
	$("#memberEmpnm2").val('');
	memberList();
	memberCnt--;
	cnt[2] = 0;
}
function memberList(){
	var memberlist = $("#memberName0").html() + "&nbsp;" + $("#memberName1").html() +"&nbsp;" + $("#memberName2").html();
	$("#memberTo").html(memberlist);
}

</script>
<div class="row" style="border:1px solid #777;padding:20px;border-radius:1px;">
	<div id="doc" align="center">
		<h2 style="text-decoration: underline;">기 안 문</h2>
		<span id="putnum"></span>
	</div>
	<form class="signform" id="signform" method="POST" name="signform">
	<input type="hidden" id="formName" name="APV_FORM_SQ" value="100">
	<input type="hidden" id="userEmpnm" name="EMP_SQ" value="">
	<input type="hidden" id="userEmpnm" name="EMP_SQ" value="">
	<input type="hidden" id="memberEmpnm0" name="EMP_1ST_SQ" value="">
	<input type="hidden" id="memberEmpnm1" name="EMP_2ND_SQ" value="">
	<input type="hidden" id="memberEmpnm2" name="EMP_FNL_SQ" value="">
	<div id="info" class="row">
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
								: ${userInfo.emp_nm}<br>
								: <span id="dpt_name"></span><br>
								: ${userInfo.emp_tel1}-${userInfo.emp_tel2}-${userInfo.emp_tel3}<br>
								: ${userInfo.emp_ml_id}${userInfo.emp_ml_addr}<br>
								: <span id="temp_date"></span>,&nbsp;<span id="temp_time"></span><br>
								</span>
							</td>
						</tr> 
					</table>
				</td>
				<td width="50%">
					<table id="sign" class="formtable" align="right">
						<tr>
							<td class="info_title" width="80px" style="background-color:#eee;text-align:center">1차결재</td>
							<td class="info_title" width="80px" style="background-color:#eee;text-align:center">2차결재</td>
							<td class="info_title" width="80px" style="background-color:#eee;text-align:center">최종결재</td>
						</tr>
						<tr>
							<td class="info_text" id="memberName0" style="background-color:#eee;text-align:center"></td>
							<td class="info_text" id="memberName1" style="background-color:#eee;text-align:center"></td>
							<td class="info_text" id="memberName2" style="background-color:#eee;text-align:center"></td>
						</tr>
						<tr>
							<td class="info_img" id="memberSign0" style="background-color:#eee"></td>
							<td class="info_img" id="memberSign1" style="background-color:#eee"></td>
							<td class="info_img" id="memberSign2" style="background-color:#eee"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	<table id="second" class="formtable" style="width:100%">
		<tr>
			<td width="20%" class="info_title" style="background-color:#eee;text-align:center">문서번호</td>
			<td width="80%" colspan="3" style="background-color:#eee">
			<input type="text" name="APV_SQ" style="border:0px;background-color:#eee" >
			</td>
		</tr> 
		<tr>
			<td width="20%" class="info_title" style="background-color:#eee;text-align:center">수 신 처</td>
			<td width="80%" colspan="3">
				<span id="memberTo"></span>
				<a href="#member" rel="modal:open">
					<input type="button" value="찾아보기">
				</a>
			</td>
		</tr>
		<tr>
			<td width="20%" class="info_title" style="background-color:#eee;text-align:center">제 목</td>
			<td width="80%" colspan="3">
				<input id="title" name="APV_TITLE" type="text" style="width:100%">
			</td>
		</tr>
		<tr>
			<td width="20%" class="info_title" style="background-color:#eee;text-align:center">시행일자</td>
			<td width="80%">
				<input id="date" name="APV_DATE" type="date" style="width:100%">
			</td>
		</tr>
		<tr>
			<td class="info_title" colspan="4" style="background-color:#eee;text-align:center">상 세 내 용</td>
		</tr>
	</table>
	<br>
		<textarea id="content" name="APV_CTT" rows="30" style="width:100%"></textarea>
	<p style="text-align:center;margin:30px 0 30px 0 ">
		<button type="button" id="writeBtn" style="padding:5px 15px">등록하기</button>
		<button type="button" id="cancelBtn" style="padding:5px 15px">등록취소</button>
	<p>
</form>
</div>