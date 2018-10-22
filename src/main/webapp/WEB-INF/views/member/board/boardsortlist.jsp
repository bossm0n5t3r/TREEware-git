<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<%@ include file="/assets/common/member/board/import.jsp" %>
<script>
$(document).ready(function(){
// 	document.getElementById("menu1").setAttribute("class", "nav-item");
// 	document.getElementById("menu2").setAttribute("class", "nav-item active");
// 	document.getElementById("menu3").setAttribute("class", "nav-item");
	$('#writeBtn').click(function(){
		location.href = '${root}/member/board/write.tree';
	})
});
function boardClick(data){
	location.href = '${root}/member/board/boardview.tree?brd_sq='+$(data).attr('id');
}
</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/top.jsp" %>
		<%@ include file="/assets/common/member/board/side.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="card-title">${userBoardInfo.bname}</div>
							</div>
							<div class="card-body">
								<div class="row" align="center">
									<div class="col-md-1"></div>
									<div class="col-md-10" style="padding:0px 0 0 0 ">
										<!-- 글목록 시작  -->
											<div class="buttonmenu" align="center" style="margin:5px 0 5px 0">
												<div class="row" style="width:100%">
													<div style="width:50%;text-align:left;padding:10px">
														<p id="pageNumber" style="color:#007bff">전체목록 [${cnt}개]</p>
													</div>
													<div style="width:50%;text-align:right">
														<div class="row" style="float:right">
															<table>
																<tr>
																	<td>
																		<select id="key" name="key" class="form-control" style="width:100%;font-size:100%;height:30px">
																		<option value='0'>카테고리</option>
																		<option value='brd_sq'>글번호</option>
																		<option value='brd_ttl'>제목</option>
<!-- 																		<option value='emp_sq'>작성자</option> -->
																		<option value='brd_dt'>작성일</option>
																		</select>
																	</td>
																	<td>
																		<input id="word" type="text" style="width:100%;width:150px;height:30px">
																	</td>
																	<td>
																		<button class="simplebtn1" id="searchBtn" style="width:70px;height:30px">검색</button>
																		<button class="simplebtn2" id="writeBtn" style="width:70px;height:30px">글쓰기</button>
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
														<th width="50%">제목</th>
														<th width="9%">작성자</th>
														<th width="10%">작성일</th>
														<th width="6%">조회수</th>
														<th width="8%">북마크</th>
													</tr>
												</thead>
												<tbody id="view">
<%-- 												<c:forEach var="board" items="${board}"> --%>
<!-- 													<tr> -->
<!-- 														<td> -->
<!-- 															<div class="form-check"> -->
<!-- 																<label class="form-check-label"> -->
<!-- 																	<input class="form-check-input task-select" type="checkbox"> -->
<!-- 																	<span class="form-check-sign"></span> -->
<!-- 																</label> -->
<!-- 															</div> -->
<!-- 														</td> -->
<%-- 														<c:set var="emp_sq" value="${board.emp_sq}" /> --%>
<%-- 														<td style="text-align:center">${board.brd_sq}</td> --%>
<%-- 														<td id="${board.brd_sq}" onclick="javascript:boardClick(this)" style="text-align:left">${board.brd_ttl}<img src="${root}/assets/img/icon_new1.gif"></td> --%>
<%-- 														<td>${boardEmpName[emp_sq]}</td> --%>
<%-- 														<td>${board.brd_dt}</td> --%>
<%-- 														<td>${board.brd_hits}</td> --%>
<!-- 														<td><a href="#">추가</a></td> -->
<!-- 													</tr> -->
<%-- 												</c:forEach> --%>
												</tbody>
											</table>
											<div class="clear"></div>
											<div align="center">
												<table style="width:230px;margin:40px 0 60px 0">
													<tr>
														<td colspan="2">
															<ul id="paging" class="pagination pg-default pg-small">
<!-- 																<li class="page-item"> -->
<!-- 																	<a class="page-link" href="#" aria-label="Previous"> -->
<!-- 																		<span aria-hidden="true">&laquo;</span> -->
<!-- 																		<span class="sr-only">Previous</span> -->
<!-- 																	</a> -->
<!-- 																</li> -->
<!-- 																<li class="page-item active"><a class="page-link" href="#">1</a></li> -->
<!-- 																<li class="page-item"><a class="page-link" href="#">2</a></li> -->
<!-- 																<li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!-- 																<li class="page-item"><a class="page-link" href="#">4</a></li> -->
<!-- 																<li class="page-item"><a class="page-link" href="#">5</a></li> -->
<!-- 																<li class="page-item"> -->
<!-- 																	<a class="page-link" href="#" aria-label="Next"> -->
<!-- 																		<span aria-hidden="true">&raquo;</span> -->
<!-- 																		<span class="sr-only">Next</span> -->
<!-- 																	</a> -->
<!-- 																</li> -->
															</ul>
														</td>
													</tr>
												</table>
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
		<%@ include file="/assets/common/footer.jsp" %>
		</div>
	</div>
<script type="text/javascript">
//목록객체생성
var totalData = '${cnt}';
var dataPerPage = 10;
var first = 1;
var last;
var pageCount = 10;
var currentPage = 1;
var totalPage = Math.ceil((totalData-1)/dataPerPage);
var emp_sq = new Array();
var brd_sq = new Array();
var brd_ttl = new Array();
var brd_dt = new Array();
var brd_hits = new Array();
var boardEmpName = new Array();
var board;

//목록입력
$(document).ready(function(){
	
	'<c:forEach items="${board}" var="item">'
	'<c:set var="emp_sq" value="${item.emp_sq}"/>'
	emp_sq.push('${item.emp_sq}');
	brd_sq.push('${item.brd_sq}');
	brd_ttl.push('${item.brd_ttl}');
	brd_dt.push('${item.brd_dt}');
	brd_hits.push('${item.brd_hits}');
	boardEmpName.push('${boardEmpName[emp_sq]}');
	'</c:forEach>'
	//목록출력
	function viewlist(){
		$('#view').empty();
		for(var i=((currentPage-1)*10);i<Math.min(pageCount,totalData);i++){
			$('#view').append('<tr>');
			$('#view').append('<td><div class="form-check"><label class="form-check-label" style="height:10px"><input class="form-check-input task-select" type="checkbox"><span class="form-check-sign"></span></label></div></td>');
			$('#view').append('<td>'+brd_sq[i]+'</td>');
			$('#view').append('<td id="'+brd_sq[i]+'" onclick="javascript:boardClick(this)">'+brd_ttl[i]+'</td>');
			$('#view').append('<td>'+boardEmpName[i]+'</td>');
			$('#view').append('<td>'+brd_dt[i]+'</td>');
			$('#view').append('<td>'+brd_hits[i]+'</td>');
			$('#view').append('<td><a href="#">추가</a></td>');
			$('#view').append('</tr>');
		}
	}
	viewlist();
	function viewpaging(){
		last = Math.min(pageCount,totalPage);
		$('#paging').empty();
		$('#paging').append('<li class="page-item"><a id="pre" class="page-link" href="javascript:pre_click();" aria-label="Previous"><span aria-hidden="true">&laquo;</span>');
		for(var i=first;i<=last;i++){
			$('#paging').append('<li class="page-item"><a class="page-link" href="javascript:number_click('+i+')">'+i+'</a></li>');
		}
		$('#paging').append('<li class="page-item"><a id="next" class="page-link" href="javascript:next_click();" aria-label="Next"><span aria-hidden="true">&raquo;</span>');
	}
	viewpaging();
});
//목록출력
function viewlist(){
	$('#view').empty();
	for(var i=((currentPage-1)*10);i<Math.min(pageCount,totalData);i++){
		$('#view').append('<tr>');
		$('#view').append('<td><div class="form-check"><label class="form-check-label" style="height:10px"><input class="form-check-input task-select" type="checkbox"><span class="form-check-sign"></span></label></div></td>');
		$('#view').append('<td>'+brd_sq[i]+'</td>');
		$('#view').append('<td id="'+brd_sq[i]+'" onclick="javascript:boardClick(this)">'+brd_ttl[i]+'</td>');
		$('#view').append('<td>'+boardEmpName[i]+'</td>');
		$('#view').append('<td>'+brd_dt[i]+'</td>');
		$('#view').append('<td>'+brd_hits[i]+'</td>');
		$('#view').append('<td><a href="#">추가</a></td>');
		$('#view').append('</tr>');
	}
}
//페이지번호출력
function viewpaging(){
	last = Math.min(pageCount,totalPage);
	$('#paging').empty();
	$('#paging').append('<li class="page-item"><a class="page-link" href="javascript:pre_click();" aria-label="Previous"><span aria-hidden="true">&laquo;</span>');
	for(var i=first;i<=last;i++){
		$('#paging').append('<li class="page-item"><a class="page-link" href="javascript:number_click('+i+')">'+i+'</a></li>');
	}
	$('#paging').append('<li class="page-item"><a class="page-link" href="javascript:next_click();" aria-label="Next"><span aria-hidden="true">&raquo;</span>');
}
//이전클릭이벤트
function pre_click(){
	if(first>10){
	first = first - 10;
	pageCount = pageCount - 10;
	currentPage = last;
	viewpaging();
	}
};
//다음클릭이벤트
function next_click(){
	if(last<totalPage){
	first = first + 10;
	pageCount = pageCount + 10;
	currentPage = first;
	viewpaging();
	}
};
//번호클릭이벤트
function number_click(data){
	currentPage = data;
	pageCount = dataPerPage * data;
	viewlist();
}
//글검색
function memberSearch(){
	totalData=board.length;
	console.log(board.length);
	currentPage = 1;
	totalPage = Math.ceil((totalData-1)/dataPerPage);
	$('#view').empty();
	for(var i=((currentPage-1)*10);i<Math.min(pageCount,totalData);i++){
		$('#view').append('<tr>');
		$('#view').append('<td><div class="form-check"><label class="form-check-label" style="height:10px"><input class="form-check-input task-select" type="checkbox"><span class="form-check-sign"></span></label></div></td>');
		$('#view').append('<td>'+brd_sq[i]+'</td>');
		$('#view').append('<td id="'+brd_sq[i]+'" onclick="javascript:boardClick(this)">'+brd_ttl[i]+'</td>');
		$('#view').append('<td>'+boardEmpName[i]+'</td>');
		$('#view').append('<td>'+brd_dt[i]+'</td>');
		$('#view').append('<td>'+brd_hits[i]+'</td>');
		$('#view').append('<td><a href="#">추가</a></td>');
		$('#view').append('</tr>');
	}
	viewpaging();
}
//글검색 페이지
function searchPaging(){
	last = Math.min(pageCount,totalPage);
	$('#paging').empty();
	$('#paging').append('<li class="page-item"><a class="page-link" href="javascript:pre_click();" aria-label="Previous"><span aria-hidden="true">&laquo;</span>');
	for(var i=first;i<=last;i++){
		$('#paging').append('<li class="page-item"><a class="page-link" href="javascript:number_click('+i+')">'+i+'</a></li>');
	}
	$('#paging').append('<li class="page-item"><a class="page-link" href="javascript:next_click();" aria-label="Next"><span aria-hidden="true">&raquo;</span>');
}
//검색ajax
function searchajax(){
	$.ajax({
		type : "GET"
		,url : "${root}/member/board/boardsearch.tree"
		,dataType : "json"
		,data : {
			"key" : $("#key").val(),
			"word" : $("#word").val()
		}
		,success : function(data) {
			board = data.board
			memberSearch();
		}
		,error : function(e) {
			alert("에러");
		}
});
}
$(document).ready(function(){
	$('#word').keyup(function(){
		searchajax();
	});
});
</script>
</body>
</html>