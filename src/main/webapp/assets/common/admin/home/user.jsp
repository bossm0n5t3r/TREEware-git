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
<div class="user">
		<div class="photo">
			<img src="${root}/assets/img/profile1.jpg">
		</div>
		<div class="info">
			<a class="" data-toggle="collapse" href="#collapseUser" aria-expanded="true">
				<span>
					<span>${userInfo.emp_nm }&nbsp;<span id="rnk_name"></span>님</span>
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