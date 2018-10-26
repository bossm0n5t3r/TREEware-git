var root;

function setRoot(data) {
	root = data;
}

function submit(){
//		 $("#successMsg").modal();
		 register_check();
	}
function goback(){
		location.href= root + "/admin/account/main.tree";
	}

function hypen(str) {
	var x = str.replace(/[^0-9\-]/g, "");
	var tmp = "";
	if (x.length > 3 && x.length <= 7) {
		tmp += x.substr(0, 3);
		tmp += '-';
		if(x.length>4){
			tmp += x.substr(4,x.length);
		} else {
			tmp += x.substr(3);
		}
		return tmp;
	} else if (x.length > 8) {
		tmp += x.substr(0, 8);
		tmp += '-';
		if(x.length>9){
			tmp += x.substr(9,x.length);
		} else {			
			tmp += x.substr(8);
		}
		return tmp;
	}
	return x;
}

//콤마풀기
function unhypen(str) {
	var x = str;
	var tmp = "";
	if (x.length < 5) {
		x = x.replace(/-/g, "");
		return x;
	} else if (x.length > 5) {
		x = x.replace(/-$|--$/, "");
		return x;
	}
	return x;
}
 
//값 입력시 콤마찍기

$(document).ready(function (){
	$('#emp_nm').keyup(function(){
		this.value = this.value.replace(/[0-9]|[A-Za-z]|[`~!@#$%^&*|\\\'\";:\/?()-_+={}]/g, "");
	})
	$('#tel').keyup(function (){
		this.value = hypen(unhypen(this.value));
	});
})

function search_zip(){
	new daum.Postcode({
	    oncomplete: function(data) {
	    	document.getElementById("emp_zip").value = data.postcode;
	    	document.getElementById("emp_addr").value = data.address;
	    }
	}).open();
}

function register_check(){
	var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	var phoneReg = /^\d{2}[-]\d{4}[./-]\d{4}$/
	var email = document.getElementById('email').value;
	if(document.getElementById("dpt_sq").value == ''){
		alert("부서명을 입력하세요");
	} else if(document.getElementById("emp_nm").value == ''){
		alert("이름을 입력하세요");
	} else if(email == '' || !re.test(email)){
		alert("올바른 이메일 주소를 입력하세요");
	} else if($('#phone').val() != '' && !phoneReg.test($('#phone').val())){
		alert("올바른 내선번호를 입력하세요. ex) 02-1234-5678");
	} else {
		$('#emp_tel1').val($('#tel').val().split("-")[0]);
		$('#emp_tel2').val($('#tel').val().split("-")[1]);
		$('#emp_tel3').val($('#tel').val().split("-")[2]);
		if ($('#phone').val() != '') {
			$('#emp_bs_tel1').val($('#phone').val().split("-")[0]);
			$('#emp_bs_tel2').val($('#phone').val().split("-")[1]);
			$('#emp_bs_tel3').val($('#phone').val().split("-")[2]);
		}
		$('#emp_ml_id').val($('#email').val().split("@")[0]);
		$('#emp_ml_addr').val($('#email').val().split("@")[1]);
		document.registerMemberForm.action = root + "/admin/account/register.tree";
		document.registerMemberForm.submit();
	}	
}

$(document).ready(function() {
	$(function() {
		$("#emp_bdate").datepicker({
			changeMonth: true,
			changeYear: true,
			dateFormat: "yymmdd",
			prevText: '이전 달',
			nextText: '다음 달',
			monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			dayNames: ['일', '월', '화', '수', '목', '금', '토'],
			dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
			dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
			showMonthAfterYear: true,
		});
	});
});