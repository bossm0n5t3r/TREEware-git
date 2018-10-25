<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="card" align="center">
	<div class="card-header">
		<div class="card-title" align="left"><span id="month"></span>월 부서별 평균 퇴근시간</div>
	</div>
	<br>
	<canvas id="workingHoursChart"></canvas>
</div>
		<!-- JavaScript Includes -->
<script>
var list = ${dptAvgOffWork};
var valueX = new Array();
var valueY = new Array();

for (var i = 0; i < list.length; i++) {
	valueX.push(list[i].dpt_nm);
	valueY.push(list[i].time);
}

var ctx = document.getElementById("workingHoursChart").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
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
                	min : 180000,
                    stepSize: 500
                }
            }]
        }
    }
});

var date = new Date();
$(document).ready(function(){
	$("#month").text(date.getMonth() + 1);
})
</script>
