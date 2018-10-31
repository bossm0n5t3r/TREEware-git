<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar">
	<div class="scrollbar-inner sidebar-wrapper">
		<%@ include file="/assets/common/user.jsp" %>
		<div class="user" id="menucate">
			<div class="info">
				<a class="" data-toggle="collapse" href="#collapseMenu" aria-expanded="true" onmouseover="javascript:changecolor()">
					<span style="height:30px;padding:5px 0">
						<span style="color:#1d7af3;font-size:110%;align:left"><i class="la la-caret-square-o-down"></i>&nbsp;&nbsp;게시판</span>
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
		
		<div style="margin:20px 0 10px 0" align="center">
<%-- 		<a href="${root}/member/board/write.tree"><button class="btn btn-outline-primary" style="width:220px;"> --%>
<!-- 		<i class="la la-edit"></i> &nbsp;글쓰기</button></a> -->
		</div>
		<ul class="nav" id="boardlist">
<!-- 			<li id="menu1" class="nav-item active"> -->
<%-- 				<a href="${root}/member/board/main.tree"> --%>
<!-- 					<p>오피스소식</p> -->
<!-- 				</a> -->
<!-- 			</li> -->
<!-- 			<li id="menu2" class="nav-item"> -->
<%-- 				<a href="${root}/member/board/freeboard.tree"> --%>
<!-- 					<p>자유게시판</p> -->
<!-- 				</a> -->
<!-- 			</li> -->
<!-- 			<li id="menu3" class="nav-item"> -->
<%-- 				<a href="${root}/member/board/bookmark.tree"> --%>
<!-- 					<p>북마크함</p> -->
<!-- 				</a> -->
<!-- 			</li> -->
		</ul>
	</div>
</div>