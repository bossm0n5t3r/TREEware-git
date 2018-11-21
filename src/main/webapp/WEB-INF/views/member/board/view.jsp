<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<%@ include file="/assets/common/member/board/import.jsp" %>
<style type="text/css">
.listcursor:hover{
	cursor:pointer;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	getBrdList();
	getCommentList();
	
	$("#listBtn").click(function(){
		$(location).attr("href","${root}/member/board/mvBoard.tree?bcode=${param.bcode}&pg=${param.pg}&key=${param.key}&word=${param.word}&seq=${param.seq}")
	});
	
	$("#commentBtn").click(function(){
		$.ajax({
			type : "POST"
			,url : "${root}/member/comment/add.tree"
			,data : {
				"brd_sq" : $("#brd_sq").val()
				,"emp_sq" : $("#emp_sq").val()
				,"rpl_ctt" : $("#rpl_ctt").val()
			}
			,dataType : "text"
			,success : function(data) {
				getCommentList();
			}
			,error : function(e) {
				
			}
		})
	});
	
	$(document).on('click','.deleteCommentBtn',function(){
		var rpl_sq = $(this).siblings("input").val();
		$.ajax({
			type : "POST"
			,url : "${root}/member/comment/delete.tree"
			,data : {
				"rpl_sq" : rpl_sq
			}
			,dataType : "text"
			,success : function(data) {
				getCommentList();
			}
			,error : function(e) {
				
			}
		})
	});
	
});
</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/top.jsp" %>
		<%@ include file="/assets/common/member/board/side.jsp" %>
		<div class="main-panel" >
			<div class="content">
				<div class="container-fluid">
					<div class="col-md-12">
						<div class="card">
							<div class="card-body">
							<br>
								<div class="row">
									<div class="col-md-10">
										<div align="left" style="padding:20px">
											<span style="color:#007bff;font-size:20px"><b>${article.brd_ttl}</b></span>
											&ensp;|&ensp;<span id="category">${article.bname}</span>
										</div>
									</div>
									<div class="col-md-2" align="right" style="padding:10px 25px">
										<a>
											<button type="button" class="btn btn-sm btn-default" id="listBtn">목록으로</button>
										</a>
									</div>
								</div>
								<div class="row" style="padding:0 35px 20px 35px">
									<form name="writeform" id="writeform" method="post" style="width:100%">
											<p><b>조회수&ensp;:</b>&ensp;<span>${article.brd_hits}</span></p>
											<p><b>작성자&ensp;:</b>&ensp;<span>${article.emp_nm}</span></p>
											<p style="border:1px solid #eee;border-radius:5px;padding:20px 10px;margin:30px 0 20px 0;height:400px">
												${article.brd_ctt}
											</p>
									</form>
								</div>
								<div class="row" style="padding:0 35px 10px 35px">
									<form id="commentForm" style="width:100%">
										<input type="hidden" id="brd_sq" name="brd_sq" value="${article.brd_sq }">
										<input type="hidden" id="emp_sq" name="emp_sq" value="${article.emp_sq }">
										<table style="width:100%;font-size:100%;text-align:center">
											<tr style="border-bottom:1px #ddd solid">
												<td width="10%">
													${article.emp_nm}
												</td>
												<td width="80%">
													<input type="text" id="rpl_ctt" name="rpl_ctt" class="form-control" placeholder="내용을 입력하세요.">
												</td>
												<td width="10%">
													<button id="commentBtn" class="btn btn-default" type="button">등록</button>
												</td>
											</tr>
										</table>
									</form>
								</div>
								<div class="row" style="padding:0 35px 10px 35px">
									<table style="width:100%;font-size:100%;text-align:center">
										<tr>
											<td width="10%">아이디</td>
											<td width="70%">댓글</td>
											<td width="15%">작성시간</td>
											<td width="5%"></td>
										</tr>
									</table>
								</div>
								<div class="row" style="padding:0 35px 50px 35px">
									<table style="width:100%;font-size:100%;text-align:center">
										<thead>
											<tr>
												<th width="10%"></th>
												<th width="70%"></th>
												<th width="15%"></th>
												<th width="5%"></th>
											</tr>
										</thead>
										<tbody id="commentList" class="listcursor">
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<%@ include file="/assets/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>