<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar">
	<div class="scrollbar-inner sidebar-wrapper">
		<%@ include file="/assets/common/user.jsp" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		
		<script type="text/javascript">
		$(document).ready(function(){
			$("#sendmailbox").click(function(){	
				$.ajax({
				    type : "GET",
				    url : "${root}/member/mail/sendmailbox.tree",
				    data : {
				        "ml_grp_sq" : 2,
				        "pg" : 1
				    },
				    success : function(response) {
				  		
				    },
				    error : function(e) {
				       alert('Error: ' + e);
				    }
				}); 
//  				$("#ml_grp_sq").val("2");
//  				$("#pg").val("1");
// 				$("#commonform").attr("action","${root}/member/mail/sendmailbox.tree").submit();			
			});

			$("#trashmailbox").click(function(){	
 				$("#ml_grp_sq").val("3");
 				$("#pg").val("1");
				$("#commonform").attr("action","${root}/member/mail/trashmailbox.tree").submit();			
			});
			
			$("#mailboxopen").click(function(){
				$("#commonform").attr("action","${root}/member/mail/listmailbox.tree").submit();
			});
			
			$(".addlist").click(function(){
// 				$("#ml_grp_sq").val("${mailbox.ml_grp_sq}");			
				$("#ml_grp_sq").val("4");	
				
				$("#commonform").attr("action","${root}/member/mail/addlistview.tree").submit();
			});
			
		});
		</script>
		
		<c:set var="ml_grp_sq" value="${param.ml_grp_sq}"/>
		<c:set var="ml_sq" value="${param.ml_sq}"/>
		<c:set var="pg" value="${param.pg}"/>
		<c:set var="key" value="${param.key}"/>
		<c:set var="word" value="${param.word}"/>
		
		<form name="commonform" id="commonform">
			<input type="hidden" name="ml_grp_sq" id="ml_grp_sq" value="">
			<input type="hidden" name="ml_sq" id="ml_sq" value="">
			<input type="hidden" name="pg" id="pg" value="">
			<input type="hidden" name="key" id="key" value="">
			<input type="hidden" name="word" id="word" value="">
				
		</form>
		<!-- 
		<style>
		#menucate:hover{
			background-color:#C3D6E0;
			color:white;
		}
		</style> -->
		<div class="user" id="menucate">
			<div class="info">
				<a class="" data-toggle="collapse" href="#collapseMenu" aria-expanded="true" onmouseover="javascript:changecolor()">
					<span style="height:30px;padding:5px 0">
						<span style="color:#1d7af3;font-size:110%;align:left"><i class="la la-caret-square-o-down"></i>&nbsp;&nbsp;메일</span>
					</span>
				</a>
				<div class="clearfix"></div>
				<div class="collapse in" id="collapseMenu" aria-expanded="true" style="">
					<ul class="nav">
					<li><a href="${root}/member/home/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-home">&nbsp;&nbsp;홈</i></span></a></li>
						<li><a href="${root}/member/mail/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-envelope">&nbsp;&nbsp;메일</i></span></a></li>
						<li><a href="${root}/member/address/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-sitemap">&nbsp;&nbsp;주소록</i></span></a></li>
						<li><a href="${root}/member/calendar/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-calendar">&nbsp;&nbsp;일정</i></span></a></li>
						<li><a href="${root}/member/sign/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-edit">&nbsp;&nbsp;결재</i></span></a></li>
						<li><a href="${root}/member/commute/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-clock-o">&nbsp;&nbsp;근태</i></span></a></li>
						<li><a href="${root}/member/board/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-group">&nbsp;&nbsp;게시판</i></span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<ul class="nav">
		<div style="margin-left:30px">
		<a href="${root}/member/mail/write.tree"><button class="btn btn-outline-info" style="width:200px;">
		<i class="la la-edit"></i> &nbsp;메일쓰기</button></a></div><br>
			
			<li class="nav-item">
				<a href="${root}/member/mail/receivemailbox.tree">
					<i class="la la-mail-reply"></i>받은메일함</a>
				
			</li>
			<li class="nav-item">
				<a href="${root}/member/mail/sendmailbox.tree">
					<i class="la la-mail-forward"></i>보낸메일함
				</a>
			</li>
			
			<li class="nav-item">
				<a href="${root}/member/mail/trashmailbox.tree">
					<i class="la la-trash"></i>휴지통
				</a>
			</li>
			<hr>
			<li class="nav-item">
				<a href="${root}/member/mail/newmailbox1.tree">
					<i class="la la-files-o"></i>새메일함1
				</a>
			</li>
			
			<li class="nav-item">
				<a href="${root}/member/mail/newmailbox2.tree">
					<i class="la la-files-o"></i>새메일함2
				</a>
			</li>
			
<!--     	메일함추가		 -->
<!-- 			<div style="margin-left:30px"> -->
<!-- 		<button class="btn btn-outline-info" data-toggle="modal" data-target="#addmodal" style="width:130px;"> -->
<!-- 		<i class="la la-plus-square"></i> &nbsp;메일함 추가</button> -->
<!-- 		<button id="mailboxopen" name="mailboxopen" class="btn btn-outline-info">펼치기</button></div> -->
		
<%-- 		<c:forEach var="mailbox" items="${mailBox}"> --%>
<%-- 		<c:set var ="ml_grp_seq2" value="${mailbox.ml_grp_nm}"/> --%>
<!-- 		<li class="nav-item"> -->
<!-- 				<a class="addlist" name="addlist">  -->
<%-- 					<i class="la la-trash"></i>${mailbox.ml_grp_nm} --%>
<!-- 				</a> -->
<!-- 			</li> -->
<%-- 		</c:forEach> --%>
		</ul>
	</div>
</div>
  