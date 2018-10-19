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
					<span class="user-level">[관리자모드]</span>
					<span class="caret"></span>
				</span>
			</a>
			<div class="clearfix"></div>
	
			<div class="collapse in" id="collapseUser" aria-expanded="true" style="">
				<ul class="nav">
					<li>
						<a href="${root}/admin/home/treeinfo.tree">
							<span class="link-collapse">회사 정보 수정</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>