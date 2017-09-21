function update(data){
	alert("你妹的！GG");
	var tr = $(data).parent().parent();
	var alltd = [];
	tr.find('td').each(function(i, td) {
		if ($(td).find('button').length == 0) {
			alltd.push($(td).html());
		}
	});
	Double stduCj = $(data).parent().prev().find("input").val();
	var kid = alltd[3];
	alert("kid"+kid);
	var sid = alltd[0];
	alert("sid"+sid);
	$.ajax({
		url : "score_save.action?kid=" + kid + "&sid=" + sid
				+ "&stduCj=" + stduCj,
		type : "post",
		dataType : "json",
		success : function(data) {
			if (data.success) {
				alert(data.msg);
			} else {
				alert(data.msg);
			};
		}
	});
};

/*$(function() {
	$("#btnallsave").click(
			function() {
				var tableId = document.getElementById("sample-table-1");
				for ( var i = 1; i < tableId.rows.length; i++) {
					var ccj = document.getElementById(i - 1).value;
					var kid = tableId.rows[i].cells[1].innerHTML;
					var sid = tableId.rows[i].cells[3].innerHTML;
					$
							.ajax({
								url : "score_save.action?kid=" + kid
										+ "&sid=" + sid + "&ccj="
										+ ccj,
								type : "post",
								dataType : "json",
								success : function(data) {
								}
							});
				}
				alert("保存成功");
			});
});*/