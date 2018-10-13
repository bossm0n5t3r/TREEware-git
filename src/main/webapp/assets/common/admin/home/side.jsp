<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar">
<div class="scrollbar-inner sidebar-wrapper">
	<%@ include file="/common/user.jsp" %>
	<ul class="nav">
		<li class="nav-item active">
			<a href="${root}/adminmenu/account/main.jsp">
				<i class="la la-user"></i>
				<p>계정관리</p>
				<span class="badge badge-count">5</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="${root}/adminmenu/calendar/main.jsp">
				<i class="la la-calendar"></i>
				<p>일정관리</p>
				<span class="badge badge-count">14</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="${root}/adminmenu/chart/main.jsp">
				<i class="la la-bar-chart"></i>
				<p>통계</p>
				<span class="badge badge-count">50</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="${root}/adminmenu/commute/main.jsp">
				<i class="la la-clock-o"></i>
<!-- 				<i class="la la-file"></i> -->
				<p>근태관리</p>
				<span class="badge badge-count">6</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="${root}/adminmenu/group/main.jsp">
				<i class="la la-sitemap"></i>
				<p>조직도관리</p>
				<span class="badge badge-success">3</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="${root}/adminmenu/sign/main.jsp">
				<i class="la la-edit"></i>
				<p>결재관리</p>
				<span class="badge badge-danger">25</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="${root}/adminmenu/board/main.jsp">
				<i class="la la-edit"></i>
				<p>게시판관리</p>
				<span class="badge badge-danger">2</span>
			</a>
		</li>
		<!-- <li class="nav-item update-pro">
			<button  data-toggle="modal" data-target="#modalUpdate">
				<i class="la la-hand-pointer-o"></i>
				<p>Update To Pro</p>
			</button>
		</li> -->
		</ul>
	</div>
</div>