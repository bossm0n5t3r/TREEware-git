function submit(){
//		 $("#successMsg").modal();
		 register_check();
	}
function goback(){
		location.href="${root}/admin/account/main.tree";
	}
	
$(document).ready(function (){
		var dt = new Date();
		var year = dt.getFullYear();
		var empsq;
		empsq = "TREE"+year;
		document.getElementById("emp_sq").value = empsq;
		document.getElementById("emp_id").value = empsq;
		document.getElementById("emp_pw").value = "1234";
		
		var upload = document.getElementById('photo'),
	    	photoimg = document.getElementById('photoimg');

		photoimg.src = "/treeware/assets/img/photo.jpg";
	 
		upload.onchange = function (e) {
		  e.preventDefault();
		  var file = upload.files[0],
		      reader = new FileReader();
		  reader.onload = function (event) {  
			var img = new Image(); 
		    img.src = event.target.result;
		    if (img.width > 560) {
		      img.width = 560;
		    }
		    photoimg.src = img.src;
		  };
		  reader.readAsDataURL(file);
	  return false;
	};
});

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
		console.log(tmp);
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
	$('#phone').keyup(function(){
		this.value = this.value.replace(/[^0-9]/g, "");
	})
	$('#tel').keyup(function (){
			this.value = hypen(unhypen(this.value));
	});
})

function search_zip(){
	new daum.Postcode({
	    oncomplete: function(data) {
	    	console.log(data)
	    	document.getElementById("emp_zip").value = data.postcode;
	    	document.getElementById("emp_addr").value = data.address;
	    }
	}).open();
}

function register_check(){
	var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	var email = document.getElementById('email').value;
	if(document.getElementById("dpt_sq").value == ''){
		alert("부서명을 입력하세요");
	} else if(document.getElementById("emp_nm").value == ''){
		alert("이름을 입력하세요")
	} else if(email == '' || !re.test(email)){
		alert("올바른 이메일 주소를 입력하세요")
	} else {
		$('#emp_tel1').val($('#tel').val().split("-")[0]);
		$('#emp_tel2').val($('#tel').val().split("-")[1]);
		$('#emp_tel3').val($('#tel').val().split("-")[2]);
		 document.registerMemberForm.action = "register.tree";
		 document.registerMemberForm.submit();
	}	
}

$(document).ready(function() {
	  $(function() {
		    $("#birth").datepicker({
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