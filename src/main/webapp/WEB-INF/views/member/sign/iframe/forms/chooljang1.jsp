<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/import.jsp" %>
<script src="${root}/menu/sign/forms/js/chooljang1.js"></script>
<span>
<div id="divCustomWrapper" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">  <!-- Embededd Style이 적용받는 범위 입니다. 상단의 스타일은 이 요소 안에서만 동작합니다. --> 
<!-- 1. Title Section (start) : 문서제목이 작성되는 영역입니다.-->
<div id="titleSection" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 19pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">출 장 결 과 보 고 서<br></div><!-- 1. Title Section (end) -->
<!-- 2. Draft Section (Start) : 결재정보가 작성되는 영역입니다. -->
<div class="partition" id="draftSection" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><!-- 2.1 Drafter Information (Start) -->
<div class="left" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
<table style="width:250px; height: 120px;"><colgroup><col width="80"><col width="170"></colgroup>
	<tbody>
		<tr>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				기 안 자
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="0" data-dsl="{{label:draftUser}}" data-wrapper="" style="" data-value="" data-autotype=""><span class="comp_item">기안자</span><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="0"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
		<tr>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				소 속
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="1" data-dsl="{{label:draftDept}}" data-wrapper="" style="" data-value="" data-autotype=""><span class="comp_item">기안부서</span><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="1"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
		<tr>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				기 안 일
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="2" data-dsl="{{label:draftDate}}" data-wrapper="" style="" data-value="" data-autotype=""><span class="comp_item">기안일</span><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="2"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
		<tr>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				문서번호
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="3" data-dsl="{{label:docNo}}" data-wrapper="" style="" data-value="" data-autotype=""><span class="comp_item">문서번호</span><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="3"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
	</tbody>
</table>
</div><!-- 2.1 Drafter Information (end) --><!-- 2.2 Draft Line (start) -->

<div class="inaRowRight" width="300px" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
<!-- 결재선 1 Start-->
<span unselectable="on" contenteditable="false" class="comp_wrap" data-wrapper="">
<span class="sign_type1_inline" data-group-seq="0" data-group-name="기안" data-group-max-count="1" data-group-type="type1" data-is-reception="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
<!-- 결재선 이름 -->
<span class="sign_tit_wrap" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
	<span class="sign_tit" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
		<strong>기안</strong>
	</span>
</span>
<!-- 결재방 1EA Start -->
<span class="sign_member_wrap">
<span class="sign_member">
<span class="sign_rank_wrap test2">
<span class="sign_rank" top: 0px; margin-bottom: 0px;">&nbsp;</span></span><span class="sign_wrap" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span><span class="sign_date_wrap" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span class="sign_date" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span></span></span><!-- 결재방 1EA End--><!-- 휴지통 컴포넌트 Start--></span><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span><span contenteditable="false" class="comp_hover" data-content-protect-cover="true"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span></span><!-- 휴지통 컴포넌트 End--><!-- 결재선 1 End--><!-- 결재선 2 Start--><span unselectable="on" contenteditable="false" class="comp_wrap" data-wrapper=""><span class="sign_type1_inline" data-group-seq="1" data-group-name="승인" data-group-max-count="3" data-group-type="type1" data-is-reception="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><!-- 결재선 이름 --><span class="sign_tit_wrap" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span class="sign_tit" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><strong>승인</strong></span></span><!-- 결재방 Start--><!-- 결재방 1EA Start --><span class="sign_member_wrap" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span class="sign_member" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span class="sign_rank_wrap test2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span class="sign_rank" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span><span class="sign_wrap" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span><span class="sign_date_wrap" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span class="sign_date" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span></span></span><!-- 결재방 1EA End--><!-- 결재방 1EA Start --><span class="sign_member_wrap" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span class="sign_member" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span class="sign_rank_wrap test2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span class="sign_rank" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span><span class="sign_wrap" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span><span class="sign_date_wrap" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span class="sign_date" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span></span></span><!-- 결재방 1EA End--><!-- 결재방 1EA Start --><span class="sign_member_wrap" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span class="sign_member" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span class="sign_rank_wrap test2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span class="sign_rank" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span><span class="sign_wrap" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span><span class="sign_date_wrap" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span class="sign_date" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span></span></span><!-- 결재방 1EA End--><!-- 결재방 End--><!-- 휴지통 컴포넌트 Start--></span><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span><span contenteditable="false" class="comp_hover" data-content-protect-cover="true"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span></span><!-- 휴지통 컴포넌트 End--><!-- 결재선 2 End--></div><!-- 2.2 Draft Line (end) -->
</div><!-- 2. Draft Section (end) -->
<!-- 3. Detail Section (start) : 내용이 작성되는 영역입니다. -->
<table class="detailSection">
	<colgroup><!-- ### 테이블의 컬럼 너비는 colGroup을 통해 지정합니다. td에 지정 X ### -->
		<col width="100">
		<col width="120">
		<col width="120">
		<col width="100">
		<col width="130">
		<col width="100">
		<col width="130">
	</colgroup>
	<tbody id="dynamic_table1">
<!--기본 행 추가/삭제 + 자동 연산-->
		<tr>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				출장자
			</td>
			<td colspan="2" class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="4" data-dsl="{{text}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype=""><input class="ipt_editor" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="4"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				출장내용
			</td>
			<td colspan="3" class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="5" data-dsl="{{text}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype=""><input class="ipt_editor" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="5"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
		<tr>
			<td rowspan="3" class="subjectColumn rowspanTr1 dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				일정별<br>업무실적
<div class="viewModeHiddenPart div_button" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><a class="button" id="plus1" data-bypass="">+</a><a class="button" id="minus1" data-bypass="">-</a></div>
			</td>
			<td colspan="2" class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				일자(부터 ~ 까지)
			</td>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				방문선
			</td>
			<td colspan="3" class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				업무
			</td>
		</tr>
		<tr>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="6" data-dsl="{{calendar}}" data-wrapper="" style="" data-value="" data-autotype=""><input class="ipt_editor ipt_editor_date" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="6"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="7" data-dsl="{{calendar}}" data-wrapper="" style="" data-value="" data-autotype=""><input class="ipt_editor ipt_editor_date" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="7"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="8" data-dsl="{{text}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype=""><input class="ipt_editor" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="8"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
			<td colspan="3" class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="9" data-dsl="{{text}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype=""><input class="ipt_editor" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="9"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
		<tr class="copyRow1">
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="10" data-dsl="{{calendar}}" data-wrapper="" style="" data-value="" data-autotype=""><input class="ipt_editor ipt_editor_date" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="10"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="11" data-dsl="{{calendar}}" data-wrapper="" style="" data-value="" data-autotype=""><input class="ipt_editor ipt_editor_date" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="11"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="12" data-dsl="{{text}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype=""><input class="ipt_editor" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="12"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
			<td colspan="3" class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="13" data-dsl="{{text}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype=""><input class="ipt_editor" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="13"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
		<tr>
			<td rowspan="5" class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				출장비<br>정산
			</td>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				항목
			</td>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				금액(원)
			</td>
			<td colspan="2" class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				산출내역
			</td>
			<td rowspan="2" class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				담당
			</td>
			<td rowspan="2" class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="14" data-dsl="{{text}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype=""><input class="ipt_editor" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="14"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
		<tr>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				숙박비
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<p style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: 18px; margin-top: 0px; margin-bottom: 0px;"><span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="15" data-dsl="{{cSum:1$width:110$}}" data-wrapper="" style="width: 110px;" data-value="" data-autotype=""><input class="ipt_editor ipt_editor_num" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="15"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br></p>
			</td>
			<td colspan="2" class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="16" data-dsl="{{text}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype=""><input class="ipt_editor" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="16"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
		<tr>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				교통비
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<p style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: 18px; margin-top: 0px; margin-bottom: 0px;"><span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="17" data-dsl="{{cSum:1$width:110$}}" data-wrapper="" style="width: 110px;" data-value="" data-autotype=""><input class="ipt_editor ipt_editor_num" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="17"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br></p>
			</td>
			<td colspan="2" class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="18" data-dsl="{{text}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype=""><input class="ipt_editor" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="18"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
			<td rowspan="2" class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				부장
			</td>
			<td rowspan="2" class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="19" data-dsl="{{text}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype=""><input class="ipt_editor" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="19"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
		<tr>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				기타
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<p style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: 18px; margin-top: 0px; margin-bottom: 0px;"><span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="20" data-dsl="{{cSum:1$width:110$}}" data-wrapper="" style="width: 110px;" data-value="" data-autotype=""><input class="ipt_editor ipt_editor_num" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="20"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br></p>
			</td>
			<td colspan="2" class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="21" data-dsl="{{text}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype=""><input class="ipt_editor" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="21"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
		<tr>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				합계
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<p style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: 18px; margin-top: 0px; margin-bottom: 0px;"><span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="22" data-dsl="{{rSum:1$width:110$}}" data-wrapper="" style="width: 110px;" data-value="" data-autotype=""><input class="ipt_editor ipt_editor_num" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="22"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br></p>
			</td>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				당초
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="23" data-dsl="{{text}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype=""><input class="ipt_editor" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="23"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				차이:
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="24" data-dsl="{{text}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype=""><input class="ipt_editor" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="24"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
		<tr>
			<td colspan="7" class="detailColumn centerCol dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l" style="">
				<br>2018년 <span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="25" data-dsl="{{number$width:30$}}" data-wrapper="" style="width: 30px;" data-value="" data-autotype=""><input class="ipt_editor ipt_editor_num" type="text" style="width: 30px;"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="25"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>월 <span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="26" data-dsl="{{number$width:30$}}" data-wrapper="" style="width: 30px;" data-value="" data-autotype=""><input class="ipt_editor ipt_editor_num" type="text" style="width: 30px;"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="26"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>일 영수인 : <span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="27" data-dsl="{{text$width:70$}}" data-wrapper="" style="width: 70px;" data-value="" data-autotype=""><input class="ipt_editor" type="text"><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="27"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span> (인)
			</td>
		</tr>
	</tbody>
</table>
<!-- 3. Detail Section (end) -->
</div><!-- Page Wrapping (end) -->
<!--Style Start----------------------------------------><!-- Common style (Don't modify) --><style type="text/css">
/* 1. Essential style : 반드시 적용되어야 하는 스타일입니다. 문서작성 시, Sample에서 제거불가 한 스타일 */
#divCustomWrapper { word-break: break-all;  font-family: malgun gothic, dotum, arial, tahoma; font-size: 9pt; width:800px !important; }
#divCustomWrapper * { max-width: 800px !important; }
/* (1) Section(제목, 결재선, 내용) */
#divCustomWrapper #titleSection,
#divCustomWrapper #draftSection,
#divCustomWrapper .detailSection { width:800px !important; clear:both; margin-top: 20px !important; vertical-align: middle; }
#divCustomWrapper #titleSection { text-align: center; font-size: 25px; font-weight: bold; margin-bottom: 30px !important; margin-top: 20px !important; }
#divCustomWrapper #draftSection { display: inline-block; }
#divCustomWrapper .detailSection > * { margin-bottom: 10px; }
/* (2) Table */
#divCustomWrapper table { border-collapse: collapse; table-layout:fixed; word-break:break-all; }
</style><style type="text/css">
/* 2. Option style : 용도에 따라 적용합니다.*/
/* (1) Table option : 2Type(subject / detail), Affacted elements(td), Range('divCustomWrapper' 하단요소) */
#divCustomWrapper td.subjectColumn { border: 1px solid black !important; font-size: 9pt !important; height:22px; padding: 3px 1px 3px 1px;/*top right bottom left*/}
#divCustomWrapper td.detailColumn { border: 1px solid black !important; font-size: 9pt !important; height:22px; padding: 3px 5px 3px 5px; vertical-align: middle;/*top right bottom left*/ }
#divCustomWrapper td.detailColumn { text-align: left; }
#divCustomWrapper td.subjectColumn { background: rgb(221, 221, 221); font-weight: bold; text-align: center; vertical-align: middle; }
/* (2) detailColumn :  3Type(center / right / high), Affacted elements(All), Range('detailColumn' 하단요소) */
/* 설명 : detailColumn 커스텀 시 사용 */
/* 사용방법 : 번호와 중앙정렬 텍스트 작성 시 'centerCol' CLASS 적용, 숫자와 금액 작성 시 'rightCol' CLASS 적용,
editor 작성 시 'editorCol' CLASS 적용, textarea 작성 시 'areaCol' CLASS 적용 */
#divCustomWrapper td.detailColumn.centerCol { text-align: center; }
#divCustomWrapper td.detailColumn.rightCol { text-align: right; }
#divCustomWrapper td.detailColumn.editorCol { height: 300px; vertical-align: top;}
#divCustomWrapper td.detailColumn.areaCol { height: 120px; vertical-align: top; }
/* (3) Partition option : 2Type (left / right), Affacted elements(div), Range('partition'div영역 하단요소) */
/* 설명 : 좌,우로 분할되는 레이아웃 작성시 사용, 1라인에 1개 요소만 배치(줄바뀜 동반) */
/* 사용방법 : 분할할 영역에 partition CLASS를 적용 -> 분할배치하고자하는 하위요소에 'left, right' CLASS 적용 */
#divCustomWrapper div.partition .left { display: inline-block; clear: left; float: left; }
#divCustomWrapper div.partition .right { display: inline-block; clear: right; float: right; }
/* (4) In a row option : 2Type(left / right), Affacted elements(All), Range('inaRowRight or inRowLeft'div영역 하단요소) */
/* 설명 : 좌,우 끝에 정렬되는 레이아웃 작성 시 사용, 1라인에 여러개 요소 배치, Partition option과 조합(줄바뀜 없이 배치) */
/* 사용방법 : 나란히 정렬하고자 하는 요소들을, 'in a row'div 영역 내에 배치 */
#divCustomWrapper div.inaRowRight { text-align: right; }
#divCustomWrapper div.inaRowLeft { text-align: left;  }
/* (5) button :  2Type(td / div), Affacted elements(All) */
/* 설명 : 행 추가, 행 삭제 버튼 작성 시 'viewModeHiddenPart'(기안 시 버튼 가려주는 클래스)와 조합해서 사용 */
/* 사용방법 : 테이블에 한줄로 사용 시 td에 'viewModeHiddenPart .td_button' CLASS 적용 -> 각 버튼에 'button' CLASS 적용 td 내 텍스트 아래에 쓰이거나 테이블 밖에서 사용 시 div에 viewModeHiddenPart .div_button CLASS 적용 -> 각 버튼에 button CLASS 적용 */
#divCustomWrapper .td_button { word-break:break-all; padding: 3px; border: none; width: 800px; height: 22px; text-align: right; vertical-align: middle; }
#divCustomWrapper .div_button { word-break:break-all; padding: 3px; border: none; margin-top:2px; margin-bottom:2px; height: 22px; vertical-align: middle;}
#divCustomWrapper a.button { background: rgb(102, 102, 102); color: rgb(255, 255, 255); padding: 2px 5px; border-radius: 3px; margin-right: 0px; margin-left: 0px; font-size: 9pt !important; }
/* (6) p :  2Type(titleP / freeP), Affacted elements(All) */
/* 설명 : 테이블 별 소제목과 테이블 아래 설명 작성 시 사용*/
p.titleP{font-weight: bold; font-size: 12px; margin: 15px 1px 5px 5px;/*top right bottom left*/}
p.freeP{font-weight: normal; font-size: 12px; margin: 1px 1px 3px 5px;/*top right bottom left*/}
</style><!-- Common style (Don't modify) --><!-- Print style (Don't modify) --><style type="text/css">
/* 인쇄시에만 적용되는 스타일입니다. 순서대로 1.양식 인쇄 시 중앙으로 위치 2.테이블 테두리 고정 3.버튼 가리기 */
@media print {
.viewModeHiddenPart {display: none;}
h1, h2, h3, h4, h5, dl, dt, dd, ul, li, ol, th, td, p, blockquote, form, fieldset, legend, div,body { -webkit-print-color-adjust:exact; }
}
</style><!-- Print style (Don't modify)--><!-- Custom style --><style>
/* 추가적인 스타일이 필요한 경우, 하단의 style에서 정의하여야 합니다. 상단의 Common style은 변경하지 않습니다. */
/* (스타일이 중복되는 경우, 기본적으로 하단에 작성한 style이 우선적으로 적용됩니다.) */
</style><!-- Custom style --></span>
<p><br></p>