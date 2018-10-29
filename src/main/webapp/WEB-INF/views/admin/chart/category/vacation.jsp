<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="card" align="center">
	<div class="card-header">
		<div class="card-title" align="left">월별 휴가인원 통계</div>
	</div>
	<br>
	<canvas id="vacationChart"></canvas>
</div>
		<!-- JavaScript Includes -->
<script>
$(document).ready(function(){
	$.ajax({
		type : "POST"
		,dataType : "JSON"
		,url : "${root}/admin/chart/vacation.tree"
		,success : function(data) {
			vacation(data);
		}
	})
})

function vacation(data) {
	var list = data.vacation;
	var valueX = new Array(list.JAN.month
						  ,list.FEB.month
						  ,list.MAR.month
						  ,list.APR.month
						  ,list.MAY.month
						  ,list.JUN.month
						  ,list.JUL.month
						  ,list.AUG.month
						  ,list.SEP.month
						  ,list.OCT.month
						  ,list.NOV.month
						  ,list.DEC.month);
	var valueY = new Array(list.JAN.count
			 			  ,list.FEB.count
			  			  ,list.MAR.count
						  ,list.APR.count
						  ,list.MAY.count
						  ,list.JUN.count
						  ,list.JUL.count
						  ,list.AUG.count
						  ,list.SEP.count
						  ,list.OCT.count
						  ,list.NOV.count
						  ,list.DEC.count);

	var ctx = document.getElementById("vacationChart").getContext('2d');
	var myChart = new Chart(ctx, {
	    type: 'line',
	    data: {
	        labels: valueX,
	        datasets: [{
	            data: valueY,
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 206, 86, 0.2)',
	                'rgba(75, 192, 192, 0.2)',
	                'rgba(153, 102, 255, 0.2)',
	                'rgba(255, 159, 64, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255,99,132,1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255, 206, 86, 1)',
	                'rgba(75, 192, 192, 1)',
	                'rgba(153, 102, 255, 1)',
	                'rgba(255, 159, 64, 1)'
	            ],
	            borderWidth: 1
	        }]
	    },
	    options: {
	    	legend:{
	    		display : false,
	    	},
	        scales: {
	            yAxes: [{
	                ticks: {
	                    beginAtZero:true
	                }
	            }]
	        }
	    }
	});
}
</script>
