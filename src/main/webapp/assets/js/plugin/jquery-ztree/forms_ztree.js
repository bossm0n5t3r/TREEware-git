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
					demoIframe.attr("src",treeNode.file + ".jsp");
					return true;
				}
			}
		}
	};

	var zNodes = [
		
		{id:999, pId:0, name:"전체보기", file:"/treeware/assets/common/member/sign/list"},
		{id:1, pId:0, name:"즐겨찾기", open:true},
		{id:101, pId:1, name:"시행문", file:"/treeware/assets/common/member/sign/forms/sihaeng"},
		{id:102, pId:1, name:"기안문", file:"/treeware/assets/common/member/sign/forms/kiahn"},
		{id:103, pId:1, name:"휴가원", file:"/treeware/assets/common/member/sign/forms/huega"},
		{id:104, pId:1, name:"경력증명서", file:"/treeware/assets/common/member/sign/forms/gyungryuck"},

		{id:2, pId:0, name:"출장 및 휴가", open:false},
		{id:201, pId:2, name:"출장보고서", file:"excheck/checkbox"},
		{id:202, pId:2, name:"휴일근무", file:"excheck/checkbox"},
		{id:203, pId:2, name:"복직원", file:"excheck/checkbox"},
		{id:204, pId:2, name:"휴직원", file:"excheck/checkbox"},
		{id:205, pId:2, name:"휴가원", file:"excheck/checkbox"},

		{id:3, pId:0, name:"지출결의서", open:false},
		{id:301, pId:3, name:"지출결의서", file:"exedit/drag"},
		{id:302, pId:3, name:"법인카드", file:"exedit/drag"},
		{id:303, pId:3, name:"시내교통비", file:"exedit/drag"},
		{id:304, pId:3, name:"유류대실비", file:"exedit/drag"},

		{id:4, pId:0, name:"보고", open:false},
		{id:401, pId:4, name:"계약직평가표", file:"bigdata/common"},
		{id:402, pId:4, name:"개선검토", file:"bigdata/diy_async"},
		{id:403, pId:4, name:"소비자클레임", file:"bigdata/page"},
		{id:404, pId:4, name:"불만발생", file:"bigdata/page"},

	];

	$(document).ready(function(){
		var t = $("#tree");
		t = $.fn.zTree.init(t, setting, zNodes);
		demoIframe = $("#testIframe");
		demoIframe.bind("load", loadReady);
		var zTree = $.fn.zTree.getZTreeObj("tree");
		zTree.selectNode(zTree.getNodeByParam("id", 999));
	
	});

	function loadReady() {
		var bodyH = demoIframe.contents().find("body").get(0).scrollHeight,
		htmlH = demoIframe.contents().find("html").get(0).scrollHeight,
		maxH = Math.max(bodyH, htmlH), minH = Math.min(bodyH, htmlH),
		h = demoIframe.height() >= maxH ? minH:maxH ;
		if (h < 530) h = 530;
		demoIframe.height(h);
	}