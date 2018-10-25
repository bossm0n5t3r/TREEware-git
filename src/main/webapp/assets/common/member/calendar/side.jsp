<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="/treeware/assets/js/common.js"></script>
<script>

$(document).ready(function(){
	var dpt_sq = ${userInfo.dpt_sq};
	var rnk_sq = ${userInfo.rnk_sq};
	var dpt_name = change_dpt(dpt_sq);
	var rnk_name = change_rnk(rnk_sq);
	$("#rnk_name").text(rnk_name);
	$("#dpt_name").html(dpt_name);
});
</script>
<div class="sidebar">
	<div class="scrollbar-inner sidebar-wrapper">
		<div class="user">
			<div class="photo">
				<img src="${root}/assets/img/profile1.jpg">
			</div>
			<div class="info">
			<a class="" data-toggle="collapse" href="#collapseUser" aria-expanded="true">
				<span class="user_level">
					<span id="dpt_name" ></span>
					<span>${userInfo.emp_nm}&nbsp;<span id="rnk_name"></span>님</span>
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
			<li id="menu1" class="nav-item active">
				<a href="${root}/member/calendar/main.tree">
					<p>전체일정</p>
				</a>
			</li>
<!-- 			<li id="menu3" class="nav-item"> -->
<%-- 				<a href="${root}/menu/calendar/m_register.jsp"> --%>
<!-- 					<p>일정등록</p> -->
<!-- 				</a> -->
<!-- 			</li> -->
<!-- 			<li id="menu2" class="nav-item"> -->
<%-- 				<a href="${root}/member/calendar/todo.tree"> --%>
<!-- 					<p>TO DO</p> -->
<!-- 				</a> -->
<!-- 			</li> -->
		</ul>
	</div>
</div>