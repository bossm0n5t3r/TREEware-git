<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp" %>
<%@ include file="/adminmenu/board/import.jsp" %>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/adminmenu/home/top.jsp" %>
		<%@ include file="side.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid" style="height:1100px">
				
				<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<div class="card-title">게시판목록</div>
					</div>
					<div class="card-body">
						<div class="row">
								<div class="col-md-3">
									<div class="card-sub">
										<div style="width:170px">
										<table style="width:100%">
											<tr>
												<td><input type="text" style="width:130px" placeholder="검색어입력"></td>
												<td><input type="button" value="검색" style="font-size:70%;padding:4px 10px"></td>
											</tr>
										</table>
										<hr><ul id="tree" class="ztree" style="width:100%;overflow:auto;"></ul>
										</div>
									</div>
								</div>
								<div class="col-md-9" style="padding:0 20px ">
								<!-- 주소록 콘텐츠 페이지  -->
								<IFRAME ID="testIframe" Name="testIframe" FRAMEBORDER=0 SCROLLING="no" width=100% height=100% SRC="list.jsp"></IFRAME>
								<!-- 주소록 콘텐츠 끝 -->
								<br><br><br><hr><br>
									<div class="clear"></div>
									<div align="center">
											<table style="width:230px">
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
												<tr><td colspan="2"></td></tr>
												<tr>
													<td><input type="text" style="width:100%"></td>
													<td><input type="button" value="검색" style="font-size:70%;padding:5px 10px"></td>
												</tr>
											</table>
										</div>
									<br><br><br>
							</div>
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