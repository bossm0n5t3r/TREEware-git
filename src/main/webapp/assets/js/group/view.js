function add_click(){
	$(document).ready(function(){
		var parent = $($("div.title").toArray().sort()[0]).text(),
			nodelength = $("div#chart-container > div > table > tr.nodes").children('td').toArray().sort().length,
			tmp;
		console.log($("div#chart-container > div > table > tr.nodes").children('td').toArray().sort()[0]);
		console.log($($("div#chart-container > div > table > tr.nodes").children('td').toArray().sort()[0]).find("div.title"));
//		for(var i=0;i<nodelength;i++){
//			$("div#chart-container > div > table > tr.nodes").children('td').toArray().sort()[i].length
//		}
//		console.log($("div#chart-container > div > table > tr.nodes").children('td').toArray().sort().length);
	})

//        $.ajax({
//            async: true,
//            type : 'GET',
//            data : {
//            	act: 'idcheck',
//            	id: $(check).val()
//            },
//            url : "${root}/member",
//            dataType : "json",
//            contentType: "application/json; charset=UTF-8",
//            success : function(data) {
//            	console.log(data)
//                if (data != 0) {
//                    $("#id_check").text("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
//                    //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
//					$("#id_check").css("color", "red")                    
//                } else {
//                	$("#id_check").text("사용가능한 아이디입니다.");
//                    //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
//                    $("#id_check").css("color", "blue")
//                    //아이디가 중복하지 않으면  idck = 1 
//                    idck = 1;
//                }
//            },
//            error : function(error) {
//                alert("error : " + error);
//            }
//        });
}



$(function() {
	  	var datascource = {
	      'name': 'Ball game',
	      'children': [
	        { 'name': 'Football' },
	        { 'name': 'Basketball' },
	        { 'name': 'Volleyball' }
	      ]
	    };

	    var getId = function() {
	      return (new Date().getTime()) * 1000 + Math.floor(Math.random() * 1001);
	    };

	    var oc = $('#chart-container').orgchart({
	      'data' : datascource,
	      'chartClass': 'edit-state',
	      'exportButton': true,
	      'exportFilename': 'SportsChart',
	      'parentNodeSymbol': 'fa-th-large',
	      'createNode': function($node, data) {
	        $node[0].id = getId();
	      }
	    });

	    oc.$chartContainer.on('click', '.node', function() {
	      var $this = $(this);
	      $('#selected-node').val($this.find('.title').text()).data('node', $this);
	    });

	    oc.$chartContainer.on('click', '.orgchart', function(event) {
	      if (!$(event.target).closest('.node').length) {
	        $('#selected-node').val('');
	      }
	    });

	    $('input[name="chart-state"]').on('click', function() {
	      $('.orgchart').toggleClass('edit-state', this.value !== 'view');
	      $('#edit-panel').toggleClass('edit-state', this.value === 'view');
	      if ($(this).val() === 'edit') {
	        $('.orgchart').find('tr').removeClass('hidden')
	          .find('td').removeClass('hidden')
	          .find('.node').removeClass('slide-up slide-down slide-right slide-left');
	      } else {
	        $('#btn-reset').trigger('click');
	      }
	    });

	    $('input[name="node-type"]').on('click', function() {
	      var $this = $(this);
	      if ($this.val() === 'parent') {
	        $('#edit-panel').addClass('edit-parent-node');
	        $('#new-nodelist').children(':gt(0)').remove();
	      } else {
	        $('#edit-panel').removeClass('edit-parent-node');
	      }
	    });

	    $('#btn-add-input').on('click', function() {
	      $('#new-nodelist').append('<li><input type="text" class="new-node"></li>');
	    });

	    $('#btn-remove-input').on('click', function() {
	      var inputs = $('#new-nodelist').children('li');
	      if (inputs.length > 1) {
	        inputs.last().remove();
	      }
	    });

	    $('#btn-add-nodes').on('click', function() {
	      var $chartContainer = $('#chart-container');
	      var nodeVals = [];
	      $('#new-nodelist').find('.new-node').each(function(index, item) {
	        var validVal = item.value.trim();
	        if (validVal.length) {
	          nodeVals.push(validVal);
	        }
	      });
	      var $node = $('#selected-node').data('node');
	      if (!nodeVals.length) {
	        alert('Please input value for new node');
	        return;
	      }
	      var nodeType = $('input[name="node-type"]:checked');
	      if (!nodeType.length) {
	        alert('Please select a node type');
	        return;
	      }
	      if (nodeType.val() !== 'parent' && !$('.orgchart').length) {
	        alert('Please creat the root node firstly when you want to build up the orgchart from the scratch');
	        return;
	      }
	      if (nodeType.val() !== 'parent' && !$node) {
	        alert('Please select one node in orgchart');
	        return;
	      }
	      if (nodeType.val() === 'parent') {
	        if (!$chartContainer.children('.orgchart').length) {// if the original chart has been deleted
	          oc = $chartContainer.orgchart({
	            'data' : { 'name': nodeVals[0] },
	            'exportButton': true,
	            'exportFilename': 'SportsChart',
	            'parentNodeSymbol': 'fa-th-large',
	            'createNode': function($node, data) {
	              $node[0].id = getId();
	            }
	          });
	          oc.$chart.addClass('view-state');
	        } else {
	          oc.addParent($chartContainer.find('.node:first'), { 'name': nodeVals[0], 'id': getId() });
	        }
	      } else if (nodeType.val() === 'siblings') {
	        if ($node[0].id === oc.$chart.find('.node:first')[0].id) {
	          alert('You are not allowed to directly add sibling nodes to root node');
	          return;
	        }
	        oc.addSiblings($node, nodeVals.map(function (item) {
	            return { 'name': item, 'relationship': '110', 'id': getId() };
	          }));
	      } else {
	        var hasChild = $node.parent().attr('colspan') > 0 ? true : false;
	        if (!hasChild) {
	          var rel = nodeVals.length > 1 ? '110' : '100';
	          oc.addChildren($node, nodeVals.map(function (item) {
	              return { 'name': item, 'relationship': rel, 'id': getId() };
	            }));
	        } else {
	          oc.addSiblings($node.closest('tr').siblings('.nodes').find('.node:first'), nodeVals.map(function (item) {
	              return { 'name': item, 'relationship': '110', 'id': getId() };
	            }));
	        }
	      }
	    });

	    $('#btn-delete-nodes').on('click', function() {
	      var $node = $('#selected-node').data('node');
	      if (!$node) {
	        alert('Please select one node in orgchart');
	        return;
	      } else if ($node[0] === $('.orgchart').find('.node:first')[0]) {
	        if (!window.confirm('Are you sure you want to delete the whole chart?')) {
	          return;
	        }
	      }
	      oc.removeNodes($node);
	      $('#selected-node').val('').data('node', null);
	    });

	    $('#btn-reset').on('click', function() {
	      $('.orgchart').find('.focused').removeClass('focused');
	      $('#selected-node').val('');
	      $('#new-nodelist').find('input:first').val('').parent().siblings().remove();
	      $('#node-type-panel').find('input').prop('checked', false);
	    });
	 });