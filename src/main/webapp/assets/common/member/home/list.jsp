<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="/treeware/assets/js/common.js"></script>
<script>
$(document).ready(function(){
	document.getElementById("menu1").setAttribute("class", "nav-item");
	document.getElementById("menu2").setAttribute("class", "nav-item active");
	document.getElementById("menu3").setAttribute("class", "nav-item");
});
function boardClick(data){
	var a = $(data).attr('id');
	var apv_sq = parseInt(a);
	location.href = '${root}/member/sign/approve.tree?apv_sq='+apv_sq;
}
</script>
<style type="text/css">
.listcursor:hover{
	cursor:pointer;
}
</style>
<div style="padding:10px">
	<table class="table-hover" id="listtable" style="width:100%;font-size:100%;text-align:center">
			<thead>
				<tr style="border-bottom:1px #ddd solid" >
					<th width="15%" style="padding:20px 0 ">문서번호</th>
					<th width="45%">제목</th>
					<th width="20%">기안일</th>
					<th width="20%">진행사항</th>
				</tr>
			</thead>
			<tbody>
			<c:set var="nothing" value="0"/>
				<c:forEach varStatus="i" var="formList" items="${formList}">
					<c:set var="oksq" value="${formList.APV_OK_SQ}"/>
					<c:set var="emp1" value="${formList.EMP_1ST_SQ}"/>
					<c:set var="emp2" value="${formList.EMP_2ND_SQ}"/>
					<c:set var="emp3" value="${formList.EMP_FNL_SQ}"/>
					<c:set var="emp" value="${userInfo.emp_sq}"/>
					<c:choose>
						<c:when test="${emp1 eq emp}"><c:set var="okmy" value="0"/></c:when>
						<c:when test="${emp2 eq emp}"><c:set var="okmy" value="1"/></c:when>
						<c:when test="${emp3 eq emp}"><c:set var="okmy" value="2"/></c:when>
					</c:choose>
					<c:if test="${oksq == okmy }">
						<c:set var="nothing" value="1"/>
						<tr id="${formList.APV_SQ}" onclick="javascript:boardClick(this)" class="listcursor">
							<td style="color:#777;padding:20px 5px">
								${formList.APV_SQ}
							</td>
							<td style="text-align:left">
								<c:choose>
									<c:when test="${oksq >= okmy+1}"><span style="color:#ccc">${formList.APV_TITLE}</span></c:when>
									<c:when test="${oksq eq 4}"><span style="color:#dc3545;opacity:60%">${formList.APV_TITLE}</span></c:when>
									<c:otherwise>${formList.APV_TITLE}&nbsp;<img src="${root}/assets/img/icon_new1.gif"></c:otherwise>
								</c:choose>
							</td>
							<td>
								<b>${formList.APV_DATE}</b> 까지
							</td>
							<td>
								<c:choose>
										<c:when test="${oksq eq 0}"><span>진행중</span></c:when>
										<c:when test="${oksq eq 1}"><span>1차승인</span></c:when>
										<c:when test="${oksq eq 2}"><span>2차승인</span></c:when>
										<c:when test="${oksq eq 3}"><span style="color:#007bff"><b>결재완료</b></span></c:when>
										<c:when test="${oksq eq 4}"><span style="color:#dc3545">반려처리</span></c:when>
										<c:otherwise><span>보류</span></c:otherwise>
								</c:choose>
							</td>
						</tr>
					</c:if>
				</c:forEach>
				<c:if test="${nothing eq 0}">
						<tr>
							<td colspan="4" style="padding:20px 0">확인할 결재서류가 없습니다.</td>
						</tr>
					</c:if>
			</tbody>
	</table>
</div>