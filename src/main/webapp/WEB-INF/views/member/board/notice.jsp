<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp" %>
<link rel="stylesheet" href="${root}/assets/css/search.css">

<script type="text/javascript">
$(function(){
$('#bookmark').click(function() { 
         var src = ($(this).attr('class') == 'la la-heart-o') 
            ? 'la la-heart'
            : 'la la-heart-o'; 
         $(this).attr('class', src); 
     
	});
});

$(function(){
	$("#delete").click(function(){
		$("#deletemodal").modal({
			remote:'${root}/menu/mail/deleteok.jsp'});
	});
});
</script>

</head>
<body>

<!-- 			https://www.w3schools.com/bootstrap4/bootstrap_navs.asp -->
	<div class="wrapper">
		<%@ include file="/common/top.jsp" %>
		<%@ include file="import/side.jsp" %>
		<div class="main-panel">
		<div class="content">
			<div class="container-fluid">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">

								<div class="card-title">
									<div class="col-lg-12">
										<div class="col-lg-6" style="float:left;">
											전사 공지 &nbsp;
											<div style="margin-top: 100px; display: inline;">
												<i id="bookmark" class="la la-heart-o"
													style="color: #FF6C6C;"></i>
											</div>
											<font size="2"> &nbsp;(&nbsp;총 &nbsp;3 건&nbsp;) </font>
										</div>
										<div class="col-lg-6" style="float: left;">
<!-- 											<div id="d1" class="btn-group" style="float: left;"> -->
<!-- 												<button id="readbtn" class="btn dropdown-toggle" -->
<!-- 													data-toggle="dropdown">제목</button> -->
<!-- 												<ul id="readdrop" class="dropdown-menu" role="menu" -->
<!-- 													aria-labelledby="dropdownMenu"> -->
<!-- 													<li><a class="dropdown-item" href="#">제목</a></li> -->
<!-- 													<li><a class="dropdown-item" href="#">작성자</a></li> -->
<!-- 												</ul> -->
<!-- 											</div> -->
<!-- 											<div class="d1" style="float: left;"> -->
<!-- 												<form> -->
<!-- 													<input type="text"> -->
<!-- 													<button type="submit"></button> -->
<!-- 												</form> -->
<!-- 											</div> -->
										</div>
									</div>
								</div>
							</div>
							<br>
							<div class="col-lg-12">
								<div class="col-lg-9" style="float: left;">
									<a href="${root}/menu/board/write.jsp"><button
											class="btn btn-default btn-sm">글쓰기</button>&nbsp; </a>
								</div>
								<div class="col-lg-2" style="float: left; text-align:right;">
									<div class="d1" style="float: left;">
												<form>
													<input type="text">
													<button type="submit"></button>
												</form>
											</div>
								</div>

								<div class="col-lg-1" style="float: left; text-align: right;">
									<select id="toolbar_list_pagebase" evt-rol="change-pagebase">
										<option value="20" selected="">20</option>
										<option value="40">40</option>
										<option value="60">60</option>
										<option value="80">80</option>
									</select>
								</div>
							</div>
							<div class="card-body">
								<div class="panel">
									<table class="table">
										<thead>
											<tr>
												<th>번호</th>
												<th>제목</th>
												<th>작성자</th>
												<th>작성일</th>
												<th>조회</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>[공지]신규 PC 메신저 업그레이드 안내</td>
												<td>김고은 부장</td>
												<td>2018-10-8</td>
												<td>12</td>
											</tr>
											<tr>
												<td>2</td>
												<td>[공지]뮤지컬 맘마미아 특별할인 안내</td>
												<td>강수민 이사</td>
												<td>2018-10-7</td>
												<td>35</td>
											</tr>
											<tr>
												<td>3</td>
												<td>[공지] 프린터 교체에 따른 설치 및 사용 안내</td>
												<td>박윤민 이사</td>
												<td>2018-10-5</td>
												<td>10</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-lg-12">
									<a href="${root}/menu/board/write.jsp"><button
											class="btn btn-default btn-sm">글쓰기</button>&nbsp; </a>
								</div>
								<div style="width: 100%; text-align: center;">
									<div style="width: 185px; margin: 0 auto;">
										<ul class="pagination pg-primary">
											<li class="page-item"><a class="page-link" href="#"
												aria-label="Previous"> <span aria-hidden="true">«</span>
													<span class="sr-only">Previous</span>
											</a></li>
											<li class="page-item active"><a class="page-link"
												href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a></li>
											<li class="page-item"><a class="page-link" href="#">3</a></li>
											<li class="page-item"><a class="page-link" href="#"
												aria-label="Next"> <span aria-hidden="true">»</span> <span
													class="sr-only">Next</span>
											</a></li>
										</ul>
									</div>
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
