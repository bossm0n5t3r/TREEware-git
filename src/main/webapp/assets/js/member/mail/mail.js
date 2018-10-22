function movePage(bcode, pg, key, word, path){
	$("#ml_grp_sq").val(ml_grp_sq);
	$("#ml_sq").val(ml_sq);
	$("#pg").val(pg);
	$("#key").val(key);
	$("#word").val(word);
	$("#commonform").attr("method","GET").attr("action",  "${root}/member/mail/"+ path + ".tree").submit();
	
}
