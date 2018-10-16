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
<!-- 									<div class="col-md-3"> -->
<!-- 										<div class="card-sub"> -->
<!-- 											<div style="width: 170px"> -->
<!-- 												<table style="width: 100%"> -->
<!-- 													<tr> -->
<!-- 														<td><input type="text" style="width: 130px" -->
<!-- 															placeholder="검색어입력"></td> -->
<!-- 														<td><input type="button" value="검색" -->
<!-- 															style="font-size: 70%; padding: 4px 10px"></td> -->
<!-- 													</tr> -->
<!-- 												</table> -->
<!-- 												<hr> -->
<!-- 												<ul id="tree" class="ztree" -->
<!-- 													style="width: 100%; overflow: auto;"></ul> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
									<div class="col-md-12" style="padding: 0 20px">
										<!-- 주소록 콘텐츠 페이지  -->
										<%-- 								<IFRAME ID="testIframe" Name="testIframe" FRAMEBORDER=0 SCROLLING="no" width=100% height=100% SRC="${root}/assets/common/admin/account/list.jsp"></IFRAME> --%>
										<div class="buttonmenu" align="center"
											style="margin: 20px 0 20px 0">
											<div class="row" style="width: 100%">
												<div style="width: 60%; text-align: left; padding: 5px">
													<h6>전체목록</h6>
												</div>
												<div style="width: 40%; text-align: right">
													<button class="simplebtn1">선택수정</button>
												</div>
											</div>
										</div>
										<table class="table-hover" id="listtable"
											style="width: 100%; font-size: 100%">
											<thead>
												<tr style="border-bottom: 1px #ddd solid">
													<th width="5%">
														<div class="form-check">
															<label class="form-check-label"> <input
																class="form-check-input  select-all-checkbox"
																type="checkbox" data-select="checkbox"
																data-target=".task-select"> <span
																class="form-check-sign"></span>
															</label>
														</div>
													</th>
													<th width="10%">이름</th>
													<th width="17%">회사전화</th>
													<th width="20%">이메일</th>
													<th width="10%">부서</th>
													<th width="10%">직위</th>
													<th width="15%">휴대전화</th>
													<th width="3%">수정</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="list" items="${employeeInfo}" varStatus="status">
													<tr>
														<td>
															<div class="form-check">
																<label class="form-check-label"> <input
																	class="form-check-input task-select" type="checkbox">
																	<span class="form-check-sign"></span>
																</label>
															</div>
														</td>
														<td>${list.emp_nm}</td>
														<td>${list.emp_bs_tel1}-${list.emp_bs_tel2}-${list.emp_bs_tel3}</td>
														<td>${list.emp_ml_id}${list.emp_ml_addr}</td>
														<td>${departmentInfo[status.index].dpt_nm}</td>
														<td>${rankInfo[status.index].rnk_nm}</td>
														<td>${list.emp_tel1}-${list.emp_tel2}-${list.emp_tel3}</td>
														<td class="td-actions text-left">
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip"
																	title="Edit Task"
																	class="btn btn-link btn-simple-primary">
																	<i class="la la-edit"></i>
																</button>
																<!-- 					<button type="button" data-toggle="tooltip" title="Remove" class="btn btn-link btn-simple-danger"> -->
																<!-- 						<i class="la la-times"></i> -->
																<!-- 					</button> -->
															</div>
														</td>
													</tr>
												</c:forEach>
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
											<table style="width: 230px">
												<tr>
													<td colspan="2">
														<ul class="pagination pg-default pg-small" id="paging">
<!-- 															<li class="page-item"><a class="page-link" href="#"	aria-label="Previous"> <span aria-hidden="true">&laquo;</span> -->
<!-- 																	<span class="sr-only">Previous</span> -->
<!-- 															</a></li> -->
<!-- 															<li class="page-item active"><a class="page-link" href="#">1</a></li> -->
<!-- 															<li class="page-item"><a class="page-link" href="#">2</a></li> -->
<!-- 															<li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!-- 															<li class="page-item"><a class="page-link" href="#">4</a></li> -->
<!-- 															<li class="page-item"><a class="page-link" href="#">5</a></li> -->
															
<!-- 															<li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span> -->
<!-- 																	<span class="sr-only">Next</span> -->
<!-- 															</a></li> -->
														</ul>
													</td>
												</tr>
												<tr>
													<td colspan="2"></td>
												</tr>
												<tr>
													<td><input type="text" style="width: 100%"></td>
													<td><input type="button" value="검색"
														style="font-size: 70%; padding: 5px 10px"></td>
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
			<%@ include file="/assets/common/footer.jsp"%>
		</div>
	</div>
<script type="text/javascript">
var totalData = '${page}';
var dataPerPage = 10;
var pageCount;
var currentPage;
var totalPage = Math.ceil((totalData-1)/dataPerPage);

$(document).ready(function(){
	console.log(totalData);
	console.log(dataPerPage);
	console.log(totalPage);
	$('#paging').append('<li class="page-item"><a class="page-link" href="#"	aria-label="Previous">');
	for(var i=1;i<=totalPage;i++){
		$('#paging').append('<li class="page-item"><a class="page-link" href="#">'+i+'</a></li>');
	}
	$('#paging').append('<li class="page-item"><a class="page-link" href="#" aria-label="Next">');
});
</script>
</body>
</html>