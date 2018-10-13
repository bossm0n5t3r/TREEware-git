<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="main-header">
<div class="logo-header">
	<a href="${root}/menu/home/main.jsp" class="logo">
		TREE WARE
	</a>
	<button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<button class="topbar-toggler more"><i class="la la-ellipsis-v"></i></button>
</div>
<nav class="navbar navbar-header navbar-expand-lg">
	<div class="container-fluid">
		
<!-- 					<form class="navbar-left navbar-form nav-search mr-md-3" action=""> -->
<!-- 						<div class="input-group"> -->
<!-- 							<input type="text" placeholder="Search ..." class="form-control"> -->
<!-- 							<div class="input-group-append"> -->
<!-- 								<span class="input-group-text"> -->
<!-- 									<i class="la la-search search-icon"></i> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</form> -->
		<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
			<li class="nav-item dropdown hidden-caret">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="la la-envelope"></i>
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">전체메일함</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">메일쓰기</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">받은메일함</a>
					<a class="dropdown-item" href="#">보낸메일함</a>
					<a class="dropdown-item" href="#">휴지통</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">설정</a>
				</div>
			</li>
			<li class="nav-item dropdown hidden-caret">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="la la-sitemap"></i>
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
				
					<a class="dropdown-item" href="#">전체주소록</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">즐겨찾기</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">사내주소록</a>
					<a class="dropdown-item" href="#">거래처주소록</a>
					<a class="dropdown-item" href="#">긴급연락망</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">설정</a>
					
				</div>
			</li>
			<li class="nav-item dropdown hidden-caret">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="la la-calendar"></i>
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">전체일정</a>
					<a class="dropdown-item" href="#">중요일정</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">설정</a>
				</div>
			</li>
			<li class="nav-item dropdown hidden-caret">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<!-- <i class="la la-archive"></i> -->
					<i class="la la-edit"></i>
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">새결재진행</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">진행 결재목록</a>
					<a class="dropdown-item" href="#">보류 결재목록</a>
					<a class="dropdown-item" href="#">완료 결재목록</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">설정</a>
				</div>
			</li>
			<li class="nav-item dropdown hidden-caret">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="la la-clock-o"></i>
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">출퇴근관리</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">내근태현황</a>
					<a class="dropdown-item" href="#">내연차현황</a>
					<a class="dropdown-item" href="#">부서별현황</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">설정</a>
				</div>
			</li>
			<li class="nav-item dropdown hidden-caret">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="la la-group"></i>
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">공지사항</a>
					<a class="dropdown-item" href="#">오피스소식</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">자료실</a>
					<a class="dropdown-item" href="#">자유게시판</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">설정</a>
				</div>
			</li>
			
			<li class="nav-item dropdown hidden-caret">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="la la-bell"></i>
					<span class="notification">4</span>
				</a>
				<ul class="dropdown-menu notif-box" aria-labelledby="navbarDropdown">
					<li>
						<div class="dropdown-title">4건의 새로운 소식이 있습니다.</div>
					</li>
					<li>
						<div class="notif-center">
							<a href="#">
								<div class="notif-icon notif-primary"> <i class="la la-user-plus"></i> </div>
								<div class="notif-content">
									<span class="block">
										[공지] 신입사원 환영회
									</span>
									<span class="time">2018년 10월 5일 18:00</span> 
								</div>
							</a>
							<a href="#">
								<div class="notif-icon notif-success"> <i class="la la-comment"></i> </div>
								<div class="notif-content">
									<span class="block">
										[일정] PM 2시 계열사 미팅
									</span>
									<span class="time">12 minutes ago</span> 
								</div>
							</a>
							<a href="#">
								<div class="notif-icon notif-success"> <i class="la la-comment"></i> </div>
								<div class="notif-content">
									<span class="block">
										[일정] AM 11시 팀회의 
									</span>
									<span class="time">12 minutes ago</span> 
								</div>
							</a>
							<a href="#">
								<!-- <div class="notif-icon notif-danger"> <i class="la la-heart"></i> </div>
								<div class="notif-content"> -->
								<div class="notif-img"> 
									<img src="${root}/assets/img/profile2.jpg" alt="Img Profile">
								</div>
								<div class="notif-content">
									<span class="block">
										[메세지] 이사님 힘내세요!
									</span>
									<span class="time">17 minutes ago</span> 
								</div>
							</a>
						</div>
					</li>
					<li>
						<a class="see-all" href="javascript:void(0);"> <strong>모든 알림 확인하기</strong> <i class="la la-angle-right"></i> </a>
					</li>
				</ul>
			</li>
			<li class="nav-item dropdown">
				<a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false"> 
<%-- 				<img src="${root}/assets/img/profile1.jpg" alt="user-img" width="36" class="img-circle"> --%>
				<span>마이메뉴</span></span> </a>
				<ul class="dropdown-menu dropdown-user">
					<li>
						<div class="user-box">
							<div class="u-img"><img src="${root}/assets/img/profile1.jpg" alt="user"></div>
							<div class="u-text">
								<h4>김고은</h4>
								<p class="text-muted">201810222</p>
								<p class="text-muted">이메일@projectname.com</p>
								<!-- <a href="profile.html" class="btn btn-rounded btn-danger btn-sm">버튼 메뉴</a> -->
							</div>
							</div>
						</li>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="${root}/adminmenu/home/main.jsp"><i class="ti-user"></i>관리자 페이지</a>
						<a class="dropdown-item" href="#"></i>단축 메뉴2</a>
						<a class="dropdown-item" href="#"><i class="ti-email"></i>단축 메뉴3</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"><i class="ti-settings"></i>정보 수정</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="${root}/member?act=logout"><i class="fa fa-power-off"></i>로그아웃</a>
					</ul>
					<!-- /.dropdown-user -->
				</li>
			</ul>
		</div>
	</nav>
</div>