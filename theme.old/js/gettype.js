$(document).ready(function() {
	<!-- 页面加载时先获得一级分类-->
	$.ajax({
		async:false,
		type:"post",
		url:"first.action",
		dataType:"json",
		success:print,
		error:function(XmlHttpRequest,textStatus, errorThrown){
			alert(XmlHttpRequest.responseText);
		}
	});
	
	function print(data){
		var first=eval("("+data+")");
		for(var i=0;i<first.length;i++){
			$("#prosupform #first").append("<option value="+first[i].id+">"+first[i].agftypename+"</option>");
			$("#probuyform #first").append("<option value="+first[i].id+">"+first[i].agftypename+"</option>");
		}
	}
	
	
<!--一级分类拉列表框发生改变时候的事件-->  
$("#prosupform #first").change(function(){
	//alert("abc");
	var first_id = $("#prosupform #first").val();
	
	//如果选择的是'==请选择=='，不会执行去查找二级分类,且并把已有的数据清空  
	  
        $("#prosupform #second option").remove();  
        $("#prosupform #second").append("<option value=0>==请选择==</option>");  
        $("#prosupform #third option").remove();  
        $("#prosupform #third").append("<option value=0>==请选择==</option>");  
    
	//alert(first_id);
	$.ajax({
		type:"post",
		url:"second.action?first_id="+first_id,
		dataType:"json",
		async:false,
		success:function(data){
			var second = eval("("+data+")");
			//alert(second);
			for(var i=0;i<second.length;i++){
				//(second[i][0]+","+second[i][1]);
				$("#prosupform #second").append("<option value="+second[i][0]+">"+second[i][1]+"</option>");  
			}
		},
		error:function(XmlHttpRequest,textStatus, errorThrown){
			alert(XmlHttpRequest.responseText);
		}
	});
});
<!--二级分类拉列表框发生改变时候的事件  -->
$("#prosupform #second").change(function(){
	var second_id = $("#prosupform #second").val();
 
        $("#prosupform #third option").remove();  
        $("#prosupform #third").append("<option value=0>==请选择==</option>");  
   
	$.ajax({  
        type:"post",  
        url:"third.action?second_id="+second_id,  
        dataType:"json",  
        async:false,  
        success:function(data){  
            var third=eval("("+data+")");  
            for(var i=0;i<third.length;i++){  
                $("#prosupform #third").append("<option value="+third[i][0]+">"+third[i][1]+"</option>");  
            }  
        },
        error:function(XmlHttpRequest,textStatus, errorThrown){
			alert(XmlHttpRequest.responseText);
		}
    });  
});


<!--一级分类拉列表框发生改变时候的事件-->  
$("#probuyform #first").change(function(){
	//alert("abc");
	var first_id = $("#probuyform #first").val();
	
	//如果选择的是'==请选择=='，不会执行去查找二级分类,且并把已有的数据清空  
	  
        $("#probuyform #second option").remove();  
        $("#probuyform #second").append("<option value=0>==请选择==</option>");  
        $("#probuyform #third option").remove();  
        $("#probuyform #third").append("<option value=0>==请选择==</option>");  
    
	//alert(first_id);
	$.ajax({
		type:"post",
		url:"second.action?first_id="+first_id,
		dataType:"json",
		async:false,
		success:function(data){
			var second = eval("("+data+")");
			//alert(second);
			for(var i=0;i<second.length;i++){
				//(second[i][0]+","+second[i][1]);
				$("#probuyform #second").append("<option value="+second[i][0]+">"+second[i][1]+"</option>");  
			}
		},
		error:function(XmlHttpRequest,textStatus, errorThrown){
			alert(XmlHttpRequest.responseText);
		}
	});
});

<!--二级分类拉列表框发生改变时候的事件  -->
$("#probuyform #second").change(function(){
	var second_id = $("#probuyform #second").val();
 
        $("#probuyform #third option").remove();  
        $("#probuyform #third").append("<option value=0>==请选择==</option>");  
   
	$.ajax({  
        type:"post",  
        url:"third.action?second_id="+second_id,  
        dataType:"json",  
        async:false,  
        success:function(data){  
            var third=eval("("+data+")");  
            for(var i=0;i<third.length;i++){  
                $("#probuyform #third").append("<option value="+third[i][0]+">"+third[i][1]+"</option>");  
            }  
        },
        error:function(XmlHttpRequest,textStatus, errorThrown){
			alert(XmlHttpRequest.responseText);
		}
    });  
});

});