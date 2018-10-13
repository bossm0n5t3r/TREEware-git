<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar">
	<div class="scrollbar-inner sidebar-wrapper">
		<%@ include file="/common/user.jsp" %>
		<div class="user" id="menucate">
			<div class="info">
				<a class="" data-toggle="collapse" href="#collapseMenu" aria-expanded="true" onmouseover="javascript:changecolor()">
					<span style="height:30px;padding:5px 0">
						<span style="color:#1d7af3;font-size:110%;align:left"><i class="la la-caret-square-o-down"></i>&nbsp;&nbsp;주소록</span>
					</span>
				</a>
				<div class="clearfix"></div>
				<div class="collapse in" id="collapseMenu" aria-expanded="true" style="">
					<ul class="nav">
						<li><a href="${root}/menu/home/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-home">&nbsp;&nbsp;홈</i></span></a></li>
						<li><a href="${root}/menu/mail/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-envelope">&nbsp;&nbsp;메일</i></span></a></li>
						<li><a href="${root}/menu/sign/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-edit">&nbsp;&nbsp;결재</i></span></a></li>
						<li><a href="${root}/menu/calendar/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-calendar">&nbsp;&nbsp;일정</i></span></a></li>
						<li><a href="${root}/menu/commute/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-clock-o">&nbsp;&nbsp;근태</i></span></a></li>
						<li><a href="${root}/menu/board/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-group">&nbsp;&nbsp;게시판</i></span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<ul class="nav">
			<li id="menu1" class="nav-item">
				<a href="${root}/menu/address/main.jsp">
					<p>사내조직도</p>
				</a>
			</li>
			<li id="menu2" class="nav-item active">
				<a href="${root}/menu/address/inside.jsp">
					<p>내부연락망</p>
				</a>
			</li>
			<li id="menu3" class="nav-item">
				<a href="${root}/menu/address/outside.jsp">
					<p>외부연락망</p>
				</a>
			</li>
			<li id="menu4" class="nav-item">
				<a href="${root}/menu/address/register.jsp">
					<p>등록하기</p>
				</a>
			</li>
			<li id="menu5" class="nav-item">
				<a href="${root}/menu/address/bookmark.jsp">
					<p>즐겨찾기</p>
				</a>
			</li>
		</ul>
	</div>
</div>