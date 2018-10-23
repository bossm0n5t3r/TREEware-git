<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp"%>
<%-- <%@ include file="/assets/common/admin/account/import.jsp"%> --%>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/admin/home/top.jsp"%>
		<%@ include file="/assets/common/admin/account/side.jsp"%>
		<script>
		$(document).ready(function(){
			document.getElementById("menu1").setAttribute("class", "nav-item active");
			document.getElementById("menu2").setAttribute("class", "nav-item");
			document.getElementById("menu3").setAttribute("class", "nav-item");
		});
		</script>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid" style="height: 1100px">

					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="card-title">사원목록</div>
							</div>
							<div class="card-body">
								<div class="row" align="center">
									<div class="col-md-1"></div>
									<div class="col-md-10">
										<!-- 주소록 콘텐츠 페이지  -->
										<%-- 								<IFRAME ID="testIframe" Name="testIframe" FRAMEBORDER=0 SCROLLING="no" width=100% height=100% SRC="${root}/assets/common/admin/account/list.jsp"></IFRAME> --%>
										<div class="buttonmenu" align="center" style="margin: 20px 0 20px 0">
											<div class="row" style="width: 100%">
												<div style="width: 70%; text-align: left">
													<table style="width:100%">
														<tr>
															<td>
															<p style="color:#007bff"><span id="dptname"></span> 전체목록 [<span id="pageNumber"></span>명]</p>
															<input type="hidden" id="dpt_sq" name="dpt_sq">
															</td>
														</tr>
													</table>
												</div>
												<div style="width: 30%; text-align: right">
													<form class="navbar-left navbar-form nav-search mr-md-3" action="">
															<table style="width:100%">
																<tr>
																	<td style="width:30%">
																	<select id="key" name="key" class="form-control" style="font-size:100%">
																			<option value='emp_nm'>사원명</option>
																			<option value='dpt_sq'>부서</option>
																			<option value='rnk_sq'>직위</option>
																	</select>
																	</td>
																	<td style="width:70%">
																		<div class="input-group" style="opacity:0.6">
																		<input id="search_word" name="search_word" type="text" placeholder="Search ..." class="form-control">
																		<input type="hidden" id="word" name="word">
																		<div class="input-group-append">
																			<span class="input-group-text">
																				<i id="searchBtn" class="la la-search search-icon"></i>
																			</span>
																		</div>
																	</div>
																	</td>
																</tr>
															</table>
														</form>
												</div>
											</div>
										</div>
										<table class="table-hover" id="listtable"
											style="width: 100%; font-size: 100%">
											<thead>
												<tr style="border-bottom: 1px #ddd solid">
													<th width="5%">
														<div class="form-check">
															<label class="form-check-label" style="height:10px"> <input
																class="form-check-input  select-all-checkbox"
																type="checkbox" data-select="checkbox"
																data-target=".task-select"> <span
																class="form-check-sign"></span>
															</label>
														</div>
													</th>
													<th width="10%">이름</th>
													<th width="15%">회사전화</th>
													<th width="20%">이메일</th>
													<th width="10%">부서</th>
													<th width="10%">직위</th>
													<th width="15%">휴대전화</th>
													<th width="5%">수정</th>
												</tr>
											</thead>
											<tbody id="view">

											</tbody>
										</table>
										<!-- 주소록 콘텐츠 끝 -->
										<br>
										<br>
										<br>
										<hr>
										<br>
										<div class="clear"></div>
										<div align="center">
											<table>
												<tr align="center">
													<td>
														<ul class="pagination pg-default pg-small" id="paging" style="align:center"></ul>
													</td>
												</tr>
											</table>
											<table>
												<tr>
													<td>
													</td>
												</tr>
											</table>
										</div>
										<br>
										<br>
										<br>
									</div>
									<div class="col-md-1"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%@ include file="/assets/common/modal/departments.jsp" %>
			<%@ include file="/assets/common/footer.jsp"%>
		</div>
	</div>
<script type="text/javascript">
//목록객체생성
var totalData = '${page}';
var dataPerPage = 10;
var first = 1;
var last;
var pageCount = 10;
var currentPage = 1;
var totalPage = Math.ceil((totalData-1)/dataPerPage);
var emp_nm = new Array();
var emp_bs_tel1 = new Array();
var emp_bs_tel2 = new Array();
var emp_bs_tel3 = new Array();
var emp_ml_id = new Array();
var emp_ml_addr = new Array();
var dpt_nm = new Array();
var rnk_nm = new Array();
var emp_tel1 = new Array();
var emp_tel2 = new Array();
var emp_tel3 = new Array();
var employee;

//목록입력
$(document).ready(function(){
	$('#pageNumber').text('${page}');
	
	$("#search_word").keyup(function(){
		dpt_nm_to_sq();
		rnk_nm_to_sq();
		if($("#key").val()==='emp_nm'){
			empajax();
		}
	});
	
	$("#btnEdit").click(function() {
		alert("수정페이지로");
	});
	'<c:forEach items="${employeeInfo}" var="item">'
	emp_nm.push('${item.emp_nm}');
	emp_bs_tel1.push('${item.emp_bs_tel1}');
	emp_bs_tel2.push('${item.emp_bs_tel2}');
	emp_bs_tel3.push('${item.emp_bs_tel3}');
	emp_ml_id.push('${item.emp_ml_id}');
	emp_ml_addr.push('${item.emp_ml_addr}');
	emp_tel1.push('${item.emp_tel1}');
	emp_tel2.push('${item.emp_tel2}');
	emp_tel3.push('${item.emp_tel3}');
	'</c:forEach>'
	'<c:forEach items="${departmentInfo}" var="item">'
	dpt_nm.push('${item.dpt_nm}');
	'</c:forEach>'
	'<c:forEach items="${rankInfo}" var="item">'
	rnk_nm.push('${item.rnk_nm}');
	'</c:forEach>'
	//목록출력
	function viewlist(){
		$('#view').empty();
		for(var i=((currentPage-1)*10);i<Math.min(pageCount,totalData);i++){
			$('#view').append('<tr>');
			$('#view').append('<td><div class="form-check"><label class="form-check-label" style="height:10px"><input class="form-check-input task-select" type="checkbox"><span class="form-check-sign"></span></label></div></td>');
			$('#view').append('<td>'+emp_nm[i]+'</td>');
			$('#view').append('<td>'+emp_bs_tel1[i]+'-'+emp_bs_tel2[i]+'-'+emp_bs_tel3[i]+'</td>');
			$('#view').append('<td>'+emp_ml_id[i]+emp_ml_addr[i]+'</td>');
			$('#view').append('<td>'+dpt_nm[i]+'</td>');
			$('#view').append('<td>'+rnk_nm[i]+'</td>');
			$('#view').append('<td>'+emp_tel1[i]+'-'+emp_tel2[i]+'-'+emp_tel3[i]+'</td>');
			$('#view').append('<td><div class="form-button-action"><button type="button" data-toggle="tooltip" title="Edit Task" class="btn btn-link btn-simple-primary"><i class="la la-edit"></i></button></div></td>');
			$('#view').append('</tr>');
		}
	}
	viewlist();
	function viewpaging(){
		last = Math.min(pageCount,totalPage);
		$('#paging').empty();
		$('#paging').append('<li class="page-item"><a id="pre" class="page-link" href="javascript:pre_click();" aria-label="Previous"><span aria-hidden="true">&laquo;</span>');
		for(var i=first;i<=last;i++){
			$('#paging').append('<li class="page-item"><a class="page-link" href="javascript:number_click('+i+')">'+i+'</a></li>');
		}
		$('#paging').append('<li class="page-item"><a id="next" class="page-link" href="javascript:next_click();" aria-label="Next"><span aria-hidden="true">&raquo;</span>');
	}
	viewpaging();
});
//목록출력
function viewlist(){
	$('#view').empty();
	for(var i=((currentPage-1)*10);i<Math.min(pageCount,totalData);i++){
		$('#view').append('<tr>');
		$('#view').append('<td><div class="form-check"><label class="form-check-label" style="height:10px"><input class="form-check-input task-select" type="checkbox"><span class="form-check-sign"></span></label></div></td>');
		$('#view').append('<td>'+emp_nm[i]+'</td>');
		$('#view').append('<td>'+emp_bs_tel1[i]+'-'+emp_bs_tel2[i]+'-'+emp_bs_tel3[i]+'</td>');
		$('#view').append('<td>'+emp_ml_id[i]+emp_ml_addr[i]+'</td>');
		$('#view').append('<td>'+dpt_nm[i]+'</td>');
		$('#view').append('<td>'+rnk_nm[i]+'</td>');
		$('#view').append('<td>'+emp_tel1[i]+'-'+emp_tel2[i]+'-'+emp_tel3[i]+'</td>');
		$('#view').append('<td><div class="form-button-action"><button type="button" data-toggle="tooltip" title="Edit Task" class="btn btn-link btn-simple-primary"><i class="la la-edit"></i></button></div></td>');
		$('#view').append('</tr>');
	}
}
//페이지번호출력
function viewpaging(){
	last = Math.min(pageCount,totalPage);
	$('#paging').empty();
	$('#paging').append('<li class="page-item"><a class="page-link" href="javascript:pre_click();" aria-label="Previous"><span aria-hidden="true">&laquo;</span>');
	for(var i=first;i<=last;i++){
		$('#paging').append('<li class="page-item"><a class="page-link" href="javascript:number_click('+i+')">'+i+'</a></li>');
	}
	$('#paging').append('<li class="page-item"><a class="page-link" href="javascript:next_click();" aria-label="Next"><span aria-hidden="true">&raquo;</span>');
}
//이전클릭이벤트
function pre_click(){
	if(first>10){
	first = first - 10;
	pageCount = pageCount - 10;
	currentPage = last;
	viewpaging();
	}
};
//다음클릭이벤트
function next_click(){
	if(last<totalPage){
	first = first + 10;
	pageCount = pageCount + 10;
	currentPage = first;
	viewpaging();
	}
};
//번호클릭이벤트
function number_click(data){
	currentPage = data;
	pageCount = dataPerPage * data;
	viewlist();
}

//사원검색
function memberSearch(){
	totalData=employee.length;
	currentPage = 1;
	totalPage = Math.ceil((totalData-1)/dataPerPage);
	$('#pageNumber').text(employee.length);
	$('#view').empty();
	for(var i=((currentPage-1)*10);i<Math.min(pageCount,totalData);i++){
		$('#view').append('<tr>');
		$('#view').append('<td><div class="form-check"><label class="form-check-label" style="height:10px"><input class="form-check-input task-select" type="checkbox"><span class="form-check-sign"></span></label></div></td>');
		$('#view').append('<td>'+employee[i].emp_nm+'</td>');
		$('#view').append('<td>'+employee[i].emp_bs_tel1+'-'+employee[i].emp_bs_tel2+'-'+employee[i].emp_bs_tel3+'</td>');
		$('#view').append('<td>'+employee[i].emp_ml_id+employee[i].emp_ml_addr+'</td>');
		$('#view').append('<td>'+change_dpt(employee[i].dpt_sq)+'</td>');
		$('#view').append('<td>'+change_rnk(employee[i].rnk_sq)+'</td>');
		$('#view').append('<td>'+employee[i].emp_tel1+'-'+employee[i].emp_tel2+'-'+employee[i].emp_tel3+'</td>');
		$('#view').append('<td><div class="form-button-action"><button type="button" data-toggle="tooltip" title="Edit Task" class="btn btn-link btn-simple-primary"><i class="la la-edit"></i></button></div></td>');
		$('#view').append('</tr>');
	}
	viewpaging();
}
function change_dpt(data){
	if(data ===0){
		return '퇴사';
	} else if(data ===1){
		return '관리부';
	} else if(data ===2){
		return '인사과';
	} else if(data ===3){
		return '무역부';
	} else if(data ===4){
		return '영업부';
	} else if(data ===5){
		return '판매부';
	}
}
function change_rnk(data){
	if(data ===0){
		return '퇴사';
	} else if(data ===1){
		return '사원';
	} else if(data ===2){
		return '대리';
	} else if(data ===3){
		return '과장';
	} else if(data ===4){
		return '차장';
	} else if(data ===5){
		return '부장';
	} else if(data ===6){
		return '사장';
	}
}
function dpt_nm_to_sq(){
	if($('#search_word').val()==='퇴사'){
		$('#word').val(0);
		searchajax();
	} else if($('#search_word').val()==='관리부'){
		$('#word').val(1);
		searchajax();
	} else if($('#search_word').val()==='인사과'){
		$('#word').val(2);
		searchajax();
	} else if($('#search_word').val()==='무역부'){
		$('#word').val(3);
		searchajax();
	} else if($('#search_word').val()==='영업부'){
		$('#word').val(4);
		searchajax();
	} else if($('#search_word').val()==='판매부'){
		$('#word').val(5);
		searchajax();
	}
}
function rnk_nm_to_sq(){
	if($('#search_word').val()==='퇴사'){
		$('#word').val(0);
		searchajax();
	} else if($('#search_word').val()==='사원'){
		$('#word').val(1);
		searchajax();
	} else if($('#search_word').val()==='대리'){
		$('#word').val(2);
		searchajax();
	} else if($('#search_word').val()==='과장'){
		$('#word').val(3);
		searchajax();
	} else if($('#search_word').val()==='차장'){
		$('#word').val(4);
		searchajax();
	} else if($('#search_word').val()==='부장'){
		$('#word').val(5);
		searchajax();
	} else if($('#search_word').val()==='사장'){
		$('#word').val(6);
		searchajax();
	}
}
function empajax(){
	$.ajax({
		type : "GET"
		,url : "${root}/admin/account/membersearch.tree"
		,dataType : "json"
		,data : {
			"key" : $("#key").val(),
			"word" : $("#search_word").val()
		}
		,success : function(data) {
			employee = data.employee
			memberSearch();
		}
		,error : function(e) {
			alert("에러");
		}
	});
}
function searchajax(){
	$.ajax({
		type : "GET"
		,url : "${root}/admin/account/membersearch.tree"
		,dataType : "json"
		,data : {
			"key" : $("#key").val(),
			"word" : $("#word").val()
		}
		,success : function(data) {
			employee = data.employee
			memberSearch();
		}
		,error : function(e) {
			alert("에러");
		}
});
}
//사원검색 페이지
function searchPaging(){
	last = Math.min(pageCount,totalPage);
	$('#paging').empty();
	$('#paging').append('<li class="page-item"><a class="page-link" href="javascript:pre_click();" aria-label="Previous"><span aria-hidden="true">&laquo;</span>');
	for(var i=first;i<=last;i++){
		$('#paging').append('<li class="page-item"><a class="page-link" href="javascript:number_click('+i+')">'+i+'</a></li>');
	}
	$('#paging').append('<li class="page-item"><a class="page-link" href="javascript:next_click();" aria-label="Next"><span aria-hidden="true">&raquo;</span>');
}
</script>
</body>
</html>