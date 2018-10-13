<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp" %>
<%@ include file="/adminmenu/group/import.jsp" %>
</head>
<body>
<%@ include file="/adminmenu/home/top.jsp" %>
<%@ include file="side.jsp" %>
<div class="main-panel">
	<div class="content">
		<div class="container-fluid" style="height:1100px">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<div class="card-title">조직도 편집</div>
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
							<div class="col-md-9" style="padding:0 40px 0px 20px ">
							<!-- 조직도 페이지  -->
							<%@ include file="/adminmenu/group/edit-chart.jsp" %>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="/common/footer.jsp" %>
</div>
</body>
</html>