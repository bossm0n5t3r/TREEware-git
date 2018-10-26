<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<%@ include file="/assets/common/member/board/import.jsp" %>
<script>
$(document).ready(function(){
	var btype = '${userBoardInfo.btype}';
// 	$('#category').val('${userBoardInfo.bname}');
	$('#category').text('${userBoardInfo.bname}');
	if(btype == 1){
		$('#file').attr("type", "hidden");
	}
// 	$('#write_submit').click(function(){
// 		$('#bcode').val('${userBoardInfo.bcode}');
// 		$('#writeform').attr("action", "${root}/member/board/write.tree").submit();
// 	})
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
				</div>
			</div>
		<%@ include file="/assets/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>