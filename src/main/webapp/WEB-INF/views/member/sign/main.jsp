<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<script src="/treeware/assets/js/common.js"></script>
<script>
$(document).ready(function(){
	document.getElementById("menu1").setAttribute("class", "nav-item");
	document.getElementById("menu2").setAttribute("class", "nav-item active");
	document.getElementById("menu3").setAttribute("class", "nav-item");
});
function boardClick(data){
	var a = $(data).attr('id');
	var apv_sq = parseInt(a);
	location.href = '${root}/member/sign/approve.tree?apv_sq='+apv_sq;
}
</script>
<style type="text/css">
.listcursor:hover{
	cursor:pointer;
}
</style>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/top.jsp" %>
		<%@ include file="/assets/common/member/sign/side.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="card-title">받은결재함</div>
							</div>
							<div class="card-body">
								<div class="row" align="center">
									<div class="col-md-1"></div>
									<div class="col-md-10" style="padding:0px 0 0 0 ">
										<!-- 글목록 시작  -->
											<div class="buttonmenu" align="center" style="margin:5px 0 5px 0">
												<div class="row" style="width:100%">
													<div style="width:50%;text-align:left;padding:20px 10px">
														<p style="color:#007bff">전체목록 [${cnt}]</p>
													</div>
													<div style="width:50%;text-align:right;padding:15px 10px">
														<div class="row" style="float:right">
															<table>
																<tr>
																	<td>
																		<select id="" name="category" class="form-control" style="width:100%;font-size:100%;height:30px">
																		<option value='0'>카테고리</option>
																		<option value='1'>글번호</option>
																		<option value='2'>제목</option>
																		<option value='3'>작성자</option>
																		<option value='4'>작성일</option>
																		</select>
																	</td>
																	<td>
																		<input type="text" style="width:100%;width:150px;height:30px">
																	</td>
																	<td>
																		<button class="simplebtn1" style="width:60px;height:30px">검색</button>
																	</td>
																</tr>
															</table>
														</div>
													</div>
												</div>
											</div>
											<table class="table-hover" id="listtable" style="width:100%;font-size:100%;text-align:center">
												<thead>
													<tr style="border-bottom:1px #ddd solid">
														<th width="7">
															<div class="form-check" >
																<label class="form-check-label">
																	<input class="form-check-input  select-all-checkbox" type="checkbox" data-select="checkbox" data-target=".task-select">
																	<span class="form-check-sign"></span>
																</label>
															</div>
														</th>
														<th width="15%">문서번호</th>
														<th width="42%">제목</th>
														<th width="16%">기안일</th>
														<th width="10%">진행사항</th>
														<th width="10%">작성자</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach varStatus="i" var="formList" items="${formList}">
														<c:set var="oksq" value="${formList.APV_OK_SQ}"/>
														<c:set var="emp1" value="${formList.EMP_1ST_SQ}"/>
														<c:set var="emp2" value="${formList.EMP_2ND_SQ}"/>
														<c:set var="emp3" value="${formList.EMP_FNL_SQ}"/>
														<c:set var="emp" value="${userInfo.emp_sq}"/>
														<c:choose>
															<c:when test="${emp1 eq emp}"><c:set var="okmy" value="0"/></c:when>
															<c:when test="${emp2 eq emp}"><c:set var="okmy" value="1"/></c:when>
															<c:when test="${emp3 eq emp}"><c:set var="okmy" value="2"/></c:when>
														</c:choose>
<%-- 														<c:if test="true"> --%>
														<c:if test="${oksq >= okmy}">
															<tr id="${formList.APV_SQ}" onclick="javascript:boardClick(this)" class="listcursor">
																<td>
<%-- 																	<c:out value="${oksq}"></c:out> --%>
<%-- 																	<c:out value="${okmy}"></c:out> --%>
																	<div class="form-check">
																		<label class="form-check-label">
																			<input class="form-check-input task-select" type="checkbox">
																			<span class="form-check-sign"></span>
																		</label>
																	</div>
																</td>
																<td style="color:#777">${formList.APV_SQ}</td>
																<td style="text-align:left">
																<c:choose>
																	<c:when test="${oksq >= okmy+1}"><span style="color:#ccc">${formList.APV_TITLE}</span></c:when>
																	<c:when test="${oksq eq 4}"><span style="color:#dc3545;opacity:60%">${formList.APV_TITLE}</span></c:when>
																	<c:otherwise>${formList.APV_TITLE}&nbsp;<img src="${root}/assets/img/icon_new1.gif"></c:otherwise>
																</c:choose>
																</td>
																<td><b>${formList.APV_DATE}</b> 까지</td>
																<td>
																	<c:choose>
																			<c:when test="${oksq eq 0}"><span>진행중</span></c:when>
																			<c:when test="${oksq eq 1}"><span>1차승인</span></c:when>
																			<c:when test="${oksq eq 2}"><span>2차승인</span></c:when>
																			<c:when test="${oksq eq 3}"><span style="color:#007bff"><b>결재완료</b></span></c:when>
																			<c:when test="${oksq eq 4}"><span style="color:#dc3545">반려처리</span></c:when>
																			<c:otherwise><span>보류</span></c:otherwise>
																	</c:choose>
																</td>
																<td>
																	<c:forEach varStatus="j" var="writer" items="${empWriter}">
																		<c:if test="${i.index == j.index}">
																			${writer.emp_nm}
																		</c:if>
																	</c:forEach>
																</td>
																<td></td>
															</tr>
														</c:if>
													</c:forEach>
												</tbody>
											</table>
											<div class="clear"></div>
											<div align="center">
												<table style="width:230px;margin:40px 0 60px 0">
													<tr>
														<td colspan="2">
															<ul class="pagination pg-default pg-small">
																<li class="page-item">
																	<a class="page-link" href="#" aria-label="Previous">
																		<span aria-hidden="true">&laquo;</span>
																		<span class="sr-only">Previous</span>
																	</a>
																</li>
																<li class="page-item active"><a class="page-link" href="#">1</a></li>
																<li class="page-item"><a class="page-link" href="#">2</a></li>
																<li class="page-item"><a class="page-link" href="#">3</a></li>
																<li class="page-item"><a class="page-link" href="#">4</a></li>
																<li class="page-item"><a class="page-link" href="#">5</a></li>
																<li class="page-item">
																	<a class="page-link" href="#" aria-label="Next">
																		<span aria-hidden="true">&raquo;</span>
																		<span class="sr-only">Next</span>
																	</a>
																</li>
															</ul>
														</td>
													</tr>
												</table>
											</div>
										<!-- 글목록 끝 -->
									</div>
									<div class="col-md-1"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<%@ include file="/assets/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>