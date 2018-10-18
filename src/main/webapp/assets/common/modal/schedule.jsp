<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="schedule" class="modal fade">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h6 class="modal-title">일정등록</h6>
				<button id="modalclose"type="button" class="close" data-dismiss="modal" aria-label="Close">&times;</button>
			</div>
			<div class="modal-body text-center" align="center">
				<form>
					<table style="width:100%">
						<tr>
							<td colspan="2" width="100%" style="padding:10px">
								<input type="text" name="title" id="title" class="mainbox" placeholder="일정제목" style="padding:10px" required>
							</td>
						</tr>
						<tr>
							<td style="padding:5px 10px">
							 	시작시간:
							</td>
							<td style="padding:5px 10px">
								<input type="datetime-local" id="start" class="start" style="width:100%">
							</td>
						</tr>
						<tr>
							<td style="padding:5px 10px">
							 	종료시간:
							</td>
							<td style="padding:5px 10px">
								<input type="datetime-local" id="end" class="end" style="width:100%">
							</td>
						</tr>
						<tr>
							<td colspan="2" width="100%" style="padding:10px">
								<input type="text" name="place" id="place" class="mainbox" placeholder="장소입력" style="padding:10px">
							</td>
						</tr>
						<tr>
							<td colspan="2" width="100%" style="padding:10px">
								<textarea class="form-control" id="comment" rows="5"></textarea>
							</td>
						</tr>
					</table>
					<hr>
				</form>
			</div>
			<div class="modal-footer" align="center">
				<button class="btn btn-success" data-dismiss="modal" style="width:100px">등록</button>
				<button class="btn btn-danger" data-dismiss="modal" style="width:100px">취소</button>
			</div>
		</div>
	</div>
</div>