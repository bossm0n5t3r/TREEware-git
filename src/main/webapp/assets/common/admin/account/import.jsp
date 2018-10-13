<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${root}/assets/css/zTreeStyle.css" type="text/css">
<style>
#listtable th, #listtable td{
    padding: 8px;
    text-align: left;
    border-top: 1px solid #eee;
}
</style>
<script type="text/javascript" src="${root}/assets/js/plugin/jquery-ztree/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" >
  
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
		{ name:"대표이사",
			children: [
				{ name:"경영자문위원단",
					children: [
						{ name:"leaf node 111"},
						{ name:"leaf node 112"},
						{ name:"leaf node 113"},
						{ name:"leaf node 114"}
					]},
				{ name:"이사회",
					children: [
						{ name:"leaf node 121"},
						{ name:"leaf node 122"},
						{ name:"leaf node 123"},
						{ name:"leaf node 124"}
					]},
				{ name:"경영자문위원단", isParent:true}
			]},
		{ name:"영업본부",
			children: [
				{ name:"영업1팀",
					children: [
						{ name:"부장 김고은"},
						{ name:"부장 김고은"},
						{ name:"부장 김고은"},
						{ name:"부장 김고은"}
					]},
				{ name:"영업2팀",
					children: [
						{ name:"부장 박윤민"},
						{ name:"부장 박윤민"},
						{ name:"부장 박윤민"},
						{ name:"부장 박윤민"}
					]},
				{ name:"외식사업부",
					children: [
						{ name:"부장 강혜인"},
						{ name:"부장 강혜인"},
						{ name:"부장 강혜인"},
						{ name:"부장 강혜인"}
					]}
			]},
		{ name:"연구개발본부", open:true,
				children: [
					{ name:"시스템개발팀", open:true,
						children: [
							{ name:"부장 김고은"},
							{ name:"대리 김고은"},
							{ name:"사원 김고은"},
							{ name:"인턴 김고은"}
						]},
					{ name:"개발기획팀", open:true,
						children: [
							{ name:"부장 김지훈"},
							{ name:"대리 김지훈"},
							{ name:"사원 김지훈"},
							{ name:"사원 김지훈"}
						]},
					{ name:"Task Force팀", open:true,
						children: [
							{ name:"부장 강수민"},
							{ name:"대리 강수민"},
							{ name:"사원 강수민"},
							{ name:"사원 강수민"}
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
  
</script>