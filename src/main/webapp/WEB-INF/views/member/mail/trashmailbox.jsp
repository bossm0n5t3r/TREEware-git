<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp"%>
<link rel="stylesheet" href="${root}/assets/css/search.css">
<%-- <c:set var="emp_sq" value="${userInfo.emp_sq}"/> --%>
<script type="text/javascript">
	// 	리스트 ajax 처리
	var ml_sq = new Array();
	var ml_snd_add = new Array();
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
			ml_snd_add.push(mailList[i].ml_snd_add);
			ml_rcv_add.push(mailList[i].ml_rcv_add);
			ml_ttl.push(mailList[i].ml_ttl);
			ml_send_date.push(mailList[i].ml_send_date);
			ml_sq.push(mailList[i].ml_sq);
		}
		totalPage = Math.ceil((totalData - 1) / dataPerPage);
		viewList();
		viewPaging();
	})
	//메일 목록
	function getMailList() {
		$.ajax({
			async : false,
			type : "POST",
			url : "${root}/member/mail/getMailList.tree",
			dataType : "json",
			data : {
				"ml_grp_sq" : 3,
				"emp_sq" : "${userInfo.emp_sq}"
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

	//메일 리스트 보여주기(viewList)
	function viewList() {
		totalData=mailList.length;
		$('#totalMail').text(mailList.length);
		$("#view").empty();
// 		${"#totalMail"}.text(mailList.length);
		for (var i = ((currentPage - 1) * 10); i < Math.min(pageCount,
				totalData); i++) {

			//나눠서 append하면 정렬이 안되서 한번에 붙여 놓음
			$('#view').append('<tr id="maillist_group" article-seq="'+ml_sq[i]+'"><td style="vertical-align:center;"><div class="form-check"><label class="form-check-label"><input id="seq" name="seq" value="'+ml_sq[i]+'"class="check form-check-input task-select" type="checkbox"><span class="form-check-sign" ></span></label></div></td><td class="mailList" style="vertical-align:center;">' + ml_rcv_add[i] + '</td><td class="mailList" id="title" style="vertical-align:center;">' + ml_ttl[i] + '</td><td class="mailList">' + ml_send_date[i] + '</td></tr>');
		
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
						//읽음 안읽음 처리
						$("#readdrop li a").click(function() {

							$("#readbtn:first-child").text($(this).text());
							$("#readbtn:first-child").val($(this).text());
							if ($(this).text() == "읽음") {
								$("input[name='seq']:checked").each(function() {
									$(".maillist").css("font-color","red");
								});
							}
						});

						//메일함 이동
						$("#movedrop li a").click(function() {
							var seqlist = [];
								$("input[name='seq']:checked").each(function() {
									seqlist.push($(this).val());
								});

							$.ajax({
								type : "POST",
								url : "${root}/member/mail/movemailbox.tree",
								data : {
									myArray : seqlist,
									"emp_sq" : "${userInfo.emp_sq}",
									"ml_grp_sq" : $(this).attr("value")
									
								},
								success : function(response) {
								$(location).attr("href", "${root}/member/mail/sendmailbox.tree");
									
								},
								error : function(e) {
							
								}
							});
						});

						//휴지통으로 이동
						$("#movetrashBtn").click(function() {
							var seqlist = [];
							$("input[name='seq']:checked").each(function() {
								seqlist.push($(this).val());
							});

							$.ajax({
								type : "POST",
								url : "${root}/member/mail/movetrashmail.tree",
								data : {
									myArray : seqlist,
									"emp_sq" : "${userInfo.emp_sq}"
								},
								success : function(response) {
									$(location).attr("href", "${root}/member/mail/newmailbox1.tree");

								},
								error : function(e) {
									alert('Error: ' + e);
								}
							});
						});
						
						
						//검색 버튼 처리
						$("#searchBtn").click(function(){
								empajax();
							
						});
						
						function empajax(){
							$.ajax({
								type : "GET"
								,url : "${root}/member/mail/mailsearch.tree"
								,dataType : "json"
								,data : {
									"ml_grp_sq" : 3,
									"emp_sq" : "${userInfo.emp_sq}",
									"key" : $('#skey').val(),
									"word" :$('#sword').val()
								}
								,success : function(data) {
									mailList = data.mailList
									mailSearch();
								}
								,error : function(e) {
									alert("에러");
								}
							});
						}
						//메일 검색
						function mailSearch() {
							totalData=mailList.length;
							currentPage = 1;
							totalPage = Math.ceil((totalData-1)/dataPerPage);
							$('#totalMail').text(mailList.length);
							$("#view").empty();
							for (var i = ((currentPage - 1) * 10); i < Math.min(pageCount,
									totalData); i++) {

								$('#view').append('<tr id="maillist_group" article-seq="'+mailList[i].ml_sq+'">');
								$('#view').append('<td><div class="form-check"><label class="form-check-label"><input id="seq" name="seq" value="'+ml_sq[i]+'"class="check form-check-input task-select" type="checkbox"><span class="form-check-sign" ></span>');
								$('#view').append('</label></div></td>');
								$('#view').append('<td class="mailList">' + mailList[i].ml_snd_add + '</td>');
								$('#view').append('<td class="mailList">' + mailList[i].ml_ttl + '</td>');
								$('#view').append('<td class="mailList">' + mailList[i].ml_send_date + '</td>');
								$('#view').append('</tr>');
							}
						}
						
						//메일 전달
						$("#deliveryBtn")
								.click(
										function() {

											$("#ml_grp_sq").val('1');
											$("#pg").val('${pg}');
											$("#key").val('${key}');
											$("#word").val('${word}');
											
											$("#ml_sq").val($("input[name='seq']:checked").val());
// 											다중처리하기
											$("#commonform").attr("action", "${root}/member/mail/delivery.tree").submit();

										});
						
						//리스트에서 td 누르면 view로 이동
						$(".mailList").click(
								function() {
									$("#ml_grp_sq").val('1');
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
						//메일 삭제
						$("#deleteBtn").click(function(){
							var seqlist = [];
							$("input[name='seq']:checked").each(function() {
								seqlist.push($(this).val());
						
							});

						$.ajax({
							type : "GET",
							url : "${root}/member/mail/delete.tree",
							data : {
								myArray : seqlist,
								"ml_grp_sq" : 3,
								"emp_sq" : "${userInfo.emp_sq}"
							},
							success : function(response) {
								$(location).attr("href", "${root}/member/mail/trashmailbox.tree");
							},
							error : function(e) {
								alert("삭제할 메일을 선택해주세요!");
							}
						});
					});

				});
	
	
</script>

</head>
<body>
<%@ include file="/assets/common/top.jsp"%>
<%@ include file="/assets/common/member/mail/side.jsp"%>

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

	<div class="wrapper">
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
										&nbsp;<span id="totalMail"></span>
										</font>
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
										<ul id="movedrop" class="dropdown-menu" role="menu"
											aria-labelledby="dropdownMenu">
											<li><a role="item"class="dropdown-item" href="#" value="1">받은메일함</a></li>
											<li><a class="dropdown-item" href="#" value="2">
											보낸메일함</a></li>
											<li><a class="dropdown-item" href="#" value="4">
											새메일함1</a></li>
											<li><a class="dropdown-item" href="#" value="5">
											새메일함2</a></li>
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
												<th width="30%">보낸사람</th>
												<th width="40%">제목</th>
												<th width="20%">받은날짜</th>
											</tr>
										</thead>
										<tbody id="view">
										</tbody>
									</table>
								</div>
								<div class="col-md-12" style="width:300px; margin-left:auto; margin-right:auto;"> 
											<ul class="pagination pg-default pg-small" id="paging" style="align:center"></ul>							
								</div>
							</div>
						</div>
					</div>
					
					<%@ include file="/assets/common/modal/alldelete.jsp"%>
					<%@ include file="/assets/common/modal/addmailbox.jsp"%>
				</div>
			</div>
		</div>
		<%@ include file="/assets/common/footer.jsp"%>
	</div>
</body>
</html>
