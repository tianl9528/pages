$(document).ready(function(){
	
	$("#add").click(function(){
		$("#intere-dialog").dialog("open");
	});

	var aIntere=new Array();
	var oIntere=$("#intere");
	$(".tab-item").each(function(){
		
		$(this).toggle(function(){
			$(this).css("background-color","#bdebb0");
			aIntere.push($(this).find("span").text());
			oIntere.val("你感兴趣的："+aIntere);
			//alert(aIntere);
		}, function(){
			$(this).css("background-color","#f0ffea");
			aIntere.splice($.inArray($(this).find("span").text(),aIntere),1);
			oIntere.val("你感兴趣的："+aIntere);
			//alert(aIntere);
		});		
	});	
	//弹出兴趣设置对话框
	$("#intere-dialog").dialog({
		autoOpen:false,
		height:350,
		width:600,
		modal:true,
		buttons:{
			"添加":function(){
				var oUintere=$("#uintere");
				oUintere.val(aIntere);
				oUintere.show();
				$("#add").hide();
				$(this).dialog("close");
			},
			"取消":function(){
				$(this).dialog("close");
			}
		},
		close:function(){
		}
	});
});