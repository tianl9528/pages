<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>客户信息管理</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="<%=request.getContextPath()%>/themes/skin/unicomgd/unicomgd.css" type=text/css rel=stylesheet>
<SCRIPT language="JavaScript" src="<%=request.getContextPath()%>/scripts/formvalid.js"></SCRIPT>
<SCRIPT language="javascript" src="<%=request.getContextPath()%>/scripts/sort.js"></SCRIPT>
<SCRIPT language="javascript" src="<%=request.getContextPath()%>/scripts/jquery-1.5.1.min.js"></SCRIPT>

<script  language="javascript">

	/**
	 *  描述：Ajax操作
	 * author : li.jian
     * 最后修改时间：2011-8-30 17:30
	 */

	//多库共存 
	jQuery.noConflict();
	
	jQuery(document).ready(function(){
		
		/*新增客户信息 start*/
		 jQuery("#addCustom").click(function(){
				
				document.location.href = "<%=request.getContextPath()%>/app/sendMail/customManage/customInfo.jsp";

		});
		/*新增客户信息 end*/
		
		jQuery("#importcustom").click(function(){
				
				document.location.href = "<%=request.getContextPath()%>/app/sendMail/customManage/importUsers.jsp";

		});
		
		/*修改单个黑白名单  start*/
		jQuery(".changeonemingdan").change(function(){
			
			var mingdan = jQuery(this).val();
			
			var msg = (mingdan == 0) ? "白名单" : "黑名单";
			//原来的黑白名单
			var old = (mingdan == 0) ? 1 : 0;
			
			if(!confirm("你确定修改为" + msg + "?")) {
				//如果没有确定则修正为原来的值
				jQuery(this).val(old);
				return;
			}
			
			var bid = jQuery(this).prev("input").val();
			
			//这个应该不会出现吧
			if(isNull(mingdan)) {
				alert("非法名单!");
				return;
			}
			
			//这个也应该不会出现吧
			if(isNull(bid)) {
				alert("非法客户!");
				return;
			}
			
			//ajax调用，加上t的参数为了防止缓存(保险起见)
			jQuery.ajax({
				   type: "POST",
				   url: "changemingdan.sunit?t=" + new Date(),
				   data: {
					   		'bid' :bid,
					   		'mingdan':mingdan
					   	  },
				   
					success: function(msg){
				       
						if('success' == msg) {
							
							alert("修改成功!");
						} else if('error' == msg) {
							
							alert("修改失败!");
						}
						
						
						
				   }
				});
			
			
			
		});
		
		/*修改单个黑白名单  end*/
		
		
		/*全选按钮的事件  start*/
		jQuery("#allcheck").click(function(){
			
			var isChecked = jQuery("#allcheck").attr("checked");
			
			//每行前面的checkbox
			jQuery(".onebatchchange").attr("checked",isChecked)
						
					
		});
		/*全选按钮的事件  end*/
		
		
		/*批量黑白名单select触发事件 start*/
		jQuery("#batchmingdanselect").change(function(){
		
			
			//批量的是何种名单
			var result = jQuery("#batchmingdanselect").val();
			
			if(-1 == result)   { return;}
			
			if(!isSelectCustom()){
				alert("您还没有选择客户！");
				return;
			}
			
			//批量设置的名单 
			var msg = (result == 0) ? "白名单" : "黑名单";
			
			if(!confirm("是否批量为" + msg + "?")) {
				jQuery("#batchmingdanselect").val(-1);
				return;
			}
			
			//alert(jQuery("table[id='mytable'] tr").size());
			
			/*
			 * 如果本来是是黑名单，现在又批量修改为黑名单，这是不必要的，这里用一个变量记录，是否有这个情况，有的话，应该把对于每一列的前面的
			 * checkbox的钩给去掉
			 */
			var notupdate  = 0;
			
			//把批量修改的id以俩个#作为分割，传递过去，后台，在分割获取其中的id，在做处理
			var idtogether = "";
			
			/**
			 *需要修改的 table[id='mytable'] tr中的下标，因为我要通过 Ajax进行修改页面，故需要记录其下标，
			 *通过##进行分割,如果后台修改成功的话，便把其页面的黑白名单进行修改
			 */
			 var updatetrindex = "";
			
			jQuery("table[id='mytable'] tr").each(function(i){
		    	
				var oneChecked = jQuery(this).children().first().children().attr("checked");
				//排除第一个tr和最后俩个tr,前面打钩的才修改
				if( i >=1 && i<=20 && oneChecked) {
		    	
		    	//原来的黑白名单的值
		    	var oldmd = jQuery(this).children().last().children("select").val();
		    	
		    	var bid = jQuery(this).children().last().children("select").prev("input").val();
				
				 if(oldmd == result) {
					 jQuery(this).children().first().children().attr("checked",false);
					 
					 // 需要修正的数量
					 notupdate++;
				 } else {
					 //不等于即要记录修改过的下标
					 updatetrindex += i + "##";
					 //当然修改的话，也只要修改不同的便可
					 idtogether += bid + "##";
				 }
				 
				 
				}			
		    });
			
			if(idtogether == "" || result == "") {
				
				alert("没有可更新的客户!");
				return;
			}
			
			 if(notupdate != 0) {
				 
				 alert("有" + notupdate +"个本来就是" + msg + ",不需要设置" + msg + ",已经帮你修正，其他的是否批处理更改为【" + msg + "】？");
				 
			 }
		
			 //通过Ajax传输名单和批量的编号过去   start-----------------------------
			 	jQuery.ajax({
				   type: "POST",
				   url: "batchmingdan.sunit?t=" + new Date(),
				   data: {
					   		'idtogether' :idtogether,
					   		'mingdan':result
					   	  },
				   
					success: function(msg){
						
						if('success' == msg) {
													
							alert("批量更新名单成功!");
														 
							 //----当更新成功时，修正其黑白名单	,也就是ok为true的时候
							 var updateArr = updatetrindex.split("##");
							 
							 jQuery("table[id='mytable'] tr").each(function(i){
								
								var oneChecked = jQuery(this).children().first().children().attr("checked");
								//排除第一个tr和最后俩个tr,前面打钩的才修改
								if( i >=1 && i<=20 && oneChecked) {
									
									//当当前的tr标号在更新的数组中，便更新
									if(contains(i,updateArr)) {
										//更新名单
										jQuery(this).children().last().children("select").val(result);
									}
								}
							});
						//-------	
							 
							 
						} else if('error' == msg) {
							
							alert("批量更新名单失败!");
						} else if('paraerror' == msg) {
							
							alert("非法提交参数!");
						}
						
						
						
				   }
				});
			 
			 //通过Ajax传输名单和批量的编号过去   end--------------------------------
			
		});
		/*批量黑白名单select触发事件   end------*/
	
		/*批量删除客户信息      start*/
		jQuery("#batchdel").click(function(){
			
			if(!confirm("是否批量删除客户，请考虑?")) { 
				return;
			}
			
			if(!isSelectCustom()) {
				
				alert("您还没有选择任何客户!");
				return;
			}
			
			//传递过去id的积累，以##作为分割
			var batchId = "";
			
			jQuery("table[id='mytable'] tr").each(function(i){
		    	
				var oneChecked = jQuery(this).children().first().children().attr("checked");
				//排除第一个tr和最后俩个tr,前面打钩的才删除
				if( i >=1 && i<=20 && oneChecked) {
		    	
		    	var bid = jQuery(this).children().last().children("select").prev("input").val();
				
				//当然修改的话，也只要修改不同的便可
			    batchId += bid + "##";
				}
		   
			});
		
			//Ajax传递数据 start
			jQuery.ajax({
				   type: "POST",
				   url: "batchdelcontrol.sunit?t=" + new Date(),
				   data: {
					   		'batchId' :batchId
					   	 },
				   
					success: function(msg){
				       
						if('success' == msg) {
							
							alert("修改成功!");
							document.location.href = "customInfoList.sunit";
						
						} else if('error' == msg) {
							
							alert("修改失败!");
						} else if('paraerror' == msg) {
							
							alert("不合法的参数!");
						}
						
						
						
				   }
				});
			//Ajax传递数据  end
			
			
			
			
		});
		/*批量删除客户信息      end*/
		
		
		/*导出客户信息 start*/
		jQuery("#exportcustom").click(function(){
			
			if(confirm("确定导出客户信息?")) {
				
				document.location.href = "exportcustom.sunit";
			}
			
		});
		
		/*导出客户信息 end*/
		
	});
	
	
	/*批处理时，当然要确定有选择项，这里为是否选择客户，有选择返回true，不然为false*/
	function isSelectCustom() {
		var hasselect = 0;
		
		jQuery(".onebatchchange").each(function(){
								
			if(jQuery(this).attr("checked")){
				
				hasselect++;
			};
							
		});
		//hasselect=0，则没有选择任何项目 
		return hasselect==0 ? false : true; 
		
	}
	
	
	/*判断某值是否在某一数组中，在的话，返回true，则false*/
	function contains(para,arr) {
		
		for(var i = 0;i<arr.length;i++) {
			 
			 if(para == arr[i]) return true;
			 
		 }
		return false;
	}
	
	
	/*判断result是否为空，为空则返回ture，则false*/
	function isNull(result) {
		
		return result == '' || jQuery.trim(result) == '';
		
	}


	function $(itemName){
		return document.getElementById(itemName);
	}

	function clearForm(){
		$("cumName").value="";
		$("mailAddr").value="";
		$("phone").value="";
	}
	
</script>
</head>
<body>
<table cellSpacing=0 cellPadding=0 width="100%" border=0>
	<tr>
	  <td align="center">
	  <form name="form1" method="post" action="<%=request.getContextPath()%>/app/sendMail/customInfoList.sunit">
	  	<table cellSpacing=0 cellpadding=0 width="98%" border=0>
			<tr style="text-align: center">
			<td width="15%" height="30" align="center" >姓名:</td>
            <td width="20%">
				<input type="text" style="width:100%" name="cumName" value="<c:out value='${qcumName}'/>"/>
            </td>
            <td width="15%" height="30" align="center" >邮件地址:</td>
			<td width="20%">
				<input type="text" name="mailAddr" style="width:100%" value="<c:out value='${qmailAddr}'/>"/>
            </td>
            <td width="15%" height="30" align="center" >联系电话:</td>
			<td width="20%">
				<input type="text" name="phone" style="width:100%" value="<c:out value='${phone}'/>" />
            </td>
			</tr>	
		</table>
        <table cellSpacing=0 cellpadding=0 width="98%" border=0>
        <tr align="center">
        	<td>
            <input type="submit" name="submit" value="查询"/>
			<input type="button" style="margin-left:20px" name="clear" onClick="clearForm()" value="清空"/>
            <input type="button" style="margin-left:20px" value="新增客户信息" id="addCustom"/>
			<input type="button" style="margin-left:20px" value="批量删除" id = "batchdel"/>
            <input type="button" style="margin-left:20px" value="导入" id = "importcustom"/>
			<input type="button" style="margin-left:20px" value="导出" id = "exportcustom"/>
            </td>
        </tr>
        </table>
      </form>
	    <table cellSpacing=0 cellPadding=0 width="98%" border=1 id = "mytable">
          <tr>
         	<td height="30" align="center" bgcolor="#CCCCCC" nowrap>
         		全选
         		<input type="checkbox" name="whiteblackAll" id = "allcheck"/>
         	</td>
            <td height="30" align="center" bgcolor="#CCCCCC" nowrap>姓名</td>
            <td  align="center" bgcolor="#CCCCCC" nowrap>性别</td>
            <td  align="center" bgcolor="#CCCCCC" nowrap>联系电话</td>
            <td  align="center" bgcolor="#CCCCCC" nowrap>邮箱地址</td>
            <td align="center" bgcolor="#CCCCCC" nowrap>操作</td>
          </tr>
		  <c:forEach items="${list}" var="data" varStatus="status">		  	
          
          <tr onMouseOver="if (this.className!='trSelect') this.className='trOver'" onMouseOut="if (this.className!='trSelect') this.className='trOut'">
        	 <td height="30" align="center" nowrap>
        	 	        	 
        	 	<input type="checkbox" name="whiteblack" class = "onebatchchange"/>
			</td>
            <td height="30" align="center" nowrap><c:out value="${data.name}"/>&nbsp;</td>
            <td height="30" align="center" nowrap><c:out value="${data.sex}"/>&nbsp;</td>
            <td height="30" align="center" nowrap><c:out value="${data.mobile}"/>&nbsp;</td>
            <td height="30" align="center" nowrap><c:out value="${data.mailAddr}"/>&nbsp;</td>
           
            <td height="30" align="center" id = "myselecttd">
			<a href="<%=request.getContextPath()%>/app/sendMail/modiCustomInfo.sunit?id=<c:out value='${data.id}'/>">修改</a>
			|
			<a onClick="return confirm('您确定要删除该客户信息？')" href="<%=request.getContextPath()%>/app/sendMail/delCustomInfo.sunit?id=<c:out value='${data.id}'/>">删除</a>
			|
			置为：
			<input type = "hidden" name = "customerid" value = "<c:out value='${data.id}'/>" />
			
			<select class = "changeonemingdan">
				<option value="0" <c:if test="${data.mingdan==''}">selected</c:if> >白名单</option>
				<option value="1" <c:if test="${data.mingdan==1}">selected</c:if> >黑名单</option>
			</select>
			</td>
          </tr>


		  </c:forEach>
          
          
          <tr>
            <td height="30" colspan="6" align="center"><c:out value="${pageInfo}" escapeXml="false"/></td>
          </tr>
        </table>
	  
	  
	  
	  </td>
	</tr>
</table>
<script language="javascript">
createElement("cumName","<c:out value="${qcumName}"/>");
createElement("mailAddr","<c:out value="${qmailAddr}"/>");
</script>
</body>
</html>