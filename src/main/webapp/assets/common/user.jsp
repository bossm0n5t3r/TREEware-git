<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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