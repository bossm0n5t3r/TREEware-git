<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<head>
<%@ include file="/common/import.jsp" %>
<script>
$(document).ready(function(){
	document.getElementById("menu1").setAttribute("class", "nav-item");
	document.getElementById("menu2").setAttribute("class", "nav-item");
	document.getElementById("menu4").setAttribute("class", "nav-item");
	document.getElementById("menu5").setAttribute("class", "nav-item");
	document.getElementById("menu3").setAttribute("class", "nav-item active");
});
</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/adminmenu/home/top.jsp" %>
		<%@ include file="/adminmenu/chart/side.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<!-- 근태관리메인 -->
					<div class="row">
						<div class="col-md-12">
							<div>
								<div class="card" align="center">
									<div class="card-header">
										<div class="card-title" align="left">자율출퇴근 근무 현황</div>
									</div>
									<br>
									<canvas id="workingHoursChart"></canvas>
								</div>
							</div>
						</div>
					</div>
					<!-- 근태관리메인 끝 -->
				</div>
			</div>
		<%@ include file="/common/footer.jsp" %>
		</div>
	</div>
</body>
<script>
var ctx = document.getElementById("workingHoursChart").getContext('2d');
var valueX = new Array("영업1팀", "영업2팀", "외식사업부", "시스템개발팀", "개발기획팀", "TaskForce팀");
var valueY = new Array(12, 19, 3, 5, 2, 3);
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
                    beginAtZero:true
                }
            }]
        }
    }
});
</script>
</html>