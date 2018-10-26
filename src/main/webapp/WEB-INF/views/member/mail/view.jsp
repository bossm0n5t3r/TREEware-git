
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp" %>
<%@ include file="/assets/common/member/board/import.jsp" %>
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
	
	//view로 이동
	$(".posting").click(function() {
		$("#ml_grp_sq").val('${ml_grp_sq}');
		$("#pg").val('${pg}');
		$("#key").val('${key}');
		$("#word").val('${word}');
		$("#ml_sq").val($(this).attr("article-seq"));
		$("#commonform").attr("action", "${root}/member/mail/view.tree").submit();
	});
	
	//휴지통으로 이동
	$("#movetrashBtn").click(function(){
		var seqlist = [];
		$("input[name='seq']:checked").each(function() {
			seqlist.push($(this).val());
		});

		$.ajax({
			type : "POST",
			url : "${root}/member/mail/movetrashmail.tree",
			data : {
				myArray : seqlist,
				"emp_sq" : "${userInfo.emp_sq}",
				"ml_grp_sq" : 3
				
			},
			success : function(response) {
				$(location).attr("href", "${root}/member/mail/newmailbox1.tree");

			},
			error : function(e) {
				alert("휴지통으로 이동할 메일을 선택해주세요!");
			}
		});
		
		//답장
		$("#replyBtn")
				.click(
						function() {
							$("#ml_grp_sq").val('2');
							if($("input[name='seq']:checked").length ==1){
								$("#ml_sq").val($("input[name='seq']:checked").val());
							}
							else{
								alert("답장은 최대 1명에게만 가능합니다.");
								return;
							}
							
							$("#commonform").attr("action", "${root}/member/mail/reply.tree").submit();

						});
	});
	
	// 전달
	$("#deliveryBtn").click(function() {
						$("#ml_grp_sq").val('2');
						$("#pg").val('${pg}');
						$("#key").val('${key}');
						$("#word").val('${word}');
						
						if($("input[name='seq']:checked").length ==1){
							$("#ml_sq").val($("input[name='seq']:checked").val());
						}
						else{
							alert("전달은 최대 1개의 메일만 가능합니다.");
							return;
						}
						
						$("#commonform").attr("action", "${root}/member/mail/delivery.tree").submit();

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
											<span style="color:#007bff;font-size:20px"><b>${mail.ml_ttl}</b></span>
											&ensp;&ensp;<span id="category"></span>
										</div>
									</div>
									<div class="col-md-2" align="right" style="padding:10px 25px">
										<a href="${root}/member/mail/backlist.tree">
											<button class="btn btn-sm btn-default" type="button" id="listBtn">
												목록으로
											</button>
										</a>
									</div>
								</div>
								<div class="row" style="padding:0 35px 40px 35px">
									<form name="writeform" id="writeform" method="post" style="width:100%">
											<p><b>보낸사람:</b>&ensp;<span>${mail.ml_snd_add}</span></p>
											<p><b>받는사람:</b>&ensp;<span>${mail.ml_rcv_add}</span></p>
											<p style="border:1px solid #eee;border-radius:5px;padding:20px 10px;margin:30px 0 20px 0;height:600px">
												${mail.ml_ctt}
											</p>
									   
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