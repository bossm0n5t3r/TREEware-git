<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="zipcode" class="modal fade">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h6 class="modal-title">우편번호검색</h6>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">&times;</button>
			</div>
			<div class="modal-body text-center">
				<form>
					<table style="width:100%">
						<tr>
							<td width="80%" style="padding:10px">
								<input type="text" name="zipsearch" id="zipsearch" class="mainbox" placeholder="검색어를 입력하세요" style="padding:10px" required>
							</td>
							<td align="right" width="20%">
								<input name="department" id="department" style="width:100%;height:100%"class="btn btn-primary btn-sm" type="button" value="검색">
							</td>
						</tr>
					</table>
					<hr>
				</form>
				<table class="table table-hover" style="width:90%;margin:20px">
					<thead>
						<tr >
							<th width="30%">우편번호</th>
							<th width="70%">도로명주소</th>
						</tr>
					</thead>
					<tbody style="margin:20px">
						<%for(int i=0; i<8 ; i++){ %>
						<tr data-dismiss="modal" onclick="click_zip(this)">
							<td>2345</td>
							<td>서울특별시 구로구 디지털로19</td>
						</tr>
						<%} %>
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
function click_zip(zipname){
    var td = $(zipname).children();
	document.getElementById("address1").value = td.eq(0).text();
	document.getElementById("address2").value = td.eq(1).text();
}
</script>