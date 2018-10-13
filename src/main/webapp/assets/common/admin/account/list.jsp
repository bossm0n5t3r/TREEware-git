<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/import.jsp" %>
<div class="buttonmenu" align="center" style="margin:20px 0 20px 0">
	<div class="row" style="width:100%">
		<div style="width:60%;text-align:left;padding:5px">
			<h6>전체목록</h6>
		</div>
		<div style="width:40%;text-align:right">
			<button class="simplebtn1">선택수정</button>
		</div>
	</div>
</div>
<table class="table-hover" id="listtable" style="width:100%;font-size:100%">
	<thead>
		<tr style="border-bottom:1px #ddd solid">
			<th width="5%">
				<div class="form-check" >
					<label class="form-check-label">
						<input class="form-check-input  select-all-checkbox" type="checkbox" data-select="checkbox" data-target=".task-select">
						<span class="form-check-sign"></span>
					</label>
				</div>
			</th>
			<th width="10%">이름</th>
			<th width="17%">회사전화</th>
			<th width="20%">이메일</th>
			<th width="10%">부서</th>
			<th width="10%">직책</th>
			<th width="15%">휴대전화</th>
			<th width="3%">수정</th>
		</tr>
	</thead>
	<tbody>
		<% for(int i=0; i<10 ; i++){ %>
		<tr>
			<td>
				<div class="form-check">
					<label class="form-check-label">
						<input class="form-check-input task-select" type="checkbox">
						<span class="form-check-sign"></span>
					</label>
				</div>
			</td>
			<td>김하늘</td>
			<td>010-0000-0000</td>
			<td>skykim@gmail.com</td>
			<td>영업1팀</td>
			<td>사원</td>
			<td>070-000-0000</td>
			<td class="td-actions text-left">
				<div class="form-button-action">
					<button type="button" data-toggle="tooltip" title="Edit Task" class="btn btn-link btn-simple-primary">
						<i class="la la-edit"></i>
					</button>
<!-- 					<button type="button" data-toggle="tooltip" title="Remove" class="btn btn-link btn-simple-danger"> -->
<!-- 						<i class="la la-times"></i> -->
<!-- 					</button> -->
				</div>
			</td>
		</tr>
		<%} %>
	</tbody>
</table>