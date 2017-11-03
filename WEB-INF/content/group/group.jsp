<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.List"%>

<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.object.Depart" %>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>内部系统-分组管理</title>
<script type="text/javascript">
$(function(){
    $('#list_tb').table();
});


/*提供给用户全选*/
 
	/*
	 
	function select_all()
	{
		var inputs = document.getElementsByTagName("input");   
		var x=document.getElementById("che")
        if(x.checked){
	        for(var i=0;i<inputs.length;i++){        
	      		if(inputs[i].getAttribute("type") == "checkbox"){       		     
	        		inputs[i].checked = true;     
	      			}     
	    		}     
		 	}
        else{
        	for(var i=0;i<inputs.length;i++){        
	      		if(inputs[i].getAttribute("type") == "checkbox"){       		     
	        		inputs[i].checked = false;     
	      			}     
	    		}     
        }
        	
	} */
	
	$(document).ready(function(){
		$("#add").click(function(){
			location.href = "group-input.action";
		});
		$("#batchadd").click(function(){
			location.href = "exceladddaiweiuser.jsp";
		});
		$("#cx").click(function(){
			location.href = "group.action";
		});
		
	});
</script>
</head>
<body>

<div class="body_title">
	<li style="padding-top:8px; padding-left:5px">内部系统-分组信息</li>
</div>
<BR>

<form action="group.action" method="post">
 <table class="main_content" align="center">
      <tr class="_content_select" style="text-align:center;">
	  <td colspan="2" class="content_select"> 
	 小 组名称：<input class="txt_select" type="text" name="groupname">&nbsp;&nbsp;
	 备&nbsp;&nbsp;注：<input class="txt_select" type="text" name="notes"></td>
 <td align="right"><input class="btn" type="submit" id="cx" name="chaxun" value="开始查询" class="button">&nbsp;&nbsp;<input class="btn" type="button" id="add" name="zengjia" value="增加" ></td>
 
      </tr>
	</table>  
	</form>
	
<table id="list_tb" class="main_content" width="100%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame">
    <tr class="_title">
      <td class="title" nowrap="nowrap" style="width:10%;">序号</td>
      <td class="title" nowrap="nowrap" >小 组名称</td>
     <td class="title" nowrap="nowrap" >备&nbsp;&nbsp;注</td>
     <td class="title" nowrap="nowrap" style="width:10%;">操&nbsp;&nbsp;作</td>
    </tr>
    
    
    
<c:if test="${!empty page.result}"> 
    <c:forEach items="${page.result}" var="groups" varStatus="stat" > 
					  

    <tr class="_content">
      <td class="content" align="center">${stat.count}</td>		<!--  personpage.getFirst()+ -->
     <td class="content" align="center" >${groups.group_name}</td> 	
      <td class="content" align="center" >${groups.note}</td>
    
      <td  nowrap="nowrap" class="content" align="center"  id = "mystatic">
      	&nbsp;<a href="group-input.action?id=${groups.id}">修改</a>&nbsp;&nbsp;
        <a href="group-delete.action?id=${groups.id}"  onClick="return confirm('确定删除此条记录吗？')">删除</a>&nbsp;&nbsp;
      	<a href="group-details.action?id=${groups.id}">查看</a>&nbsp;
      	</td>
      	
    </tr>

</c:forEach>
<tr class="_foot">
		<td height="25" colspan="12" class="foot">${controlTable}</td>
	</tr>
</c:if>

<c:if test="${empty page.result}">
  	<tr class="_foot">
    	<td class="foot" align="center"  colspan="12">没有数据！</td>
    </tr>
</c:if>

</table>

</body>
</html>