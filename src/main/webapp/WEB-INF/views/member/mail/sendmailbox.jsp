<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp"%>
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
    $("#readdrop li a").click(function(){

      $("#readbtn:first-child").text($(this).text());
      $("#readbtn:first-child").val($(this).text());

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
		<%@ include file="/common/top.jsp"%>
		<%@ include file="import/side.jsp"%>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="card-title" style="margin-left: 15px">
									보낸메일함 &nbsp;
									<div style="margin-top: 100px; display: inline;">
										<i id="bookmark" class="la la-heart-o" style="color: #FF6C6C;"></i>
									</div>
									<font size="2"> &nbsp;전체메일 &nbsp;0 &nbsp;/ &nbsp;안읽은 메일
										&nbsp;0</font>
								</div>
							</div>
							<br>

							<div class="col-lg-12">
								<div class="col-lg-9" style="float: left;">
									<button type="button" class="btn btn-default btn-sm"
										data-toggle="modal" data-target="#dropmodal">삭제</button>
									&nbsp;
									<button class="btn btn-default btn-sm">답장</button>
									&nbsp;
									<button class="btn btn-default btn-sm">전달</button>
									&nbsp;
									<div class="btn-group">
										<button id="readbtn"
											class="btn btn-default btn-sm dropdown-toggle"
											data-toggle="dropdown">읽음</button>
										<ul id="readdrop" class="dropdown-menu" role="menu"
											aria-labelledby="dropdownMenu">
											<li><a class="dropdown-item" href="#">읽음</a></li>
											<li><a class="dropdown-item" href="#">안읽음</a></li>
										</ul>
									</div>
									<div class="btn-group">
										<button class="btn btn-default btn-sm dropdown-toggle"
											data-toggle="dropdown">이동</button>
										<ul class="dropdown-menu" role="menu"
											aria-labelledby="dropdownMenu">
											<li><a class="dropdown-item" href="#">새메일함1</a></li>
											<li><a class="dropdown-item" href="#">새메일함2</a></li>
										</ul>
									</div>
								</div>
								<div class="col-lg-2" style="float: left; text-align: right;">
									<div class="d1" style="float: left;">
										<form>
											<input class="form-control" type="text">
											<button type="submit"></button>
										</form>
									</div>
								</div>
								<div class="col-lg-1"
									style="float: left; text-align: left; margin-top: 3px;">
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
												<th>
													<div class="form-check">
														<label class="form-check-label"> <input
															class="form-check-input select-all-checkbox"
															type="checkbox" data-select="checkbox"
															data-target=".task-select"> <span
															class="form-check-sign"></span>
														</label>
													</div>
												</th>
												<th>받는사람</th>
												<th>제목</th>
												<th>보낸날짜</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<div class="form-check">
														<label class="form-check-label"> <input
															class="form-check-input task-select" type="checkbox">
															<span class="form-check-sign"></span>
														</label>
													</div>
												</td>
												<td>김고은 부장</td>
												<td>워크샵 결재 요청 메일</td>
												<td>2018-10-4</td>
											</tr>
											<tr>
												<td>
													<div class="form-check">
														<label class="form-check-label"> <input
															class="form-check-input task-select" type="checkbox">
															<span class="form-check-sign"></span>
														</label>
													</div>
												</td>
												<td>김지훈 이사</td>
												<td>동호회 모집 안내 공고문[사진첨부]</td>
												<td>2018-10-5</td>
											</tr>

										</tbody>
									</table>
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
					<%@ include file="/common/modal/delete.jsp"%>
					<%@ include file="/common/modal/alldelete.jsp"%>
					<%@ include file="/common/modal/addmailbox.jsp"%>
				</div>
			</div>
		</div>
		<%@ include file="/common/footer.jsp"%>
	</div>
</body>
</html>
