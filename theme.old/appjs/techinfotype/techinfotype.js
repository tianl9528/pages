$(document).ready(function () {
	//alert("abc");
<!-- 页面加载时获得一级分类-->
	$.ajax({
		async:false,
		type:"post",
		url:"techfirst.action",
		dataType:"json",
		success:print,
		error:function(XmlHttpRequest,textStatus, errorThrown){
			alert(XmlHttpRequest.responseText);
		}
	});	
	
	function print(data){
		var first=eval("("+data+")");
		//alert(first);
		for(var i=0;i<first.length;i++){
			$("#techsuppform #ft").append("<option value="+first[i].id+">"+first[i].teInFirTypeName+"</option>");
			$("#techdemaform #ft").append("<option value="+first[i].id+">"+first[i].teInFirTypeName+"</option>");
			$("#train #ft").append("<option value="+first[i].id+">"+first[i].teInFirTypeName+"</option>");
		}
	}
	
	<!--一级分类拉列表框发生改变时候的事件-->  
	$("#techsuppform #ft").change(function(){
		//alert("abc");
		var first_id = $("#techsuppform #ft").val();
		
		//如果选择的是'==请选择=='，不会执行去查找二级分类,且并把已有的数据清空  
		  
	        $("#techsuppform #st option").remove();  
	        $("#techsuppform #st").append("<option value=0>==请选择==</option>");  	    
	    
		//alert(first_id);
		$.ajax({
			type:"post",
			url:"techsecond.action?first_id="+first_id,
			dataType:"json",
			async:false,
			success:function(data){
				var second = eval("("+data+")");
				//alert(second);
				for(var i=0;i<second.length;i++){
					//(second[i][0]+","+second[i][1]);
					$("#techsuppform #st").append("<option value="+second[i][0]+">"+second[i][1]+"</option>");  
				}
			},
			error:function(XmlHttpRequest,textStatus, errorThrown){
				alert(XmlHttpRequest.responseText);
			}
		});
	});
	
	<!-- 技术需求 -->
	<!--一级分类拉列表框发生改变时候的事件-->  
	$("#techdemaform #ft").change(function(){
		//alert("abc");
		var first_id = $("#techdemaform #ft").val();
		
		//如果选择的是'==请选择=='，不会执行去查找二级分类,且并把已有的数据清空  
		  
	        $("#techdemaform #st option").remove();  
	        $("#techdemaform #st").append("<option value=0>==请选择==</option>");  	    
	    
		//alert(first_id);
		$.ajax({
			type:"post",
			url:"techsecond.action?first_id="+first_id,
			dataType:"json",
			async:false,
			success:function(data){
				var second = eval("("+data+")");
				//alert(second);
				for(var i=0;i<second.length;i++){
					//(second[i][0]+","+second[i][1]);
					$("#techdemaform #st").append("<option value="+second[i][0]+">"+second[i][1]+"</option>");  
				}
			},
			error:function(XmlHttpRequest,textStatus, errorThrown){
				alert(XmlHttpRequest.responseText);
			}
		});
	});
	
	function getsecond(strid)
	{
	var first_id = $(strid+" #ft").val();
		
		//如果选择的是'==请选择=='，不会执行去查找二级分类,且并把已有的数据清空  
		  
	        $(strid+" #st option").remove();  
	        $(strid+" #st").append("<option value=0>==请选择==</option>");  	    
	    
		//alert(first_id);
		$.ajax({
			type:"post",
			url:"techsecond.action?first_id="+first_id,
			dataType:"json",
			async:false,
			success:function(data){
				var second = eval("("+data+")");
				//alert(second);
				for(var i=0;i<second.length;i++){
					//(second[i][0]+","+second[i][1]);
					$(strid+" #st").append("<option value="+second[i][0]+">"+second[i][1]+"</option>");  
				}
			},
			error:function(XmlHttpRequest,textStatus, errorThrown){
				alert(XmlHttpRequest.responseText);
			}
		});
	}
	//培训技术领域
	$("#train #ft").change(function()
			{
		getsecond("#train");
			});
	
});