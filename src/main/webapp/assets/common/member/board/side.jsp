<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar">
	<div class="scrollbar-inner sidebar-wrapper">
		<%@ include file="/common/user.jsp" %>
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
						<li><a href="${root}/menu/home/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-home">&nbsp;&nbsp;홈</i></span></a></li>
						<li><a href="${root}/menu/mail/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-envelope">&nbsp;&nbsp;메일</i></span></a></li>
						<li><a href="${root}/menu/address/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-sitemap">&nbsp;&nbsp;주소록</i></span></a></li>
						<li><a href="${root}/menu/calendar/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-calendar">&nbsp;&nbsp;일정</i></span></a></li>
						<li><a href="${root}/menu/sign/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-edit">&nbsp;&nbsp;결재</i></span></a></li>
						<li><a href="${root}/menu/commute/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-clock-o">&nbsp;&nbsp;근태</i></span></a></li>
<%-- 						<li><a href="${root}/menu/board/main.jsp"><span class="link-collapse" style="margin:5px 0;color:#1d7af3"><i class="la la-group">&nbsp;&nbsp;게시판</i></span></a></li> --%>
					</ul>
				</div>
			</div>
		</div>
		
		<div style="margin:20px 0 10px 0" align="center">
		<a href="${root}/menu/board/m_write.jsp"><button class="btn btn-outline-primary" style="width:220px;">
		<i class="la la-edit"></i> &nbsp;글쓰기</button></a></div>
		
<!-- 		<div class="user" id="menucate"> -->
<!-- 			<div id="board1" class="info"> -->
<!-- 				<a class="" data-toggle="collapse" href="#collapseBoard1" aria-expanded="true" onmouseover="javascript:changecolor()"> -->
<!-- 					<span style="height:30px;padding:5px 5px 0 5px"> -->
<!-- 						<span style="color:#555;font-size:110%;align:left;font-weight:light">공지 게시판</span> -->
<!-- 					</span> -->
<!-- 				</a> -->
<!-- 				<div class="clearfix"></div> -->
<!-- 				<div class="collapse in" id="collapseBoard1" aria-expanded="true" style=""> -->
<!-- 					<ul class="nav"> -->
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-bullhorn"> 전사 공지</i></span></a></li> --%>
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 주간 식단표</i></span></a></li> --%>
<!-- 						<li class="li-lg"><span class="link-collapse" style="color:black;margin:10px 0"><mark>오피스 소식</mark></span></li> -->
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-globe"> 이주의 IT뉴스</i></span></a></li> --%>
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-globe"> 트리웨어 소식 </i></span></a></li> --%>
<!-- 						<li class="li-lg"><span class="link-collapse" style="color:black;margin:10px 0"><mark>사내 이벤트</mark></span></li> -->
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 사진공모전(-10/30)</i></span></a></li> --%>
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 이달의직원투표(-10/30)</i></span></a></li> --%>
<!-- 					</ul> -->
<!-- 					<br> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div id="board2" class="info"> -->
<!-- 				<a class="" data-toggle="collapse" href="#collapseBoard2" aria-expanded="true" onmouseover="javascript:changecolor()"> -->
<!-- 					<span style="height:30px;padding:5px"> -->
<!-- 						<span style="color:#555;font-size:110%;align:left">부서별 게시판</span> -->
<!-- 					</span> -->
<!-- 				</a> -->
<!-- 				<div class="clearfix"></div> -->
<!-- 				<div class="collapse in" id="collapseBoard2" aria-expanded="true" style=""> -->
<!-- 					<ul class="nav"> -->
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-bullhorn"> 전사 공지</i></span></a></li> --%>
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 주간 식단표</i></span></a></li> --%>
<!-- 						<li class="li-lg"><span class="link-collapse" style="color:black;margin:10px 0"><mark>오피스 소식</mark></span></li> -->
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-globe"> 이주의 IT뉴스</i></span></a></li> --%>
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-globe"> 트리웨어 소식 </i></span></a></li> --%>
<!-- 						<li class="li-lg"><span class="link-collapse" style="color:black;margin:10px 0"><mark>사내 이벤트</mark></span></li> -->
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 사진공모전(-10/30)</i></span></a></li> --%>
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 이달의직원투표(-10/30)</i></span></a></li> --%>
<!-- 					</ul> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div id="board3" class="info"> -->
<!-- 				<a class="" data-toggle="collapse" href="#collapseBoard3" aria-expanded="true" onmouseover="javascript:changecolor()"> -->
<!-- 					<span style="height:30px;padding:5px"> -->
<!-- 						<span style="color:#555;font-size:110%;align:left">커뮤니티</span> -->
<!-- 					</span> -->
<!-- 				</a> -->
<!-- 				<div class="clearfix"></div> -->
<!-- 				<div class="collapse in" id="collapseBoard3" aria-expanded="true" style=""> -->
<!-- 					<ul class="nav"> -->
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-bullhorn"> 전사 공지</i></span></a></li> --%>
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 주간 식단표</i></span></a></li> --%>
<!-- 						<li class="li-lg"><span class="link-collapse" style="color:black;margin:10px 0"><mark>오피스 소식</mark></span></li> -->
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-globe"> 이주의 IT뉴스</i></span></a></li> --%>
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-globe"> 트리웨어 소식 </i></span></a></li> --%>
<!-- 						<li class="li-lg"><span class="link-collapse" style="color:black;margin:10px 0"><mark>사내 이벤트</mark></span></li> -->
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 사진공모전(-10/30)</i></span></a></li> --%>
<%-- 						<li class="li-sm"><a href="${root}/menu/home/main.jsp"><span class="link-collapse"><i class="la la-calendar"> 이달의직원투표(-10/30)</i></span></a></li> --%>
<!-- 					</ul> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
		<ul class="nav">
			<li id="menu1" class="nav-item active">
				<a href="${root}/menu/board/main.jsp">
					<p>오피스소식</p>
				</a>
			</li>
			<li id="menu2" class="nav-item">
				<a href="${root}/menu/board/freeboard.jsp">
					<p>자유게시판</p>
				</a>
			</li>
			<li id="menu3" class="nav-item">
				<a href="${root}/menu/board/bookmark.jsp">
					<p>북마크함</p>
				</a>
			</li>
		</ul>
	</div>
</div>