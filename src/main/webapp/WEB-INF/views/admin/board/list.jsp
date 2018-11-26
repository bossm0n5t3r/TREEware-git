<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<%@ include file="/assets/common/admin/board/import.jsp" %>
<style type="text/css">
.listcursor:hover{
	cursor:pointer;
}
</style>
<script type="text/javascript">
control = "${root}/admin/board/";

$(document).ready(function(){
	
	$(".firstpage").click(function() {
		moveBoard('${bcode}', '1', '', '', '0', 'list');
	});
	
	$(".movepage").click(function() {
		moveBoard('${bcode}', $(this).attr("mv-page-no"), '${key}', '${word}', '0', 'list');
	});
	
	$(".posting").click(function() {
		moveBoard('${bcode}', '${pg}', '${key}', '${word}', $(this).attr("article-seq"), 'view');
	});
	
	$("#returnBtn").click(function(){
		$(location).attr("href","${root}/admin/board/main.tree");
	});
});
</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/admin/home/top.jsp" %>
		<%@ include file="/assets/common/admin/board/side.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<div align="center" style="padding:10px;margin:30px 0">
					<div class="col-md-12">
						<div class="card" style="width:100%;padding:30px 30px 60px 30px;text-align:left">
							<div class="card-header">
								<div class="card-title">${boardName}</div>
							</div>
							<div class="card-body">
								<div class="row" align="center">
									<div class="col-md-1"></div>
									<div class="col-md-10" style="padding:0px 0 0 0 ">
										<!-- 글목록 시작  -->
											<div class="buttonmenu" align="center" style="margin:5px 0 5px 0">
												<div class="row" style="width:100%">
													<div style="width:50%;text-align:left;padding:10px">
														<p id="page" style="color:#007bff">새 글 / 전체글 [${navigator.newArticleCount} / ${navigator.totalArticleCount}]</p>
													</div>
													<div style="width:50%;text-align:right">
														<div class="row" style="float:right">
															<table>
																<tr>
																	<td>
																		<button class="btn btn-default" id="returnBtn">돌아가기</button>
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
														<th width="60%">제목</th>
														<th width="10%">작성자</th>
														<th width="10%">작성일</th>
														<th width="10%">조회수</th>
													</tr>
												</thead>
												<tbody id="view" class="listcursor">
													<c:forEach var="article" items="${boardList}">
														<tr class="posting" article-seq="${article.brd_sq}">
															<td>
																<div class="form-check">
																	<label class="form-check-label">
																		<input class="form-check-input task-select" type="checkbox">
																		<span class="form-check-sign"></span>
																	</label>
																</div>
															</td>
															<c:set var="emp_sq" value="${article.emp_sq}" />
															<td style="text-align:center">${article.brd_sq}</td>
															<td id="${article.brd_sq}" onclick="javascript:boardClick(this)" style="text-align:left">${article.brd_ttl}</td>
															<td>${article.emp_nm}</td>
															<td>${article.brd_dt}</td>
															<td>${article.brd_hits}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<div class="clear"></div>
											<div align="center">
												<!-- Paging part -->
												${navigator.navigator}
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
			</div>
		<%@ include file="/assets/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>