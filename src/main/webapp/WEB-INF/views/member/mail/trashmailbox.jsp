<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp"%>
<link rel="stylesheet" href="${root}/assets/css/search.css">

<script type="text/javascript">
	// 	리스트 ajax 처리
	var ml_sq = new Array();
	var ml_rcv_add = new Array();
	var ml_ttl = new Array();
	var ml_send_date = new Array();
	var mailList;
	var totalData;
	var dataPerPage = 10;
	var first = 1;
	var last;
	var pageCount = 10;
	var currentPage = 1;
	var totalPage;

	$(document).ready(function() {

		getMailList();
		
		for (var i = 0; i < mailList.length; i++) {
			ml_rcv_add.push(mailList[i].ml_rcv_add);
			ml_ttl.push(mailList[i].ml_ttl);
			ml_send_date.push(mailList[i].ml_send_date);
			ml_sq.push(mailList[i].ml_sq);
		}
		totalPage = Math.ceil((totalData - 1) / dataPerPage);
		viewList();
		viewPaging();
	})

	function getMailList() {
		$.ajax({
			async : false,
			type : "POST",
			url : "${root}/member/mail/getMailList.tree",
			dataType : "json",
			data : {
				"ml_grp_sq" : 3,
				"pg" : 1
			},
			success : function(data) {
				setMailList(data.mailList);
				setTotalData(data.page);
			},
			error : function(e) {
				alert('Error: ' + e);
			}

		});
	}
	function setMailList(data) {
		mailList = data;
	}

	function setTotalData(data) {
		totalData = data;
	}

	//리스트 보여주기(viewList)
	function viewList() {
		$("#view").empty();
		for (var i = ((currentPage - 1) * 10); i < Math.min(pageCount,
				totalData); i++) {

			$('#view').append('<tr id="maillist_group" article-seq="'+ml_sq[i]+'">');
			$('#view').append('<td><div class="form-check"><label class="form-check-label"><input id="seq" name="seq" value="'+ml_sq[i]+'"class="check form-check-input task-select" type="checkbox"><span class="form-check-sign" ></span>');
			$('#view').append('</label></div></td>');
			$('#view').append('<td class="mailList">' + ml_rcv_add[i] + '</td>');
			$('#view').append('<td class="mailList">' + ml_ttl[i] + '</td>');
			$('#view').append('<td class="mailList">' + ml_send_date[i] + '</td>');
			$('#view').append('</tr>');
		}
	}
	//페이지번호출력
	function viewPaging(){
		last = Math.min(pageCount,totalPage);
		$('#paging').empty();
		$('#paging').append('<li class="page-item"><a id="pre" class="page-link" href="javascript:pre_click();" aria-label="Previous"><span aria-hidden="true">&laquo;</span>');
		for (var i = first; i <= last; i++){
			$('#paging').append('<li class="page-item"><a class="page-link" href="javascript:number_click('+i+')">'+i+'</a></li>');
		}
		$('#paging').append('<li class="page-item"><a id="next" class="page-link" href="javascript:next_click();" aria-label="Next"><span aria-hidden="true">&raquo;</span>');
	}
	//다음클릭이벤트
	function next_click(){
		if(last<totalPage){
		first = first + 10;
		pageCount = pageCount + 10;
		currentPage = first;
		viewPaging();
		}
	};
	//번호클릭이벤트
	function number_click(data){
		currentPage = data;
		pageCount = dataPerPage * data;
		viewList();
	}
	
	$(document).ready(function(){
		$("#bookmark").click(function(){
			var src = ($(this).attr('class') == 'la la-heart-o') ? 'la la-heart'
												: 'la la-heart-o';
				$(this).attr('class', src);
								});

						$("#readdrop li a").click(function() {

							$("#readbtn:first-child").text($(this).text());
							$("#readbtn:first-child").val($(this).text());
							if ($(this).text() == "안읽음") {
								$("input[name='seq']:checked").each(function() {
									$(".maillist").css("color","red");
								});
							}
						});

						$("#movedrop li a").click(function() {
							$("#readbtn:first-child").text($(this).text());
							$("#readbtn:first-child").val($(this).text());
							if ($(this).text() == "휴지통") {
							
							}
						});
						//비우기(모두삭제) 버튼
						$("#deleteallBtn").click(function() {
							var seqlist = [];
							$("input[name='seq']:checked").each(function() {
								seqlist.push($(this).val());
							});

							$.ajax({
								type : "POST",
								url : "${root}/member/mail/movetrashmail.tree",
								data : {
									myArray : seqlist
								},
								success : function(response) {

								},
								error : function(e) {
									alert('Error: ' + e);
								}
							});
						});
						//삭제 버튼
						$("#deleteBtn").click(function() {
							var seqlist = [];
							$("input[name='seq']:checked").each(function() {
								seqlist.push($(this).val());
							});

							$.ajax({
								type : "POST",
								url : "${root}/member/mail/movetrashmail.tree",
								data : {
									myArray : seqlist
								},
								success : function(response) {

								},
								error : function(e) {
									alert('Error: ' + e);
								}
							});
						});
						//전달 버튼
						$("#deliveryBtn")
								.click(
										function() {

											$("#ml_grp_sq").val('2');
											$("#pg").val('${pg}');
											$("#key").val('${key}');
											$("#word").val('${word}');
											
											$("#ml_sq").val($("input[name='seq']:checked").val());
// 											다중처리하기
											$("#commonform").attr("action", "${root}/member/mail/delivery.tree").submit();

										});
						// 	});

						// 		$("#deletemodal").modal({
						// 			remote : '${root}/menu/mail/deleteok.jsp'
						// 		});		
						
						//<td>누르면 view로 이동 처리
						$(".mailList").click(
								function() {
									$("#ml_grp_sq").val('2');
									$("#pg").val('${pg}');
									$("#key").val('${key}');
									$("#word").val('${word}');
									$("#ml_sq").val(
											$("#maillist_group").attr(
													"article-seq"));
									$("#commonform").attr("action",
											"${root}/member/mail/view.tree")
											.submit();
								});
						
						$("#searchBtn")
								.click(
										function() {
											$("#ml_grp_sq").val('2');
											$("#pg").val('${pg}');
											$("#key").val($("#skey").val());
											$("#word").val($("#sword").val());
											$("#ml_sq").val(
													$("#maillist_group").attr(
															"article-seq"));
											$("#commonform")
													.attr("action",
															"${root}/member/mail/sendmailbox.tree")
													.submit();
										});

					});
</script>

</head>
<body>
	<c:set var="ml_grp_sq" value="${param.ml_grp_sq}" />
	<c:set var="ml_sq" value="${param.ml_sq}" />
	<c:set var="pg" value="${param.pg}" />
	<c:set var="key" value="${param.key}" />
	<c:set var="word" value="${param.word}" />
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
									휴지통 &nbsp;
									<div style="margin-top: 100px; display: inline;">
										<i id="bookmark" class="la la-heart-o" style="color: #FF6C6C;"></i>
									</div>
									<font size="2"> &nbsp;전체메일
										&nbsp;totalData &nbsp;/ &nbsp;안읽은 메일
										&nbsp;0</font>
								</div>
							</div>
							<br>

							<div class="col-lg-12">
								<div class="col-lg-8" style="float: left;">
									<button id="deleteallBtn" name="deleteallBtn" type="button" class="btn btn-default btn-sm"
										data-toggle="modal" data-target="#alldropmodal">
										<i class="la la-trash"></i> 비우기
									</button>
									&nbsp;
									<button id="deleteBtn" name="deleteBtn" type="button" class="btn btn-default btn-sm"
										data-toggle="modal" data-target="#dropmodal">삭제</button>
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
								<div class="col-lg-4" style="float: left; text-align: right;">
									<select id="skey" name="key" class="form-control"
										style="width: 100px; font-size: 100%; height: 35px; float: left;">
										<option value='ml_ttl'>제목</option>
										<option value='ml_rcv_add'>받는사람</option>
									</select> <input id="sword" name="word" type="text"
										style="width: 100%; width: 150px; height: 35px; float: left;"
										value="">
									<button class="btn btn-default btn-sm" id="searchBtn"
										style="float: left;">검색</button>

								</div>

							</div>
							<div class="card-body">
								<div class="panel">
									<table class="table">
										<thead>
											<tr>
												<th width="10%">
													<div class="form-check">
														<label class="form-check-label"> <input
															class="form-check-input select-all-checkbox"
															type="checkbox" data-select="checkbox"
															data-target=".task-select"> <span
															class="form-check-sign"></span>
														</label>
													</div>
												</th>
												<th width="30%">받는사람</th>
												<th width="40%">제목</th>
												<th width="20%">보낸날짜</th>
											</tr>
										</thead>
										<tbody id="view">
<%-- 																						<c:forEach var="mail" items="${mailList}"> --%>
<%-- 																							<tr id="maillist_group" article-seq="${mail.ml_sq}"> --%>
<!-- 																								<td> -->
<!-- 																									<div class="form-check"> -->
<!-- 																										<label class="form-check-label">  -->
<%-- 																										<input id="seq" name="seq" value="${mail.ml_sq}" class="check form-check-input task-select" type="checkbox"> --%>
<!-- 																											<span class="form-check-sign" ></span> -->
<!-- 																										</label> -->
<!-- 																									</div> -->
<!-- 																								</td> -->
<%-- 																								<td class="mailList">${mail.ml_rcv_add}</td> --%>
<%-- 																								<td class="mailList">${mail.ml_ttl}</td> --%>
<%-- 																								<td class="mailList">${mail.ml_send_date}</td> --%>
<!-- 																							</tr> -->
<%-- 																						</c:forEach> --%>
										</tbody>
									</table>
								</div>
								<table>
									<tr align="center">
										<td>
											<ul class="pagination pg-default pg-small" id="paging" style="align:center"></ul>
										</td>
									</tr>
								</table>
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
