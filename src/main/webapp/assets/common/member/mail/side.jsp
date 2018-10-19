<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar">
	<div class="scrollbar-inner sidebar-wrapper">
		<%@ include file="/assets/common/user.jsp" %>
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
					<p><i class="la la-mail-reply"></i>받은메일함</p>
				</a>
			</li>
			<li class="nav-item">
				<a href="${root}/member/mail/sendmailbox.tree">
					<p><i class="la la-mail-forward"></i>보낸메일함</p>
				</a>
			</li>
			<li class="nav-item">
				<a href="${root}/member/mail/newmailbox.tree">
					<p><i class="la la-folder"></i>새메일함1</p>
				</a>
			</li>
			<li class="nav-item">
				<a href="${root}/member/mail/newmailbox.tree">
					<p><i class="la la-folder"></i>새메일함2</p>
				</a>
			</li>
			
			<li class="nav-item">
				<a href="${root}/member/mail/trashmailbox.tree">
					<i class="la la-trash"></i>휴지통
				</a>
			</li>
			<br>
			<div style="margin-left:30px">
		<button class="btn btn-outline-info" data-toggle="modal" data-target="#addmodal" style="width:130px;">
		<i class="la la-plus-square"></i> &nbsp;메일함 추가</button></div>
		</ul>
	</div>
</div>
  