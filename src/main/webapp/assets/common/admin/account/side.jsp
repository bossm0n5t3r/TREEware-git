<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar">
	<div class="scrollbar-inner sidebar-wrapper">
	<%@ include file="/assets/common/admin/home/user.jsp" %>
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
						<span style="color:#1d7af3;font-size:110%;align:left"><i class="la la-user"></i> 계정관리</span>
				</a>
				<div class="clearfix"></div>
				<div class="collapse in" id="collapseMenu" aria-expanded="true" style="">
					<ul class="nav">
						<li><a href="${root}/admin/home/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-home">&nbsp;&nbsp;관리자메인</i></span></a></li>
						<li><a href="${root}/admin/account/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-user">&nbsp;&nbsp;계정관리</i></span></a></li>
<%-- 						<li><a href="${root}/admin/group/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-sitemap">&nbsp;&nbsp;조직도관리</i></span></a></li> --%>
						<li><a href="${root}/admin/board/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-edit">&nbsp;&nbsp;게시판관리</i></span></a></li>
<%-- 						<li><a href="${root}/admin/sign/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-edit">&nbsp;&nbsp;결재관리</i></span></a></li> --%>
<%-- 						<li><a href="${root}/admin/calendar/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-calendar">&nbsp;&nbsp;일정관리</i></span></a></li> --%>
<%-- 						<li><a href="${root}/admin/commute/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-clock-o">&nbsp;&nbsp;근태관리</i></span></a></li> --%>
						<li><a href="${root}/admin/chart/main.tree"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-bar-chart">&nbsp;&nbsp;통계</i></span></a></li>
						
<%-- 						<li><a href="${root}/adminmenu/home/main.jsp"><span class="link-collapse"><i class="la la-home"> 관리자메인</i></span></a></li> --%>
<%-- 						<li><a href="${root}/adminmenu/account/main.jsp"><span class="link-collapse"><i class="la la-user"> 계정관리</i></span></a></li> --%>
<%-- 						<li><a href="${root}/adminmenu/calendar/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 일정관리</i></span></a></li> --%>
<%-- 						<li><a href="${root}/adminmenu/chart/main.jsp"><span class="link-collapse"><i class="la la-bar-chart"> 통계</i></span></a></li> --%>
<%-- 						<li><a href="${root}/adminmenu/commute/main.jsp"><span class="link-collapse"><i class="la la-clock-o"> 근태관리</i></span></a></li> --%>
<%-- 						<li><a href="${root}/adminmenu/group/main.jsp"><span class="link-collapse"><i class="la la-sitemap"> 조직도관리</i></span></a></li> --%>
<%-- 						<li><a href="${root}/adminmenu/sign/main.jsp"><span class="link-collapse"><i class="la la-edit"> 결재관리</i></span></a></li> --%>
<%-- 						<li><a href="${root}/adminmenu/board/main.jsp"><span class="link-collapse"><i class="la la-edit"> 게시판관리</i></span></a></li> --%>
					</ul>
				</div>
			</div>
		</div>
		<ul class="nav">
			<li id="menu1" class="nav-item">
				<a href="${root}/admin/account/main.tree">
					<p>사원목록</p>
				</a>
			</li>
			<li id="menu2" class="nav-item">
				<a href="${root}/admin/account/register.tree">
					<p>사원등록</p>
				</a>
			</li>
			<li id="menu3" class="nav-item">
				<a href="${root}/admin/account/view.tree">
					<p>정보수정</p>
				</a>
			</li>
<!-- 			<li class="nav-item"> -->
<%-- 				<a href="${root}/admin/account/edit.tree"> --%>
<!-- 					<p>상세페이지2)사원정보수정</p> -->
<!-- 				</a> -->
<!-- 			</li> -->
		</ul>
	</div>
</div>