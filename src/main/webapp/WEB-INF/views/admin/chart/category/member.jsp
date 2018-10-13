<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="card" align="center">
	<div class="card-header">
		<div class="card-title" align="left">보유인력 현황</div>
	</div>
	<br>
	<canvas id="memberChart"></canvas>
</div>
		<!-- JavaScript Includes -->
<script>
var ctx = document.getElementById("memberChart").getContext('2d');
var valueX = new Array("초급기술자", "중급기술자", "고급기술자", "특급기술자", "기술사");
var valueY = new Array(12, 19, 3, 5, 2);
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
    	tooltips: {
    		  callbacks: {
    		    label: function(tooltipItem, data) {
    		      //get the concerned dataset
    		      var dataset = data.datasets[tooltipItem.datasetIndex];
    		      //calculate the total of this data set
    		      var total = dataset.data.reduce(function(previousValue, currentValue, currentIndex, array) {
    		        return previousValue + currentValue;
    		      });
    		      //get the current items value
    		      var currentValue = dataset.data[tooltipItem.index];
    		      //calculate the precentage based on the total and current item, also this does a rough rounding to give a whole number
    		      var percentage = Math.floor(((currentValue/total) * 100)+0.5);

    		      return percentage + "%";
    		    }
    		  }
    		},
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
