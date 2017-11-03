$(document).ready(function(){
	$("#bt1").click(function(){
		$("#show1").hide();
		$("#show2").show();
		
		$("#techsuppform #ft option").remove();
		$("#techsuppform #st option").remove();
		
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
		
	});
	
	$("#bt2").click(function(){
		$("#show2").hide();
		$("#show1").show();
	});
});