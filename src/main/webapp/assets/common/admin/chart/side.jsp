<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar">
	<div class="scrollbar-inner sidebar-wrapper">
		<%@ include file="/common/user.jsp" %>
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
						<span style="color:#1d7af3;font-size:110%;align:left"><i class="la la-bar-chart"></i> 통계</span>
				</a>
				<div class="clearfix"></div>
				<div class="collapse in" id="collapseMenu" aria-expanded="true" style="">
					<ul class="nav">
						<li><a href="${root}/adminmenu/home/main.jsp"><span class="link-collapse"><i class="la la-home"> 관리자메인</i></span></a></li>
						<li><a href="${root}/adminmenu/account/main.jsp"><span class="link-collapse"><i class="la la-user"> 계정관리</i></span></a></li>
						<li><a href="${root}/adminmenu/calendar/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 일정관리</i></span></a></li>
						<li><a href="${root}/adminmenu/chart/main.jsp"><span class="link-collapse"><i class="la la-bar-chart"> 통계</i></span></a></li>
						<li><a href="${root}/adminmenu/commute/main.jsp"><span class="link-collapse"><i class="la la-clock-o"> 근태관리</i></span></a></li>
						<li><a href="${root}/adminmenu/group/main.jsp"><span class="link-collapse"><i class="la la-sitemap"> 조직도관리</i></span></a></li>
						<li><a href="${root}/adminmenu/sign/main.jsp"><span class="link-collapse"><i class="la la-edit"> 결재관리</i></span></a></li>
						<li><a href="${root}/adminmenu/board/main.jsp"><span class="link-collapse"><i class="la la-edit"> 게시판관리</i></span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<ul class="nav">
			<li id="menu1" class="nav-item">
				<a href="${root}/adminmenu/chart/main.jsp">
					<p>한눈에 보기</p>
				</a>
			</li>
			<li id="menu2" class="nav-item">
				<a href="${root}/adminmenu/chart/big/commute.jsp">
					<p>부서별 근태 현황</p>
				</a>
			</li>
			<li id="menu3" class="nav-item">
				<a href="${root}/adminmenu/chart/big/workinghours.jsp">
					<p>자율출퇴근 근무 현황</p>
				</a>
			</li>
			<li id="menu4" class="nav-item">
				<a href="${root}/adminmenu/chart/big/vacation.jsp">
					<p>기간별 휴가인원 통계</p>
				</a>
			</li>
			<li id="menu5" class="nav-item">
				<a href="${root}/adminmenu/chart/big/member.jsp">
					<p>보유인력 현황</p>
				</a>
			</li>
		</ul>
	</div>
</div>

