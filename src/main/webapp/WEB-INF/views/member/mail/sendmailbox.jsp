<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp"%>
<link rel="stylesheet" href="${root}/assets/css/search.css">

<script type="text/javascript">
$(document).ready(function(){
	$("#bookmark").click(function(){
		var src = ($(this).attr('class') == 'la la-heart-o') ? 'la la-heart'
				: 'la la-heart-o';
		$(this).attr('class', src);
	});
	
	$("#readdrop li a").click(function(){

		$("#readbtn:first-child").text($(this).text());
		$("#readbtn:first-child").val($(this).text());
		if($(this).text()=="안읽음"){
			alert("안읽음으로 이동");
		}	
	});	
	
	$("#movedrop li a").click(function(){
		$("#readbtn:first-child").text($(this).text());
		$("#readbtn:first-child").val($(this).text());
		if($(this).text()=="휴지통"){
			alert("안읽음으로 이동");
		}
	});	
	
// 	$("#deleteBtn").click(function() {
// 		$("#ml_grp_sq").val('2');
// 		$("#pg").val('${pg}');
// 		$("#key").val('${key}');
// 		$("#word").val('${word}');
// 		$("#ml_sq").val($("#maillist_group").attr("article-seq"));
// 		$("#commonform").attr("action", "${root}/member/mail/delete.tree").submit();
	    
// 		if(cnt != 0){
// 		$("#deletemodal").modal({
// 			remote : '${root}/menu/mail/deleteok.jsp'
// 		});		
// 		}
// 		else{
// 			alert("휴지통 이동 실패");
			
// 		}
// 	});
	
	$("#deleteBtn").click(function() {
	    var val = [];
		$("checkbox[checked='checked']").each(function(i){
		          val[i] = $(this).val();
		});
		alert(val);
// 		$.ajax({
// 		    type : "POST",
// 		    url : "${root}/menu/mail/deleteok.jsp",
// 		    data : {
// 		        myArray: val
// 		    },
// 		    success : function(response) {
		       
// 		    },
// 		    error : function(e) {
// 		       alert('Error: ' + e);
// 		    }
// 		}); 
		
		     
	});
	
	$(".mailList").click(function() {
		$("#ml_grp_sq").val('2');
		$("#pg").val('${pg}');
		$("#key").val('${key}');
		$("#word").val('${word}');
		$("#ml_sq").val($("#maillist_group").attr("article-seq"));
		$("#commonform").attr("action", "${root}/member/mail/view.tree").submit();
	});
	
	$("#searchBtn").click(function(){
		$("#ml_grp_sq").val('2');
		$("#pg").val('${pg}');
		$("#key").val($("#skey").val());
		$("#word").val($("#sword").val());
		$("#ml_sq").val($("#maillist_group").attr("article-seq"));
		$("#commonform").attr("action", "${root}/member/mail/sendmailbox.tree").submit();
	});
});

</script>

</head>
<body>
<c:set var="ml_grp_sq" value="${param.ml_grp_sq}"/>
		<c:set var="ml_sq" value="${param.ml_sq}"/>
		<c:set var="pg" value="${param.pg}"/>
		<c:set var="key" value="${param.key}"/>
		<c:set var="word" value="${param.word}"/>
<form name="commonform" id="commonform">
	<input type="hidden" name="ml_grp_sq" id="ml_grp_sq" value="">
	<input type="hidden" name="pg" id="pg" value="">
	<input type="hidden" name="key" id="key" value="">
	<input type="hidden" name="word" id="word" value="">
	<input type="hidden" name="ml_sq" id="ml_sq" value="">
</form>

	<!-- 			https://www.w3schools.com/bootstrap4/bootstrap_navs.asp -->
	<div class="wrapper">
		<%@ include file="/assets/common/top.jsp"%>
		<%@ include file="/assets/common/member/mail/side.jsp"%>
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
									<font size="2"> &nbsp;전체메일 &nbsp;${navigator.totalArticleCount} &nbsp;/ &nbsp;안읽은 메일
										&nbsp;0</font>
								</div>
							</div>
							<br>

							<div class="col-lg-12">
								<div class="col-lg-8" style="float: left;">
									<button id="deleteBtn" type="button" class="btn btn-default btn-sm"
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
										<ul id="movedrop" class="dropdown-menu" role="menu"
											aria-labelledby="dropdownMenu">
											<li><a class="dropdown-item" href="#">휴지통</a></li>
											<li><a class="dropdown-item" href="#">받은메일함</a></li>
										</ul>
									</div>
								</div>
								<div class="col-lg-4" style="float: left; text-align: right;">
									<select id="skey" name="key" class="form-control"
										style="width: 100px; font-size: 100%; height: 35px; float: left;">
										<option value='ml_ttl'>제목</option>
										<option value='ml_rcv_add'>받는사람</option>
									</select>
									
									<input id="sword" name="word" type="text" style="width: 100%; width: 150px; height: 35px; float: left;" value="">								
									<button class="btn btn-default btn-sm" id="searchBtn"
										style="float: left;">검색</button>
								
								</div>

							</div>
							<div class="card-body">
								<div class="panel">
									<table class="table">
										<thead>
											<tr>
												<th>
													<div class="form-check">
														<label class="form-check-label">
														 <input
															class="form-check-input select-all-checkbox"
															type="checkbox" data-select="checkbox"
															data-target=".task-select" > <span
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
											<c:forEach var="mail" items="${mailList}">
												<tr id="maillist_group" article-seq="${mail.ml_sq}">
													<td>
														<div class="form-check">
															<label class="form-check-label"> 
															<input class="check form-check-input task-select" type="checkbox">
																<span class="form-check-sign" value="${mail.ml_sq}"></span>
															</label>
														</div>
													</td>
													<td class="mailList">${mail.ml_rcv_add}</td>
													<td class="mailList">${mail.ml_ttl}</td>
													<td class="mailList">${mail.ml_send_date}</td>
												</tr>
											</c:forEach>
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
<%-- 					<%@ include file="/assets/common/modal/delete.jsp"%> --%>
					<%@ include file="/assets/common/modal/alldelete.jsp"%>
					<%@ include file="/assets/common/modal/addmailbox.jsp"%>
				</div>
			</div>
		</div>
		<%@ include file="/assets/common/footer.jsp"%>
	</div>
</body>
</html>
