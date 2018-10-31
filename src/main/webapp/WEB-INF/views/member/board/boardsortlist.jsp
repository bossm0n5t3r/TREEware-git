<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<%@ include file="/assets/common/member/board/import.jsp" %>
<style type="text/css">
.listcursor:hover{
	cursor:pointer;
}
</style>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/top.jsp" %>
		<%@ include file="/assets/common/member/board/side.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="card-title">${userBoardInfo.bname}</div>
							</div>
							<div class="card-body">
								<div class="row" align="center">
									<div class="col-md-1"></div>
									<div class="col-md-10" style="padding:0px 0 0 0 ">
										<!-- 글목록 시작  -->
											<div class="buttonmenu" align="center" style="margin:5px 0 5px 0">
												<div class="row" style="width:100%">
													<div style="width:50%;text-align:left;padding:10px">
														<p id="page" style="color:#007bff">전체목록 [<span id="pageNumber"></span>개]</p>
													</div>
													<div style="width:50%;text-align:right">
														<div class="row" style="float:right">
															<table>
																<tr>
																	<td>
																		<select id="key" name="key" class="form-control" style="width:100%;font-size:100%;height:30px">
																		<option value='0'>카테고리</option>
																		<option value='brd_sq'>글번호</option>
																		<option value='brd_ttl'>제목</option>
<!-- 																		<option value='emp_sq'>작성자</option> -->
																		<option value='brd_dt'>작성일</option>
																		</select>
																	</td>
																	<td>
																		<input id="word" type="text" style="width:100%;width:150px;height:30px">
																	</td>
																	<td>
																		<button class="simplebtn1" id="searchBtn" style="width:70px;height:30px">검색</button>
																		<button class="simplebtn2" id="writeBtn" style="width:70px;height:30px">글쓰기</button>
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
														<th width="10%">글번호</th>
														<th width="50%">제목</th>
														<th width="9%">작성자</th>
														<th width="10%">작성일</th>
														<th width="6%">조회수</th>
														<th width="8%">북마크</th>
													</tr>
												</thead>
												<tbody id="view" class="listcursor">
<%-- 												<c:forEach var="board" items="${board}"> --%>
<!-- 													<tr> -->
<!-- 														<td> -->
<!-- 															<div class="form-check"> -->
<!-- 																<label class="form-check-label"> -->
<!-- 																	<input class="form-check-input task-select" type="checkbox"> -->
<!-- 																	<span class="form-check-sign"></span> -->
<!-- 																</label> -->
<!-- 															</div> -->
<!-- 														</td> -->
<%-- 														<c:set var="emp_sq" value="${board.emp_sq}" /> --%>
<%-- 														<td style="text-align:center">${board.brd_sq}</td> --%>
<%-- 														<td id="${board.brd_sq}" onclick="javascript:boardClick(this)" style="text-align:left">${board.brd_ttl}<img src="${root}/assets/img/icon_new1.gif"></td> --%>
<%-- 														<td>${boardEmpName[emp_sq]}</td> --%>
<%-- 														<td>${board.brd_dt}</td> --%>
<%-- 														<td>${board.brd_hits}</td> --%>
<!-- 														<td><a href="#">추가</a></td> -->
<!-- 													</tr> -->
<%-- 												</c:forEach> --%>
												</tbody>
											</table>
											<div class="clear"></div>
											<div align="center">
												<table style="width:230px;margin:40px 0 60px 0">
													<tr>
														<td colspan="2">
															<ul id="paging" class="pagination pg-default pg-small">
<!-- 																<li class="page-item"> -->
<!-- 																	<a class="page-link" href="#" aria-label="Previous"> -->
<!-- 																		<span aria-hidden="true">&laquo;</span> -->
<!-- 																		<span class="sr-only">Previous</span> -->
<!-- 																	</a> -->
<!-- 																</li> -->
<!-- 																<li class="page-item active"><a class="page-link" href="#">1</a></li> -->
<!-- 																<li class="page-item"><a class="page-link" href="#">2</a></li> -->
<!-- 																<li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!-- 																<li class="page-item"><a class="page-link" href="#">4</a></li> -->
<!-- 																<li class="page-item"><a class="page-link" href="#">5</a></li> -->
<!-- 																<li class="page-item"> -->
<!-- 																	<a class="page-link" href="#" aria-label="Next"> -->
<!-- 																		<span aria-hidden="true">&raquo;</span> -->
<!-- 																		<span class="sr-only">Next</span> -->
<!-- 																	</a> -->
<!-- 																</li> -->
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