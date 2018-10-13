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
						김고은 이사
						<span class="user-level">응용 소프트웨어 개발팀</span>
						<span class="caret"></span>
					</span>
				</a>
				<div class="clearfix"></div>
	
				<div class="collapse in" id="collapseUser" aria-expanded="true" style="">
					<ul class="nav">
						<li>
							<a href="#profile">
								<span class="link-collapse">내 정보</span>
							</a>
						</li>
						<li>
							<a href="#edit">
								<span class="link-collapse">사원정보</span>
							</a>
						</li>
						<li>
							<a href="#settings">
								<span class="link-collapse">회사정보</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="user">
			<div class="info">
				<a class="" data-toggle="collapse" href="#collapseMenu" aria-expanded="true" onmouseover="javascript:changecolor()">
					<span style="height:30px;padding:5px 0">
						<span style="color:#1d7af3;font-size:110%;align:left"><i class="la la-caret-square-o-down"></i>&nbsp;&nbsp;일정</span>
					</span>
				</a>
				<div class="clearfix"></div>
				<div class="collapse in" id="collapseMenu" aria-expanded="true" style="">
					<ul class="nav">
						<li><a href="${root}/menu/home/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-home">&nbsp;&nbsp;홈</i></span></a></li>
						<li><a href="${root}/menu/mail/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-envelope">&nbsp;&nbsp;메일</i></span></a></li>
						<li><a href="${root}/menu/address/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-sitemap">&nbsp;&nbsp;주소록</i></span></a></li>
<%-- 						<li><a href="${root}/menu/calendar/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-calendar">&nbsp;&nbsp;일정</i></span></a></li> --%>
						<li><a href="${root}/menu/sign/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-edit">&nbsp;&nbsp;결재</i></span></a></li>
						<li><a href="${root}/menu/commute/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-clock-o">&nbsp;&nbsp;근태</i></span></a></li>
						<li><a href="${root}/menu/board/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-group">&nbsp;&nbsp;게시판</i></span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<ul class="nav">
			<li id="menu1" class="nav-item active">
				<a href="${root}/menu/calendar/main.jsp">
					<p>전체일정</p>
				</a>
			</li>
<!-- 			<li id="menu3" class="nav-item"> -->
<%-- 				<a href="${root}/menu/calendar/m_register.jsp"> --%>
<!-- 					<p>일정등록</p> -->
<!-- 				</a> -->
<!-- 			</li> -->
			<li id="menu2" class="nav-item">
				<a href="${root}/menu/calendar/todo.jsp">
					<p>TO DO</p>
				</a>
			</li>
		</ul>
	</div>
</div>