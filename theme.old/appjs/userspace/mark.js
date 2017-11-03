function mark(thisobj){
	var nid = $(thisobj).closest(".row").find(".identi").val();
	//alert(nid);
		$.ajax({
			async:false,
			type:"post",
			url:"psmark.action?id="+nid,
			dataType:"json",
			success:function(data){
				$(thisobj).closest(".row").find(".mark").hide();
				$(thisobj).hide();
				alert(data);
			},
			error:function(XmlHttpRequest,textStatus, errorThrown){
				alert(textStatus);
			}
		});
	}