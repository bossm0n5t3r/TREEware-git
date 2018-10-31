<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<%@ include file="/assets/common/member/board/import.jsp" %>
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
											<span style="color:#007bff;font-size:20px"><b>${boardView.brd_ttl}</b></span>
											&ensp;|&ensp;<span id="category"></span>
										</div>
									</div>
									<div class="col-md-2" align="right" style="padding:10px 25px">
										<a href="${root}/member/board/boardsortlist.tree?bcode=${userBoardInfo.bcode}&bname=${userBoardInfo.bname}&btype=${userBoardInfo.btype}">
											<button class="btn btn-sm btn-default" type="button" id="listBtn">
												목록으로
											</button>
										</a>
									</div>
								</div>
								<div class="row" style="padding:0 35px 40px 35px">
									<form name="writeform" id="writeform" method="post" style="width:100%">
											<p><b>조회수:</b>&ensp;<span>${boardView.brd_hits}</span></p>
											<p><b>작성자:</b>&ensp;<span>${boardView.emp_sq}</span></p>
											<p style="border:1px solid #eee;border-radius:5px;padding:20px 10px;margin:30px 0 20px 0;height:600px">
												${boardView.brd_ctt}
											</p>
									    <input type="hidden" id="bcode" name="bcode">
										<input type="hidden" id="pg" name="pg">
										<input type="hidden" id="word" name="word">
										<input type="hidden" id="key" name="key">
									</form>
								</div>
							</div>
						</div>
					</div>
					
<!-- 					여기부터 다시 리스트 -->
<!-- 					<div class="col-md-12"> -->
<!-- 						<div class="card"> -->
<!-- 							<div class="card-body"> -->
<!-- 								<table class="table-hover" id="listtable" style="width:100%;font-size:100%;text-align:center"> -->
<!-- 									<thead> -->
<!-- 										<tr style="border-bottom:1px #ddd solid"> -->
<!-- 											<th width="7"> -->
<!-- 												<div class="form-check" > -->
<!-- 													<label class="form-check-label"> -->
<!-- 														<input class="form-check-input  select-all-checkbox" type="checkbox" data-select="checkbox" data-target=".task-select"> -->
<!-- 														<span class="form-check-sign"></span> -->
<!-- 													</label> -->
<!-- 												</div> -->
<!-- 											</th> -->
<!-- 											<th width="10%">글번호</th> -->
<!-- 											<th width="70%">제목</th> -->
<!-- 											<th width="13%">조회수</th> -->
<!-- 										</tr> -->
<!-- 									</thead> -->
<!-- 									<tbody id="view"> -->
										
<!-- 									</tbody> -->
<!-- 								</table> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					리스트끝 -->
				</div>
			</div>
		<%@ include file="/assets/common/footer.jsp" %>
		</div>
<!-- 		<div class="main-panel"> -->
<!-- 			<div class="content" align="center"> -->
<!-- 				<form name="writeform" id="writeform" method="post" style="width:95%"> -->
<!-- 					<div class="form-group"> -->
<!-- 						<input name="category" type="text" class="form-control" id="category" readonly="readonly" style="height:45px"> -->
<%-- 						<input name="brd_ttl" type="text" class="form-control" id="brd_ttl" value="${boardView.brd_ttl}" readonly="readonly" style="height:45px"> --%>
<%-- 						<textarea name="brd_ctt" id="brd_ctt" rows="20" style="width:100%;margin:10px 0" readonly="readonly">${boardView.brd_ctt}</textarea> --%>
<!-- <!-- 						<input name="file1" type="file" id="file" style="background-color:white;width:200px;button-radius:5px"><br><br> --> -->
<!-- <!-- 						<button class="btn btn-success" id="write_submit" style="width:120px;padding:10px;margin:5px">등록하기</button> --> -->
<!-- <!-- 						<button class="btn btn-danger" onclick="javascript:goback()" style="width:120px;padding:10px;margin:5px">작성취소</button> --> -->
<!-- 				    </div> -->
<!-- 				    <input type="hidden" id="bcode" name="bcode"> -->
<!-- 					<input type="hidden" id="pg" name="pg"> -->
<!-- 					<input type="hidden" id="word" name="word"> -->
<!-- 					<input type="hidden" id="key" name="key"> -->
<!-- 				</form> -->
<!-- 			</div> -->
<%-- 		<%@ include file="/assets/common/footer.jsp" %> --%>
<!-- 		</div> -->
	</div>
</body>
</html>