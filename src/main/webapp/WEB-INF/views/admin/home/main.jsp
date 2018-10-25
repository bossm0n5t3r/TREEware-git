<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/assets/common/import.jsp"%>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/assets/common/admin/home/top.jsp"%>
		<%@ include file="/assets/common/admin/home/side.jsp"%>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-3">
							<div class="card card-stats card-warning">
								<div class="card-body ">
									<div class="row">
										<div class="col-5">
											<div class="icon-big text-center">
												<i class="la la-users"></i>
											</div>
										</div>
										<div class="col-7 d-flex align-items-center">
											<div class="numbers">
												<p class="card-category">입사한지</p>
												<h4 class="card-title" id="howlong"></h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="card card-stats card-success">
								<div class="card-body ">
									<div class="row">
										<div class="col-5">
											<div class="icon-big text-center">
												<i class="la la-bar-chart"></i>
											</div>
										</div>
										<div class="col-7 d-flex align-items-center">
											<div class="numbers">
												<p class="card-category">남은 근무시간</p>
												<h4 class="card-title">
													<span id="timer"></span>
												</h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="card card-stats card-danger">
								<div class="card-body">
									<div class="row">
										<div class="col-5">
											<div class="icon-big text-center">
												<i class="la la-newspaper-o"></i>
											</div>
										</div>
										<div class="col-7 d-flex align-items-center">
											<div class="numbers">
												<p class="card-category">
													<span class="month"></span>월 결재문건
												</p>
												<h4 class="card-title">40건</h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="card card-stats card-primary">
								<div class="card-body ">
									<div class="row">
										<div class="col-5">
											<div class="icon-big text-center">
												<i class="la la-check-circle"></i>
											</div>
										</div>
										<div class="col-7 d-flex align-items-center">
											<div class="numbers">
												<p class="card-category">
													<span class="month"></span>월 일정
												</p>
												<h4 class="card-title" style="font-size: 100%" id="monthlySchedule"></h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<!-- 							<div class="col-md-3"> -->
						<!-- 								<div class="card"> -->
						<!-- 									<div class="card-header"> -->
						<!-- 										<h4 class="card-title">2018년 10월 01일</h4> -->
						<!-- 										<p class="card-category">출근: 08:45</p> -->
						<!-- 										<p class="card-category">외근: 13:50</p> -->
						<!-- 										<p class="card-category">복귀: 16:50</p> -->
						<!-- 									</div> -->
						<!-- 									<div class="card-body"> -->
						<!-- 										<div id="task-complete" class="chart-circle mt-4 mb-3"></div> -->
						<!-- 									</div> -->
						<!-- 									<div class="card-footer"> -->
						<!-- 										<div class="legend" style="padding:5px"><button type="button" class="btn btn-outline-primary">출근하기</button></div> -->
						<!-- 										<div class="legend" style="padding:5px"><button type="button" class="btn btn-outline-primary">외근하기</button></div> -->
						<!-- 										<div class="legend" style="padding:5px"><button type="button" class="btn btn-outline-primary">복귀하기</button></div> -->
						<!-- 										<div class="legend" style="padding:5px"><button type="button" class="btn btn-outline-primary">퇴근하기</button></div> -->
						<!-- 										<div class="legend"><i class="la la-circle text-primary"></i>출근하기</div> -->
						<!-- 									</div> -->
						<!-- 								</div> -->
						<!-- 							</div> -->
						<div class="col-md-12">
							<div class="card card-tasks">
								<div class="card-header ">
									<h4 class="card-title">대기중인 결재서류</h4>
									<p class="card-category"></p>
								</div>
								<div class="card-body ">
									<div class="table-full-width">
										<table class="table">
											<thead>
												<tr>
													<th>
														<div class="form-check">
															<label class="form-check-label"> <input
																class="form-check-input  select-all-checkbox"
																type="checkbox" data-select="checkbox"
																data-target=".task-select"> <span
																class="form-check-sign"></span>
															</label>
														</div>
													</th>
													<th>서류제목</th>
													<th>제출인</th>
													<th>처리상황</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<div class="form-check">
															<label class="form-check-label"> <input
																class="form-check-input task-select" type="checkbox">
																<span class="form-check-sign"></span>
															</label>
														</div>
													</td>
													<td>9월 회식비용 영수증</td>
													<td>머신러닝팀 김지훈 이사</td>
													<td class="td-actions text-right">
														<div class="form-button-action">
															<button type="button" data-toggle="tooltip"
																title="Edit Task"
																class="btn btn-link <btn-simple-primary">
																<i class="la la-edit"></i>
															</button>
															<button type="button" data-toggle="tooltip"
																title="Remove" class="btn btn-link btn-simple-danger">
																<i class="la la-times"></i>
															</button>
														</div>
													</td>
												</tr>
												<tr>
													<td>
														<div class="form-check">
															<label class="form-check-label"> <input
																class="form-check-input task-select" type="checkbox">
																<span class="form-check-sign"></span>
															</label>
														</div>
													</td>
													<td>사내체육대회 장소입찰 결재</td>
													<td>경영지원팀 강수민 이사</td>
													<td class="td-actions text-right">
														<div class="form-button-action">
															<button type="button" data-toggle="tooltip"
																title="Edit Task"
																class="btn btn-link <btn-simple-primary">
																<i class="la la-edit"></i>
															</button>
															<button type="button" data-toggle="tooltip"
																title="Remove" class="btn btn-link btn-simple-danger">
																<i class="la la-times"></i>
															</button>
														</div>
													</td>
												</tr>
												<tr>
													<td>
														<div class="form-check">
															<label class="form-check-label"> <input
																class="form-check-input task-select" type="checkbox">
																<span class="form-check-sign"></span>
															</label>
														</div>
													</td>
													<td>후이즈 도메인 입찰서류</td>
													<td>서버개발팀 박윤민 이사</td>
													<td class="td-actions text-right">
														<div class="form-button-action">
															<button type="button" data-toggle="tooltip"
																title="Edit Task"
																class="btn btn-link <btn-simple-primary">
																<i class="la la-edit"></i>
															</button>
															<button type="button" data-toggle="tooltip"
																title="Remove" class="btn btn-link btn-simple-danger">
																<i class="la la-times"></i>
															</button>
														</div>
													</td>
												</tr>
												<tr>
													<td>
														<div class="form-check">
															<label class="form-check-label"> <input
																class="form-check-input task-select" type="checkbox">
																<span class="form-check-sign"></span>
															</label>
														</div>
													</td>
													<td>사원 개인 노트북지원 예상견적서</td>
													<td>프론트엔드팀 강혜인 이사</td>
													<td class="td-actions text-right">
														<div class="form-button-action">
															<button type="button" data-toggle="tooltip"
																title="Edit Task"
																class="btn btn-link <btn-simple-primary">
																<i class="la la-edit"></i>
															</button>
															<button type="button" data-toggle="tooltip"
																title="Remove" class="btn btn-link btn-simple-danger">
																<i class="la la-times"></i>
															</button>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="card-footer ">
									<div class="stats">
										<i class="now-ui-icons loader_refresh spin"></i> Updated 3
										minutes ago
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row row-card-no-pd">
						<div class="col-md-4">
							<div class="card">
								<div class="card-body">
									<p class="fw-bold mt-1">프로젝트 진행상황</p>
									<h4>
										<b>사내 그룹웨어 개발</b>
									</h4>
									<a href="#"
										class="btn btn-primary btn-full text-left mt-3 mb-3"><i
										class="la la-plus"></i> 자세히</a>
								</div>
								<div class="card-footer">
									<ul class="nav">
										<li class="nav-item"><a class="btn btn-default btn-link"
											href="#"><i class="la la-history"></i> History</a></li>
										<li class="nav-item ml-auto"><a
											class="btn btn-default btn-link" href="#"><i
												class="la la-refresh"></i> Refresh</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-5">
							<div class="card">
								<div class="card-body">
									<div class="progress-card">
										<div class="d-flex justify-content-between mb-1">
											<span class="text-muted">기획팀</span> <span
												class="text-muted fw-bold"> 90%</span>
										</div>
										<div class="progress mb-2" style="height: 7px;">
											<div class="progress-bar bg-success" role="progressbar"
												style="width: 90%" aria-valuenow="78" aria-valuemin="0"
												aria-valuemax="100" data-toggle="tooltip"
												data-placement="top" title="78%"></div>
										</div>
									</div>
									<div class="progress-card">
										<div class="d-flex justify-content-between mb-1">
											<span class="text-muted">디자인팀</span> <span
												class="text-muted fw-bold"> 80%</span>
										</div>
										<div class="progress mb-2" style="height: 7px;">
											<div class="progress-bar bg-info" role="progressbar"
												style="width: 80%" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" data-toggle="tooltip"
												data-placement="top" title="65%"></div>
										</div>
									</div>
									<div class="progress-card">
										<div class="d-flex justify-content-between mb-1">
											<span class="text-muted">프론트엔드팀</span> <span
												class="text-muted fw-bold"> 10%</span>
										</div>
										<div class="progress mb-2" style="height: 7px;">
											<div class="progress-bar bg-primary" role="progressbar"
												style="width: 10%" aria-valuenow="70" aria-valuemin="0"
												aria-valuemax="100" data-toggle="tooltip"
												data-placement="top" title="70%"></div>
										</div>
									</div>
									<div class="progress-card">
										<div class="d-flex justify-content-between mb-1">
											<span class="text-muted">백엔드팀</span> <span
												class="text-muted fw-bold"> 10%</span>
										</div>
										<div class="progress mb-2" style="height: 7px;">
											<div class="progress-bar bg-warning" role="progressbar"
												style="width: 10%" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" data-toggle="tooltip"
												data-placement="top" title="60%"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="card card-stats">
								<div class="card-body">
									<p class="fw-bold mt-1">Statistic</p>
									<div class="row">
										<div class="col-5">
											<div class="icon-big text-center icon-warning">
												<i class="la la-pie-chart text-warning"></i>
											</div>
										</div>
										<div class="col-7 d-flex align-items-center">
											<div class="numbers">
												<p class="card-category">전체진행율</p>
												<h4 class="card-title">30%</h4>
											</div>
										</div>
									</div>
									<hr />
									<div class="row">
										<div class="col-5">
											<div class="icon-big text-center">
												<i class="la la-heart-o text-primary"></i>
											</div>
										</div>
										<div class="col-7 d-flex align-items-center">
											<div class="numbers">
												<p class="card-category">참여사원수</p>
												<h4 class="card-title">6명</h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<%@ include file="/assets/common/footer.jsp"%>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		$(".month").text(mm);
		howLong();
		tid = setInterval('msg_time()', 1000);
		getMonthlySchedule();
	})

	function howLong() {
		var now = new Date();
		var emp_reg = "${userInfo.emp_reg}".split(" ")[0];
		var regDate = new Date(emp_reg);
		var diff = new Date(now - regDate);
		var days = Math.floor(diff / (1000 * 60 * 60 * 24));
		$("#howlong").text(days + "일");
	}

	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth() + 1; //January is 0!
	var yyyy = today.getFullYear();

	if (dd < 10) {
		dd = '0' + dd
	}

	if (mm < 10) {
		mm = '0' + mm
	}

	today = yyyy + '-' + mm + '-' + dd;

	var stDate = new Date().getTime();
	var edDate = new Date(today + ' 18:00:00').getTime(); // 종료날짜
	var RemainDate = edDate - stDate;

	function msg_time() {
		var hours = Math.floor((RemainDate % (1000 * 60 * 60 * 24))
				/ (1000 * 60 * 60));
		var miniutes = Math
				.floor((RemainDate % (1000 * 60 * 60)) / (1000 * 60));
		var seconds = Math.floor((RemainDate % (1000 * 60)) / 1000);

		if (miniutes < 10) {
			miniutes = '0' + miniutes;
		}
		
		if (seconds < 10) {
			seconds = '0' + seconds;
		}
		
		m = hours + ":" + miniutes + ":" + seconds; // 남은 시간 text형태로 변경
		
		if (RemainDate < 0) {
			// 시간이 종료 되었으면..
			$("#timer").text("-");
			clearInterval(tid); // 타이머 해제
		} else {
			RemainDate = RemainDate - 1000; // 남은시간 -1초
			$("#timer").text(m);			// div 영역에 보여줌
		}
	}
	
	function getMonthlySchedule() {
		$.ajax({
			type : "POST"
			,dataType : "JSON"
			,url : "${root}/member/calendar/monthlyschedule.tree"
			,data : {
				"emp_sq" : "${userInfo.emp_sq}"
			}
			,success : function(data) {
				$("#monthlySchedule").text(data.count + "건");
			}
			,error : function(){}
		})
	}
</script>
</html>