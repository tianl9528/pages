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
<title>内部系统-工作室管理</title>
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
			location.href = "depart-input.action";
		});
		$("#batchadd").click(function(){
			location.href = "exceladddaiweiuser.jsp";
		});
		$("#cx").click(function(){
			location.href = "depart.action";
		});
		
	});
</script>
</head>
<body>

<div class="body_title">
	<li style="padding-top:8px; padding-left:5px">内部系统-工作室信息</li>
</div>
<BR>

<form action="depart.action" method="post">
 <table class="main_content" align="center">
      <tr class="_content_select" style="text-align:center;">
	  <td colspan="2" class="content_select"> 
	  工作室名称：<input class="txt_select" type="text" name="departname">&nbsp;&nbsp;
	 备&nbsp;&nbsp;注：<input class="txt_select" type="text" name="notes"></td>
 <td align="right"><input class="btn" type="submit" id="cx" name="chaxun" value="开始查询" >&nbsp;&nbsp;<input class="btn" type="button" id="add" name="zengjia" value="增加" ></td>
 
      </tr>
	</table>  
	</form>
	
<table id="list_tb" class="main_content" width="100%" border="0" align="center" cellpadding="1" cellspacing="1" >
    <tr class="_title">
      <td class="title" nowrap="nowrap" style="width:10%;">工作室ID</td>
      <td class="title" nowrap="nowrap" >工作室名称</td>
     <td class="title" nowrap="nowrap" >备&nbsp;&nbsp;注</td>
     <td class="title" nowrap="nowrap" >导&nbsp;&nbsp;师</td>
     <td class="title" nowrap="nowrap" >发展&nbsp;&nbsp;历程</td>
     
     <td  class="title" nowrap="nowrap" style="width:10%;">操&nbsp;&nbsp;作</td>
    </tr>
    
    
    
<c:if test="${!empty page.result}">
    <c:forEach items="${page.result}" var="departs" varStatus="stat" > 		
    <tr class="_content">
      <td class="content" align="center">${stat.count}</td>		<!--  personpage.getFirst()+ -->
     <td class="content" align="center" >${departs.name}</td> 	
      <td class="content" align="center" >${departs.note}</td> 
       <td class="content" align="center" >${departs.teacher}</td> 
        <td class="content" align="center" >${departs.development}</td>   
      <td nowrap="nowrap" class="content" align="center"  id = "mystatic">
      &nbsp;	<a href="depart-input.action?id=${departs.id}">修改</a>&nbsp;&nbsp;
        <a href="depart-delete.action?id=${departs.id}"  onClick="return confirm('确定删除此条记录吗？')">删除</a>&nbsp;&nbsp;
      	<a href="depart-details.action?id=${departs.id}">查看</a>&nbsp;
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