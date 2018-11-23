<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<%@ include file="/assets/common/admin/board/import.jsp" %>
<script type="text/javascript">
$(document).ready(function(){
	document.getElementById("menu1").setAttribute("class", "nav-item active");
	document.getElementById("menu2").setAttribute("class", "nav-item");
})
</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/admin/home/top.jsp" %>
		<%@ include file="/assets/common/admin/board/side.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid" style="height:1100px">
					<div align="center" style="padding:10px;margin:30px 0">
					<div class="col-md-12">
						<div class="card" style="width:100%;padding:30px 30px 60px 30px;text-align:left">
							<div class="card-header">
								<div class="card-title">게시판 목록</div>
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-md-1"></div>
									<div class="col-md-10" style="padding:0px 0 0 0">
										<table class="table-hover" id="listtable" style="width:100%;font-size:100%">
											<thead>
												<tr style="border-bottom:1px #ddd solid">
													<th width="20%">카테고리</th>
													<th width="20%">게시판 타입</th>
													<th width="60%">게시판 이름</th>
												</tr>
											</thead>
											<tbody id="view" class="listcursor">
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
		</div>
		<%@ include file="/assets/common/footer.jsp" %>
	</div>
</body>
</html>