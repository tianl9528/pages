$(document).ready(function(){
	//点击修改行政区域
	$("#bt1").click(function(){
		$("#show1").hide();
		$("#show2").show();
		show();
	});
	
	$("#bt2").click(function(){
		$("#show2").hide();
		$("#show1").show();
	});
	
	$("#bt3").click(function(){		
		$("#show2").show();
		$("#show1").hide();
		show();
		//$("#bt2").hide();
	});		
	
	function show(){
		
		$("#show2 #province").append("<option value='0'>==请选择==</option>");
		$("#show2 #city").append("<option value='0'>==请选择==</option>");
		$("#show2 #county").append("<option value='0'>==请选择==</option>");
		$("#show2 #countyArea").append("<option value='0'>==请选择==</option>");
		
		<!-- 获得省-->
		$.ajax({
			async:false,
			type:"post",
			url:"province.action",
			dataType:"json",
			success:function(data){
				var province=eval("("+data+")");
				//alert(province);
				for(var i=0;i<province.length;i++){
					$("#show2 #province").append("<option value="+province[i].id+">"+province[i].name+"</option>");
				}
				
			},
			error:function(XmlHttpRequest,textStatus, errorThrown){
				alert(textStatus);
			}
		});
		
		<!--省级下拉列表框发生改变时候的事件-->  
		$("#show2 #province").change(function(){
			//alert("abc");
			var province_id = $("#show2 #province").val();
			
			$("#countyArea").show();  
	        $("#show2 #city option").remove();  
	        $("#show2 #city").append("<option value='0'>==请选择==</option>");
	        
	        $("#show2 #county option").remove();  
	        $("#show2 #county").append("<option value='0'>==请选择==</option>");
	        
	        $("#show2 #countyArea option").remove();  
	        $("#show2 #countyArea").append("<option value='0'>==请选择==</option>");
		    
			//alert(province_id);
			
			$.ajax({
				type:"post",
				url:"city.action?province_id="+province_id,
				dataType:"json",
				async:false,
				success:function(data){
					var city = eval("("+data+")");
					
					for(var i=0;i<city.length;i++){					
						$("#show2 #city").append("<option value="+city[i].id+">"+city[i].name+"</option>");  
					}
				},
				error:function(XmlHttpRequest,textStatus, errorThrown){
					alert(XmlHttpRequest.responseText);
				}
			});
		});
		
		<!--市级下拉列表框发生改变时候的事件-->  
		$("#show2 #city").change(function(){
			//alert("abc");
			var city_id = $("#show2 #city").val();
			
			$("#countyArea").show();  
	        $("#show2 #county option").remove();  
	        $("#show2 #county").append("<option value='0'>==请选择==</option>");
	        
	        $("#show2 #countyArea option").remove();  
	        $("#show2 #countyArea").append("<option value='0'>==请选择==</option>");
		    
			//alert(city_id);
			$.ajax({
				type:"post",
				url:"county.action?city_id="+city_id,
				dataType:"json",
				async:false,
				success:function(data){
					var county = eval("("+data+")");

					for(var i=0;i<county.length;i++){					
						$("#show2 #county").append("<option value="+county[i].id+">"+county[i].name+"</option>");  
					}
					
				},
				error:function(XmlHttpRequest,textStatus, errorThrown){
					alert(XmlHttpRequest.responseText);
				}
			});
		});
		
		<!--县级下拉列表框发生改变时候的事件-->  
		$("#show2 #county").change(function(){
			//alert("abc");
			var county_id = $("#show2 #county").val();
			
			$("#countyArea").show();  
	        $("#show2 #countyArea option").remove();  
	        $("#show2 #countyArea").append("<option value='0'>==请选择==</option>");  	    
		    
			//alert(county_id);
			$.ajax({
				type:"post",
				url:"countyArea.action?county_id="+county_id,
				dataType:"json",
				async:false,
				success:function(data){
					var countyArea = eval("("+data+")");
					//alert(countyArea.length);
					if(countyArea.length != 0){
						for(var i=0;i<countyArea.length;i++){					
							$("#show2 #countyArea").append("<option value="+countyArea[i].id+">"+countyArea[i].name+"</option>");  
						}
					}
					if(countyArea.length == 0){
						$("#countyArea").hide();
					}					
				},
				error:function(XmlHttpRequest,textStatus, errorThrown){
					alert(textStatus);
				}
			});
		});
	}
	
});