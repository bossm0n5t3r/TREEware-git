<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="padding:10px">
<table class="table-hover" id="listtable" style="width:100%;font-size:100%">
	<thead>
		<tr style="border-bottom:1px #ddd solid;padding:10px 0">
			<th width="60%">서류제목</th>
			<th width="10%">담당자</th>
			<th width="13%">제출일</th>
			<th width="12%">처리현황</th>
			<th width="5%">재작성</th>
		</tr>
	</thead>
	<tbody>
		<% for(int i=0; i<10 ; i++){ %>
		<tr>
			<td id="ontitle">  <a href="/treeware/assets/common/member/sign/forms/kiahn.jsp">9월 회식비용 영수증</a></td>
			<td>손예진</td>
			<td>18.10.02</td>
			<td>처리보류</td>
			<td class="td-actions text-left">
				<div class="form-button-action">
					<button type="button" data-toggle="tooltip" title="Edit Task" class="btn btn-link btn-simple-primary">
						<i class="la la-edit"></i>
					</button>
				</div>
			</td>
		</tr>
		<%} %>
	</tbody>
</table>
</div>