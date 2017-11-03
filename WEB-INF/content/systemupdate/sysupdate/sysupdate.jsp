<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.List"%>

<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.object.User" %>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>内部系统-系统记录更新管理</title>
<script type="text/javascript">
$(function(){
    $('#list_tb').table();
});
/*提供给用户全选*/
 
/*日期控件适用于.txt_select_date类样式文本框,有需要才用*/
$(document).ready(function() {
	  $(".txt_select_date" ).datepicker({ dateFormat: "yy-mm-dd",
										 changeYear: true,
										 yearRange: "1949:2099",
										 monthNames: ["1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"]});										   
});


function clearFrom() {
	jQuery("#start_date").val("");
	jQuery("#end_date").val("");
	jQuery("#state").val("");
	jQuery("#projects").val("");
}
	

	$(document).ready(function(){
		$("#add").click(function(){
			location.href = "sysupdate-input.action";
		});
		$("#batchadd").click(function(){
			location.href = "exceladddaiweiuser.jsp";
		});
		$("#cx").click(function(){
			location.href = "sysupdate.action";
		});	
		$("#back").click(function(){
			location.href = "sysupdate.action";
		});	
	});
</script>
</head>
<body>

<div class="body_title">
	<li style="padding-top:8px; padding-left:5px">内部系统->系统更新信息</li>
</div>
<BR>

<form action="sysupdate.action" method="post">
 <table class="main_content" align="center">

      <tr class="_content_select" style="text-align:center;">
	  <td colspan="2" class="content_select"> 
	                   填写时间从
			 <input type="text" class="txt_select_date" name="start_date" id="start_date" style="width:13%" />
		  	到
		  	<input type="text" class="txt_select_date" name="end__date" id="end_date"  style="width:13%" />
			&nbsp;&nbsp;&nbsp;&nbsp;
			  所属项目：<select id = "projects" name="projectname" value="1">  
	     <option value="">--全部项目--</option>  
	   <c:forEach items="${project_list}" var="projects" varStatus="stat"> 
	     <option value="${projects.project_name}">${projects.project_name}</option> 
	   </c:forEach> 
	   </select> 
	   &nbsp;
	   状态：
			<select name="state" id="state">
				<option value="">--全部--</option>
				<option value="1">已确认</option>
				<option value="0">未确认</option>
			</select></td>
	  
 <td align="left"><input class="btn" type="submit" id="cx" name="chaxun" value="查询" class="button">
 <input type="button"  class="btn" onClick="clearFrom()" value="清空" >
 <input class="btn" type="button" id="add" name="zengjia" value="增加" >
</td>    

      </tr>
	</table>  
	</form>
	<br>
	
	
<table id="list_tb" class="main_content" width="100%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame">
    <tr class="_title">

      <td class="title" nowrap="nowrap" >序号</td>
      <td class="title" nowrap="nowrap" >所属项目</td>
      <td class="title" nowrap="nowrap" >计划上线时间</td>
          <td class="title" nowrap="nowrap" >实际完成时间</td>
     <td class="title" nowrap="nowrap" >测试人员</td>
      <td class="title" nowrap="nowrap" >升级人员</td>
       <td class="title" nowrap="nowrap" >状态</td>
      <td class="title" nowrap="nowrap" >填写时间</td>
      <td class="title" nowrap="nowrap" >填写人</td>    
   
          <td class="title" nowrap="nowrap" >操作</td>
    </tr>
    
    
<c:if test="${!empty page.result}">
 <c:forEach items="${page.result}" var="systemupdates" varStatus="stat"> 	
 				  		  				  			   
    <tr class="_content">
      <td class="content" align="center">${stat.count}</td>		
     <td class="content" align="center" >${systemupdates.projects.project_name}</td> 	
     <td class="content" align="center" >${systemupdates.plan_time}</td>
       <td class="content" align="center" >${systemupdates.actual_time}</td>
      <td class="content" align="center" >${systemupdates.test_uname}</td>
       <td class="content" align="center" >${systemupdates.upgrade_uname}</td>
       <td class="content" align="center" >
       <c:if test="${systemupdates.state=='1'}">
                  已确认
       </c:if>
        <c:if test="${systemupdates.state=='0'}">
                 未确认
       </c:if>
       </td>
      <td class="content" align="center" >${systemupdates.create_time}</td>
       <td class="content" align="center" >${systemupdates.users.user_name}</td>
      
       
      <td class="content" align="center"  id = "mystatic">
       <c:if test="${systemupdates.state eq 0}">
      	&nbsp;<a href="sysupdate-input.action?id=${systemupdates.id}">修改</a>&nbsp;&nbsp;
      	</c:if>
      	<c:if test="${systemupdates.state eq 1}">
      	&nbsp;修改&nbsp;&nbsp;
      	</c:if>
        <a href="sysupdate-delete.action?id=${systemupdates.id}"  onClick="return confirm('确定删除此条记录吗？')">删除</a>&nbsp;&nbsp;
        <a href="sysupdate-details.action?id=${systemupdates.id}">查看</a>&nbsp;
      </td>     
     <%--  <td>
      <c:if test="${systemupdates.state eq 0}">
        <a href="systemupdate-confirm.action?id=${systemupdates.id}" >确认</a>
        </c:if>
        <c:if test="${systemupdates.state eq 1}">
                   确认
        </c:if>
         
      </td> --%>
    </tr>

</c:forEach>
<tr class="_foot">
		<td height="25" colspan="15" class="foot">${controlTable}</td>
	</tr>
</c:if>

<c:if test="${empty page.result}">
  	<tr >
    	<td class="foot" align="center"  colspan="15">没有数据！</td>

    </tr>
</c:if>

</table>
</body>
</html>