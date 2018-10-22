<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="register" class="modal fade">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h6 class="modal-title">일정등록</h6>
				<button id="modalclose"type="button" class="close" data-dismiss="modal" aria-label="Close">&times;</button>
			</div>
			<div class="modal-body text-center" align="center">
				<form id="registerForm">
				<input type="hidden" name="scd_sq" class="scd_sq">
					<table style="width:100%">
						<tr>
							<td colspan="2" width="100%" style="padding:10px">
								<input type="text" name="scd_nm" class="mainbox scd_nm" placeholder="일정제목" style="padding:10px" required>
							</td>
						</tr>
						<tr>
							<td>
								<div style="width:100%" class="box-group">
									<select name="scd_div_sq" class="form-control scd_div_sq" style="font-size:100%">
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<td style="padding:5px 10px">
							 	시작일:
							</td>
							<td style="padding:5px 10px">
								<input type="date" name="scd_sday" class="start scd_sday" style="width:100%">
							</td>
						</tr>
						<tr>
							<td style="padding:5px 10px">
							 	종료일:
							</td>
							<td style="padding:5px 10px">
								<input type="date" name="scd_eday" class="end scd_eday" style="width:100%">
							</td>
						</tr>
						<tr>
							<td colspan="2" width="100%" style="padding:10px">
								<input type="text" name="scd_pst" class="mainbox scd_pst" placeholder="장소입력" style="padding:10px">
							</td>
						</tr>
						<tr>
							<td colspan="2" width="100%" style="padding:10px">
								<textarea class="form-control scd_dct" name="scd_dct" rows="5"></textarea>
							</td>
						</tr>
					</table>
					<hr>
				</form>
			</div>
			<div class="modal-footer" align="center">
				<button class="btn btn-success" id="registerBtn" data-dismiss="modal" style="width:100px">등록</button>
				<button class="btn btn-danger" data-dismiss="modal" style="width:100px">취소</button>
			</div>
		</div>
	</div>
</div>