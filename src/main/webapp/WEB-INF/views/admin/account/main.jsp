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
								<div class="row">
									<div class="col-md-12" style="padding: 0 20px">
										<!-- 주소록 콘텐츠 페이지  -->
										<%-- 								<IFRAME ID="testIframe" Name="testIframe" FRAMEBORDER=0 SCROLLING="no" width=100% height=100% SRC="${root}/assets/common/admin/account/list.jsp"></IFRAME> --%>
										<div class="buttonmenu" align="center"
											style="margin: 20px 0 20px 0">
											<div class="row" style="width: 100%">
												<div style="width: 60%; text-align: left">
													<table style="width:100%">
														<tr>
															<td>
															<p style="color:#007bff"><span id="dptname"></span> 전체목록 [${page}명]</p>
															<input type="hidden" id="dpt_sq" name="dpt_sq">
															</td>
														</tr>
													</table>
												</div>
												<div style="width: 40%; text-align: right">
													<button id="btnEdit" class="simplebtn1">선택수정</button>
													<button id="btnDept" class="simplebtn1" data-toggle="modal" data-target="#departments" >부서목록</button>
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
<%-- 												<c:forEach var="list" items="${employeeInfo}" varStatus="status"> --%>
<!-- 													<tr> -->
<!-- 														<td> -->
<!-- 															<div class="form-check"> -->
<!-- 																<label class="form-check-label"> <input -->
<!-- 																	class="form-check-input task-select" type="checkbox"> -->
<!-- 																	<span class="form-check-sign"></span> -->
<!-- 																</label> -->
<!-- 															</div> -->
<!-- 														</td> -->
<%-- 														<td>${list.emp_nm}</td> --%>
<%-- 														<td>${list.emp_bs_tel1}-${list.emp_bs_tel2}-${list.emp_bs_tel3}</td> --%>
<%-- 														<td>${list.emp_ml_id}${list.emp_ml_addr}</td> --%>
<%-- 														<td>${departmentInfo[status.index].dpt_nm}</td> --%>
<%-- 														<td>${rankInfo[status.index].rnk_nm}</td> --%>
<%-- 														<td>${list.emp_tel1}-${list.emp_tel2}-${list.emp_tel3}</td> --%>
<!-- 														<td class="td-actions text-left"> -->
<!-- 															<div class="form-button-action"> -->
<!-- 																<button type="button" data-toggle="tooltip" -->
<!-- 																	title="Edit Task" -->
<!-- 																	class="btn btn-link btn-simple-primary"> -->
<!-- 																	<i class="la la-edit"></i> -->
<!-- 																</button> -->
<!-- 																					<button type="button" data-toggle="tooltip" title="Remove" class="btn btn-link btn-simple-danger"> -->
<!-- 																						<i class="la la-times"></i> -->
<!-- 																					</button> -->
<!-- 															</div> -->
<!-- 														</td> -->
<!-- 													</tr> -->
<%-- 												</c:forEach> --%>
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
														<form class="navbar-left navbar-form nav-search mr-md-3" action="" style="width:230px">
															<div class="input-group" style="opacity:0.6">
																<input type="text" placeholder="Search ..." class="form-control">
																<div class="input-group-append">
																	<span class="input-group-text">
																		<i class="la la-search search-icon"></i>
																	</span>
																</div>
															</div>
														</form>
													</td>
												</tr>
											</table>
										</div>
										<br>
										<br>
										<br>
									</div>
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

<%-- <c:forEach items="${employeeInfo}" var="item"> --%>
<%-- list.push('${item.emp_nm}'); --%>
<%-- </c:forEach> --%>

<script type="text/javascript">
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

$(document).ready(function(){
	
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

	function viewlist(){
		$('#view').empty();
		for(var i=(first-1);i<dataPerPage;i++){
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
		$('#paging').append('<li class="page-item"><a id="pre" class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span>');
		for(var i=first;i<=last;i++){
			$('#paging').append('<li class="page-item"><a class="page-link" href="#">'+i+'</a></li>');
		}
		$('#paging').append('<li class="page-item"><a id="next" class="page-link" href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span>');
	}
	viewpaging();
	if(currentPage>10){
		$('#pre').click(function(){
			first = first - 10;
			pageCount = pageCount - 10;
			currentPage = last;
			viewpaging();
		});
	}
	if(last<totalPage){
		$('#next').click(function(){
			first = first + 10;
			pageCount = pageCount + 10;
			currentPage = first;
			viewpaging();
		});
	}
});
</script>
</body>
</html>