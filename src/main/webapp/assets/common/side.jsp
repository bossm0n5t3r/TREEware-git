<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar">
<div class="scrollbar-inner sidebar-wrapper">
	<div class="user">
		<div class="photo">
			<img src="${root}/assets/img/profile1.jpg">
		</div>
		<div class="info">
			<a class="" data-toggle="collapse" href="#collapseUser" aria-expanded="true">
				<span>
					김고은 부장님
					<span class="user-level">응용 소프트웨어 개발팀</span>
					<span class="caret"></span>
				</span>
			</a>
			<div class="clearfix"></div>
	
			<div class="collapse in" id="collapseUser" aria-expanded="true" style="">
				<ul class="nav">
					<li>
						<a href="${root}/member/home/myinfo.tree">
							<span class="link-collapse">나의 정보</span>
						</a>
					</li>
					<li>
						<a href="${root}/member/home/treeinfo.tree">
							<span class="link-collapse">회사 정보</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<ul class="nav">
		<li class="nav-item active">
			<a href="${root}/member/mail/main.tree">
				<i class="la la-envelope"></i>
				<p>메일</p>
				<span class="badge badge-count">5</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="${root}/member/address/main.tree">
				<i class="la la-sitemap"></i>
				<p>주소록</p>
				<span class="badge badge-count">14</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="${root}/member/calendar/main.tree">
				<i class="la la-calendar"></i>
				<p>일정</p>
				<span class="badge badge-count">50</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="${root}/member/sign/main.tree">
				<i class="la la-edit"></i>
<!-- 				<i class="la la-file"></i> -->
				<p>결재</p>
				<span class="badge badge-count">6</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="${root}/member/commute/main.tree">
				<i class="la la-clock-o"></i>
				<p>근태</p>
				<span class="badge badge-success">3</span>
			</a>
		</li>
		<li class="nav-item">
			<a href="${root}/member/board/main.tree">
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