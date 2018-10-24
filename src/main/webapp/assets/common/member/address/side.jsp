<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar">
	<div class="scrollbar-inner sidebar-wrapper">
		<%@ include file="/assets/common/user.jsp" %>
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
			<li id="menu1" class="nav-item">
				<a href="${root}/member/address/main.tree">
					<p>사내조직도</p>
				</a>
			</li>
			<li id="menu2" class="nav-item active">
				<a href="${root}/member/address/inside.tree">
					<p>내부연락망</p>
				</a>
			</li>
			<li id="menu3" class="nav-item">
				<a href="${root}/member/address/outside.tree">
					<p>외부연락망</p>
				</a>
			</li>
			<li id="menu4" class="nav-item">
				<a href="${root}/member/address/register.tree">
					<p>등록하기</p>
				</a>
			</li>
<!-- 			<li id="menu5" class="nav-item"> -->
<%-- 				<a href="${root}/member/address/bookmark.tree"> --%>
<!-- 					<p>즐겨찾기</p> -->
<!-- 				</a> -->
<!-- 			</li> -->
		</ul>
	</div>
</div>