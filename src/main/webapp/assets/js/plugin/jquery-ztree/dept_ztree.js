
	var zTree;
	var demoIframe;

	var setting = {
		view: {
			dblClickExpand: false,
			showLine: true,
			selectedMulti: false
		},
		data: {
			simpleData: {
				enable:true,
				idKey: "id",
				pIdKey: "pId",
				rootPId: ""
			}
		},
		callback: {
			beforeClick: function(treeId, treeNode) {
				var zTree = $.fn.zTree.getZTreeObj("tree");
				if (treeNode.isParent) {
					zTree.expandNode(treeNode);
					return false;
				} else {
					demoIframe.attr("src",treeNode.file + ".html");
					return true;
				}
			}
		}
	};

	var zNodes =[
		{ name:"트리웨어", open:true,
				children: [
					{ name:"관리부", open:true,
						children: [
							{ name:"사장 김소현"},
							{ name:"사장 유준"},
							{ name:"사장 한영선"},
							{ name:"차장 김재현"},
							{ name:"차장 유태홍"},
							{ name:"차장 손지인"},
							{ name:"과장 김보민"},
							{ name:"대리 안효일"},
							{ name:"사원 강혜인"},
							{ name:"사원 이형민"},
							{ name:"사원 김지훈"},
							{ name:"사원 손영재"}
						]},
					{ name:"인사과",
						children: [
							{ name:"사장 손주희"},
							{ name:"부장 이수영"},
							{ name:"부장 고운선"},
							{ name:"차장 최홍석"},
							{ name:"과장 한상현"},
							{ name:"과장 강호성"},
							{ name:"사원 김고은"},
							{ name:"사원 정하영"},
							{ name:"사원 서계범"}
						]},
					{ name:"무역부",
						children: [
							{ name:"부장 박정이"},
							{ name:"부장 정홍균"},
							{ name:"부장 이승하"},
							{ name:"부장 송현태"},
							{ name:"차장 임승은"},
							{ name:"차장 강수민"},
							{ name:"차장 오승경"},
							{ name:"차장 백창렬"},
							{ name:"차장 강수민"},
							{ name:"과장 유하늘"},
							{ name:"과장 강혜인"},
							{ name:"대리 서도현"},
							{ name:"사원 황규준"}
						]},
					{ name:"영업부",
						children: [
							{ name:"사장 고민주"},
							{ name:"사장 김서영"},
							{ name:"사장 신하은"},
							{ name:"부장 이다인"},
							{ name:"부장 양지현"},
							{ name:"차장 김다영"},
							{ name:"차장 김소이"},
							{ name:"차장 이시형"},
							{ name:"차장 고정열"},
							{ name:"과장 김태리"},
							{ name:"과장 강성욱"},
							{ name:"대리 임자연"}
						]},
					{ name:"판매부",
						children: [
							{ name:"부장 김성진"},
							{ name:"부장 박윤민"},
							{ name:"부장 황수빈"},
							{ name:"과장 강성민"},
							{ name:"과장 최슬비"},
							{ name:"대리 신영준"},
							{ name:"사원 고동엽"}
						]}
				]}

	];

	$(document).ready(function(){
		var t = $("#tree");
		t = $.fn.zTree.init(t, setting, zNodes);
		demoIframe = $("#testIframe");
		demoIframe.bind("load", loadReady);
		var zTree = $.fn.zTree.getZTreeObj("tree");
		zTree.selectNode(zTree.getNodeByParam("id", 101));
	
	});

	function loadReady() {
		var bodyH = demoIframe.contents().find("body").get(0).scrollHeight,
		htmlH = demoIframe.contents().find("html").get(0).scrollHeight,
		maxH = Math.max(bodyH, htmlH), minH = Math.min(bodyH, htmlH),
		h = demoIframe.height() >= maxH ? minH:maxH ;
		if (h < 530) h = 530;
		demoIframe.height(h);
	}
  