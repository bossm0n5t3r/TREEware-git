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
					<span style="height:30px;padding:5px">
						<span style="color:#1d7af3;font-size:110%;align:left"><i class="la la-clock-o"></i> 근태관리</span>
				</a>
				<div class="clearfix"></div>
				<div class="collapse in" id="collapseMenu" aria-expanded="true" style="">
					<ul class="nav">
					<li><a href="${root}/member/home/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-home">&nbsp;&nbsp;관리자메인</i></span></a></li>
						<li><a href="${root}/admin/home/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-home">&nbsp;&nbsp;관리자메인</i></span></a></li>
						<li><a href="${root}/admin/account/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-user">&nbsp;&nbsp;계정관리</i></span></a></li>
						<li><a href="${root}/admin/group/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-sitemap">&nbsp;&nbsp;조직도관리</i></span></a></li>
						<li><a href="${root}/admin/board/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-edit">&nbsp;&nbsp;게시판관리</i></span></a></li>
						<li><a href="${root}/admin/sign/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-edit">&nbsp;&nbsp;결재관리</i></span></a></li>
						<li><a href="${root}/admin/calendar/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-calendar">&nbsp;&nbsp;일정관리</i></span></a></li>
						<li><a href="${root}/admin/commute/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-clock-o">&nbsp;&nbsp;근태관리</i></span></a></li>
						<li><a href="${root}/admin/chart/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-bar-chart">&nbsp;&nbsp;통계</i></span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<ul class="nav">
			<li class="nav-item active">
				<a href="${root}/adminmenu/commute/main.jsp">
					<p>근태관리</p>
				</a>
			</li>
		</ul>
	</div>
</div>