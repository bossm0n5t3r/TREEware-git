<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="departments" class="modal fade">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h6 class="modal-title">부서검색</h6>
				<button id="modalclose"type="button" class="close" data-dismiss="modal" aria-label="Close">&times;</button>
			</div>
			<div class="modal-body text-center" align="center">
				<form>
					<table style="width:100%">
						<tr>
							<td width="80%" style="padding:10px">
								<input type="text" name="dptsearch" id="dptsearch" class="mainbox" placeholder="검색어를 입력하세요" style="padding:10px" required>
							</td>
							<td align="right" width="20%">
								<input name="departmentname" id="departmentname" style="width:100%;height:100%"class="btn btn-primary btn-sm" type="button" value="검색">
							</td>
						</tr>
					</table>
					<hr>
				</form>
				<table class="table table-hover" style="width:90%;margin:20px">
					<thead>
						<tr>
							<th width="30%">부서코드</th>
							<th width="70%">부서명</th>
						</tr>
					</thead>
					<tbody style="margin:20px">
						<tr data-dismiss="modal" onclick="click_dpt(this)">
							<td>1</td>
							<td>관리부</td>
						</tr>
						<tr data-dismiss="modal" onclick="click_dpt(this)">
							<td>2</td>
							<td>인사과</td>
						</tr>
						<tr data-dismiss="modal" onclick="click_dpt(this)">
							<td>3</td>
							<td>무역부</td>
						</tr>
						<tr data-dismiss="modal" onclick="click_dpt(this)">
							<td>4</td>
							<td>영업부</td>
						</tr>
						<tr data-dismiss="modal" onclick="click_dpt(this)">
							<td>5</td>
							<td>판매부</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
function click_dpt(dptname){
    var td = $(dptname).children();
	document.getElementById("dptcode").value = td.eq(0).text();
	document.getElementById("dptname").value = td.eq(1).text();
}
</script>