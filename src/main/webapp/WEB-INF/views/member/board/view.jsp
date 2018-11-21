<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<%@ include file="/assets/common/member/board/import.jsp" %>
<script type="text/javascript">
$(document).ready(function(){
	getBrdList();
	
	$("#listBtn").click(function(){
		$(location).attr("href","${root}/member/board/mvBoard.tree?bcode=${param.bcode}&pg=${param.pg}&key=${param.key}&word=${param.word}&seq=${param.seq}")
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
											<button type="button" class="btn btn-sm btn-default" id="listBtn">
												목록으로
											</button>
										</a>
									</div>
								</div>
								<div class="row" style="padding:0 35px 40px 35px">
									<form name="writeform" id="writeform" method="post" style="width:100%">
											<p><b>조회수&ensp;:</b>&ensp;<span>${article.brd_hits}</span></p>
											<p><b>작성자&ensp;:</b>&ensp;<span>${article.emp_nm}</span></p>
											<p style="border:1px solid #eee;border-radius:5px;padding:20px 10px;margin:30px 0 20px 0;height:400px">
												${article.brd_ctt}
											</p>
									</form>
								</div>
								<div class="row">
									<div class="container">
								        <form name="commentInsertForm">
									        <label>comment</label>
								            <div class="input-group">
								               <input type="text" class="form-control" placeholder="내용을 입력하세요.">
								               <div class="input-group-append">
								                    <button class="btn btn-default" type="button">등록</button>
								               </div>
											</div>
								        </form>
								    </div>
								    <div class="container">
								        <div class="commentList">
								        	<p>에베베베</p>
								        	<p>에베베베</p>
								        	<p>에베베베</p>
								        	<p>에베베베</p>
								        	<p>에베베베</p>
								        </div>
								    </div>
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