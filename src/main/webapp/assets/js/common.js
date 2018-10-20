function change_dpt(data){
	if(data ===0){return '퇴사';
	} else if(data ===1){
		return '관리부';
	} else if(data ===2){
		return '인사과';
	} else if(data ===3){
		return '무역부';
	} else if(data ===4){
		return '영업부';
	} else if(data ===5){
		return '판매부';
	}
}
function change_rnk(data){
	if(data ===0){
		return '퇴사';
	} else if(data ===1){
		return '사원';
	} else if(data ===2){
		return '대리';
	} else if(data ===3){
		return '과장';
	} else if(data ===4){
		return '차장';
	} else if(data ===5){
		return '부장';
	} else if(data ===6){
		return '사장';
	}
}