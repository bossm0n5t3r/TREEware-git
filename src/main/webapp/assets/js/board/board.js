var control = "";

function moveBoard(bcode, pg, key, word, seq, path) {
	$("#bcode").val(bcode);
	$("#pg").val(pg);
	$("#key").val(key);
	$("#word").val(word);
	$("#seq").val(seq);
	$("#commonform").attr("method", "GET").attr("action", control + path + ".tree").submit();
}