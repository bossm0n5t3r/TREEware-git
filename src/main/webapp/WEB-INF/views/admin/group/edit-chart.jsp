<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(document).ready(function (){

});
</script>
<!-- 조직도 상단바 -->
<div id="edit-panel">
	<div class="row">
		<div id="chart-container" style="background-color:white;width:100%;padding:40px 0"></div>
		<div class="col-md-12" style="margin:10px 01">
		<hr>
		<br>
			<table>
				<tr>
					<td>
						<!-- 보기모드선택 -->
						<p style="margin:5px 0">
						<b>모드변경 :</b>
						<span id="chart-state-panel" class="radio-panel">
							<label class="form-radio-label" for="rd-view">
								<input class="form-radio-input" type="radio" name="chart-state" id="rd-view" value="view">
								<span class="form-radio-sign">보기모드</span>
							</label>
							<label class="form-radio-label" for="rd-edit">
								<input class="form-radio-input" type="radio" name="chart-state" id="rd-edit" value="edit" checked="true">
								<span class="form-radio-sign">수정모드</span>
							</label>
					   	</span>
					   	<p>
				   	</td>
				</tr>
				<tr>
					<td>
						<!-- 개체종류 -->
						<p style="margin:5px 0">
						<b>생성하기 :</b>
						<span id="node-type-panel" class="radio-panel">
							<label class="form-radio-label" for="rd-parent">
								<input class="form-radio-input" type="radio" name="node-type" id="rd-parent" value="parent">
								<span class="form-radio-sign">상위개체</span>
							</label>
							<label class="form-radio-label" for="rd-child">
								<input class="form-radio-input" type="radio" name="node-type" id="rd-child" value="children">
								<span class="form-radio-sign">하위개체</span>
							</label>
							<label class="form-radio-label" for="rd-sibling">
								<input class="form-radio-input" type="radio" name="node-type" id="rd-sibling" value="siblings">
								<span class="form-radio-sign">형제개체</span>
							</label>
						</span>
					</td>
				</tr>
			</table>
		</div>
		<div class="col-md-12" style="margin:10px 0">
			<!-- 노드추가 -->
			<table>
				<tr height="40px">
					<td>
						<b>선택한 개체 :</b>
					</td>
					<td colspan="2">
						<input type="text" id="selected-node" class="selected-node-group" style="width:100%;height:30px">
					</td>
				</tr>
				<tr height="40px">
					<td>
						<b>생성할 이름 :</b>
					</td>
					<td>
						<ul id="new-nodelist" style="list-style-type: none;margin:0;padding:0">
							<li><input type="text" class="new-node"></li>
						</ul>
					</td>
					<td>
						<i class="la la-plus-square" id="btn-add-input" style="font-size:150%"></i>
						<i class="la la-minus-square" id="btn-remove-input" style="font-size:150%"></i>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<p style="margin:15px 0 60px 0">
	<button type="button" id="btn-add-nodes" class="btn btn-success" onclick="add_click()">추가하기</button>
	<button type="button" id="btn-delete-nodes" class="btn btn-danger">삭제하기</button>
	<button type="button" id="btn-reset" class="btn btn-warning">수정취소</button>
	</p>
</div>
 

