<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<%-- <%@ include file="/assets/common/member/address/import.jsp" %> --%>
<%-- <script type="text/javascript" src="${root}/assets/js/plugin/jquery-ztree/dept_ztree.js"></script> --%>
</head>
<body>
<%@ include file="/assets/common/top.jsp" %>
<%@ include file="/assets/common/member/address/side.jsp" %>
<div class="main-panel">
	<div class="content">
		<div class="container-fluid">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<div class="card-title">외부연락망</div>
					</div>
					<div class="card-body">
						<div class="row">
<!-- 								<div class="col-md-3"> -->
<!-- 									<div class="card-sub"> -->
<!-- 										<div style="width:170px"> -->
<!-- 										<table style="width:100%"> -->
<!-- 											<tr> -->
<!-- 												<td><input type="text" style="width:130px" placeholder="검색어입력"></td> -->
<!-- 												<td><input type="button" value="검색" style="font-size:70%;padding:4px 10px"></td> -->
<!-- 											</tr> -->
<!-- 										</table> -->
<!-- 										<hr><ul id="tree" class="ztree" style="width:100%;overflow:auto;"></ul> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
								<div class="col-md-1"></div>
								<div class="col-md-10" style="padding:0 40px 0px 20px ">
								<!-- 주소록 콘텐츠 페이지  -->
<%-- 								<IFRAME ID="testIframe" Name="testIframe" FRAMEBORDER=0 SCROLLING="no" width=100% height=100% SRC="${root}/assets/common/member/address/list.jsp"></IFRAME> --%>
									<div class="buttonmenu" align="center" style="margin: 20px 0 20px 0">
										<div class="row" style="width: 100%">
											<div style="width: 40%; text-align: left">
												<table style="width:100%">
													<tr>
														<td>
														<p style="color:#007bff"><span id="addr_grp_nm"></span> 전체목록 [<span id="pageNumber"></span>명]</p>
														<input type="hidden" id="addr_grp_sq" name="addr_grp_sq">
														</td>
													</tr>
												</table>
											</div>
											<div style="width:20%" class="box-group">
													<select name="addr_grp_sq" class="form-control addr_grp_sq" style="font-size:100%">
													</select>
												</div>
											<div style="width: 40%; text-align: right">
												<form class="navbar-left navbar-form nav-search mr-md-3" action="">
													<table style="width:100%">
														<tr>
															<td style="width:30%">
															<select id="key" name="key" class="form-control" style="font-size:100%">
																	<option value='addr_nm'>이름</option>
																	<option value='addr_tel'>휴대전화번호</option>
																	<option value='addr_addr'>주소</option>
															</select>
															</td>
															<td style="width:70%">
																<div class="input-group" style="opacity:0.6">
																	<input id="search_word" name="search_word" type="text" placeholder="Search ..." class="form-control">
																	<input type="hidden" id="word" name="word">
																	<div class="input-group-append">
																		<span class="input-group-text">
																			<i id="searchBtn" class="la la-search search-icon"></i>
																		</span>
																	</div>
																</div>
															</td>
														</tr>
													</table>
												</form>
											</div>
										</div>
									</div>
									<table class="table-hover" id="listtable"
										style="width: 100%; font-size: 100%">
										<thead>
											<tr style="border-bottom: 1px #ddd solid">
												<th width="5%">
													<div class="form-check">
														<label class="form-check-label" style="height:10px"> <input
															class="form-check-input  select-all-checkbox"
															type="checkbox" data-select="checkbox"
															data-target=".task-select"> <span
															class="form-check-sign"></span>
														</label>
													</div>
												</th>
												<th width="10%">이름</th>
												<th width="15%">휴대전화</th>
												<th width="20%">이메일</th>
												<th width="15%">회사전화</th>
												<th width="10%">주소</th>
												<th width="10%">메모</th>
												<th width="5%">수정</th>
											</tr>
										</thead>
										<tbody id="view">

										</tbody>
									</table>
								<!-- 주소록 콘텐츠 끝 -->
								<br><br><br>
									<div class="clear"></div>
									<div align="center">
<!-- 											<table style="width:230px"> -->
<!-- 												<tr> -->
<!-- 													<td colspan="2"> -->
<!-- 														<ul class="pagination pg-default pg-small"> -->
<!-- 															<li class="page-item"> -->
<!-- 																<a class="page-link" href="#" aria-label="Previous"> -->
<!-- 																	<span aria-hidden="true">&laquo;</span> -->
<!-- 																	<span class="sr-only">Previous</span> -->
<!-- 																</a> -->
<!-- 															</li> -->
<!-- 															<li class="page-item active"><a class="page-link" href="#">1</a></li> -->
<!-- 															<li class="page-item"><a class="page-link" href="#">2</a></li> -->
<!-- 															<li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!-- 															<li class="page-item"><a class="page-link" href="#">4</a></li> -->
<!-- 															<li class="page-item"><a class="page-link" href="#">5</a></li> -->
<!-- 															<li class="page-item"> -->
<!-- 																<a class="page-link" href="#" aria-label="Next"> -->
<!-- 																	<span aria-hidden="true">&raquo;</span> -->
<!-- 																	<span class="sr-only">Next</span> -->
<!-- 																</a> -->
<!-- 															</li> -->
<!-- 														</ul> -->
<!-- 													</td> -->
<!-- 												</tr> -->
<!-- 												<tr><td colspan="2"></td></tr> -->
<!-- 												<tr> -->
<!-- 													<td><input type="text" style="width:100%"></td> -->
<!-- 													<td><input type="button" value="검색" style="font-size:70%;padding:5px 10px"></td> -->
<!-- 												</tr> -->
<!-- 											</table> -->
											<table>
												<tr align="center">
													<td>
														<ul class="pagination pg-default pg-small" id="paging" style="align:center"></ul>
													</td>
												</tr>
											</table>
										</div>
									<br><br><br>
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
</body>
<script type="text/javascript">
//목록객체생성
var totalData;
var dataPerPage = 10;
var first = 1;
var last;
var pageCount = 10;
var currentPage = 1;
var totalPage;
var addr_nm = new Array();
var addr_tel = new Array();
var addr_email = new Array();
var addr_cpn_tel = new Array();
var addr_addr = new Array();
var addr_mm = new Array();
var addrList;

$(document).ready(function(){
	document.getElementById("menu1").setAttribute("class", "nav-item");
	document.getElementById("menu2").setAttribute("class", "nav-item");
	document.getElementById("menu3").setAttribute("class", "nav-item active");
	document.getElementById("menu4").setAttribute("class", "nav-item");
// 	document.getElementById("menu5").setAttribute("class", "nav-item");
	
	getAddrGrpList();
	getAddrList();
	$('#pageNumber').text(totalData);
	
	for (var i = 0; i < addrList.length; i++) {
		addr_nm.push(addrList[i].addr_nm);
		addr_tel.push(addrList[i].addr_tel);
		addr_email.push(addrList[i].addr_email);
		addr_cpn_tel.push(addrList[i].addr_cpn_tel);
		addr_addr.push(addrList[i].addr_addr);
		addr_mm.push(addrList[i].addr_mm);
	}
	totalPage = Math.ceil((totalData-1)/dataPerPage);
	viewList();
	viewPaging();
})

function getAddrList() {
	$.ajax({
		type : "POST"
		,url : "${root}/member/address/getAddrList.tree"
		,async : false
		,dataType : "json"
		,data : {
			"emp_sq" : "${userInfo.emp_sq}"
		}
		,success : function(data) {
			setAddrList(data.addrList);
			setTotalData(data.page);
		}
		,error : function(e) {
			
		}
	});
}

function setAddrList(data) {
	addrList = data;
}

function setTotalData(data) {
	totalData = data;
}

//주소록 그룹 가져오기
function getAddrGrpList() {
	$.ajax({
		type : "GET"
		,url : "${root}/member/address/getAddrGrpList.tree"
		,dataType : "json"
		,data : {
			"emp_sq" : "${userInfo.emp_sq}"
		}
		,success : function(data) {
			makeAddrGrpList(data);
		}
		,error : function(e) {
			
		}
	})
}

// 주소록 그룹을 등록하기 화면에서 보여주기
function makeAddrGrpList(data) {
	$(".addr_grp_sq").empty();
	var aGrplist = data.addrGrpList;
	$(".addr_grp_sq").append("<option value='0' selected='selected' disabled>주소록 그룹 선택</option>");
	for (var i = 0; i < aGrplist.length; i++) {
		var option = $("<option></option>").attr("value", aGrplist[i].ADDR_GRP_SQ)
										   .text(aGrplist[i].ADDR_GRP_NM);
		$(".addr_grp_sq").append(option);
	}
}

//목록출력
function viewList(){
	$('#view').empty();
	for(var i=((currentPage-1)*10);i<Math.min(pageCount,totalData);i++){
		$('#view').append('<tr>');
		$('#view').append('<td><div class="form-check"><label class="form-check-label" style="height:10px"><input class="form-check-input task-select" type="checkbox"><span class="form-check-sign"></span></label></div></td>');
		$('#view').append('<td>'+addr_nm[i]+'</td>');
		$('#view').append('<td>'+addr_tel[i]+'</td>');
		$('#view').append('<td>'+addr_email[i]+'</td>');
		$('#view').append('<td>'+addr_cpn_tel[i]+'</td>');
		$('#view').append('<td>'+addr_addr[i]+'</td>');
		$('#view').append('<td>'+addr_mm[i]+'</td>');
		$('#view').append('<td><div class="form-button-action"><button type="button" data-toggle="tooltip" title="Edit Task" class="btn btn-link btn-simple-primary"><i class="la la-edit"></i></button></div></td>');
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

//이전클릭이벤트
function pre_click(){
	if(first>10){
	first = first - 10;
	pageCount = pageCount - 10;
	currentPage = last;
	viewPaging();
	}
};
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
</script>
</html>