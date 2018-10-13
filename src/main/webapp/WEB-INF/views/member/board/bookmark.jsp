<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp" %>
<%@ include file="/menu/board/import/import.jsp" %>
<script>
$(document).ready(function(){
	document.getElementById("menu1").setAttribute("class", "nav-item");
	document.getElementById("menu2").setAttribute("class", "nav-item");
	document.getElementById("menu3").setAttribute("class", "nav-item active");
});

</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/common/top.jsp" %>
		<%@ include file="import/side.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="card-title">북마크함</div>
							</div>
							<div class="card-body">
								<div class="row" align="center">
									<div class="col-md-1"></div>
									<div class="col-md-10" style="padding:0px 0 0 0 ">
										<!-- 글목록 시작  -->
											<div class="buttonmenu" align="center" style="margin:5px 0 5px 0">
												<div class="row" style="width:100%">
													<div style="width:65%;text-align:left;padding:10px">
														<p style="color:#007bff">전체목록 [123개]</p>
													</div>
													<div style="width:35%;text-align:right">
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
														<th width="10%">글번호</th>
														<th width="50%">제목</th>
														<th width="9%">작성자</th>
														<th width="10%">작성일</th>
														<th width="6%">조회수</th>
														<th width="8%">북마크</th>
													</tr>
												</thead>
												<tbody>
													<% for(int i=0; i<10 ; i++){ %>
													<tr>
														<td>
															<div class="form-check">
																<label class="form-check-label">
																	<input class="form-check-input task-select" type="checkbox">
																	<span class="form-check-sign"></span>
																</label>
															</div>
														</td>
														<td style="text-align:left">1234567</td>
														<td style="text-align:left">9월 회식비용 영수증 <img src="${root}/assets/img/icon_new1.gif"></td>
														<td>손예진</td>
														<td>18.10.02</td>
														<td>234</td>
														<td><a href="#">삭제</a></td>
													</tr>
													<%} %>
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
		<%@ include file="/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>