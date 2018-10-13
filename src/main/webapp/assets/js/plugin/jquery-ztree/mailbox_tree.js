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
		
		{id:999, pId:0, name:"전체보기", file:"list"},
		
		{id:1, pId:0, name:"즐겨찾기", open:true},
		{id:101, pId:1, name:"출장확인서", file:"iframe/forms/goomae"},
		{id:102, pId:1, name:"경력증명서", file:"iframe/forms/goomae"},
		{id:103, pId:1, name:"결재파일3", file:"iframe/forms/goomae"},
		{id:104, pId:1, name:"결재파일4", file:"iframe/forms/goomae"},
		{id:105, pId:1, name:"결재파일5", file:"iframe/forms/chooljang1"},

		{id:2, pId:0, name:"점심뭐먹지", open:false},
		{id:201, pId:2, name:"연차신청1", file:"excheck/checkbox"},
		{id:202, pId:2, name:"연차신청2", file:"excheck/checkbox"},
		{id:203, pId:2, name:"연차신청3", file:"excheck/checkbox"},
		{id:204, pId:2, name:"연차신청4", file:"excheck/checkbox"},

		{id:3, pId:0, name:"따끈한국물", open:false},
		{id:301, pId:3, name:"설렁탕", file:"exedit/drag"},
		{id:301, pId:3, name:"순대국", file:"exedit/drag"},
		{id:301, pId:3, name:"쌀국수", file:"exedit/drag"},
		{id:301, pId:3, name:"멸치국수", file:"exedit/drag"},

		{id:4, pId:0, name:"내일은토요일", open:false},
		{id:401, pId:4, name:"신난다", file:"bigdata/common"},
		{id:402, pId:4, name:"즐거운", file:"bigdata/diy_async"},
		{id:403, pId:4, name:"토요일", file:"bigdata/page"},

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