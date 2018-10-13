<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar">
<div class="scrollbar-inner sidebar-wrapper">
	<%@ include file="/common/user.jsp" %>
	<ul class="nav">
		<li class="nav-item active">
			<a href="${root}/menu/mail/main.jsp">
				<i class="la la-envelope"></i>
				<p>메일</p>
				<span class="badge badge-count">5</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="${root}/menu/address/main.jsp">
				<i class="la la-sitemap"></i>
				<p>주소록</p>
				<span class="badge badge-count">14</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="${root}/menu/calendar/main.jsp">
				<i class="la la-calendar"></i>
				<p>일정</p>
				<span class="badge badge-count">50</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="${root}/menu/sign/main.jsp">
				<i class="la la-edit"></i>
<!-- 				<i class="la la-file"></i> -->
				<p>결재</p>
				<span class="badge badge-count">6</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="${root}/menu/commute/main.jsp">
				<i class="la la-clock-o"></i>
				<p>근태</p>
				<span class="badge badge-success">3</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="${root}/menu/board/main.jsp">
				<i class="la la-group"></i>
				<p>게시판</p>
				<span class="badge badge-danger">25</span>
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