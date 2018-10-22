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
	
	$("#delete").click(function() {
		$("#deletemodal").modal({
			remote : '${root}/menu/mail/deleteok.jsp'
		});		
	});
	
	$(".posting").click(function() {
		$("#ml_grp_sq").val('${ml_grp_sq}');
		$("#pg").val('${pg}');
		$("#key").val('${key}');
		$("#word").val('${word}');
		$("#ml_sq").val($(this).attr("article-seq"));
		$("#commonform").attr("action", "${root}/member/mail/view.tree").submit();
	});
});

</script>

</head>
<body>
	<form name="commonform" id="commonform">
		<input type="hidden" name="ml_grp_sq" id="ml_grp_sq" value="">
		<input type="hidden" name="pg" id="pg" value=""> <input
			type="hidden" name="key" id="key" value=""> <input
			type="hidden" name="word" id="word" value=""> <input
			type="hidden" name="ml_sq" id="ml_sq" value="">
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
										<ul id="movedrop" class="dropdown-menu" role="menu"
											aria-labelledby="dropdownMenu">
											<li><a class="dropdown-item" href="#">휴지통</a></li>
											<li><a class="dropdown-item" href="#">새메일함2</a></li>
										</ul>
									</div>
								</div>
							
							</div>
							<div class="card-body">
								<div class="panel">
									<table width="100%">
										<tr>
											<td>${mail.ml_ttl}</td>
										
										</tr>
										<tr>
											<td colspan="2">보낸사람</td>
											<td>${mail.ml_snd_add}</td>
										</tr>

										<tr>
											<td colspan="2">받는사람</td>
											<td>${mail.ml_rcv_add}</td>
										</tr>
										<tr>
											<td colspan="2">내용</td>
											<td>${mail.ml_ctt}</td>
										</tr>
									</table>
									<br>
								</div>

							</div>
						</div>
					</div>
					<%@ include file="/assets/common/modal/delete.jsp"%>
					<%@ include file="/assets/common/modal/alldelete.jsp"%>
					<%@ include file="/assets/common/modal/addmailbox.jsp"%>
				</div>
			</div>
		</div>
		<%@ include file="/assets/common/footer.jsp"%>
	</div>
</body>
</html>
