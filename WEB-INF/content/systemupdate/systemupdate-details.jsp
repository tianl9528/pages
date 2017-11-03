<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.List"%>

<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.object.User" %>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>内部系统-系统更新管理</title>
<script type="text/javascript">


	$(document).ready(function(){
		
		$("#batchadd").click(function(){
			location.href = "exceladddaiweiuser.jsp";
		});	
		$("#back").click(function(){
			location.href = "systemupdate.action";
		});	
	});
</script>
</head>
<body>

<div class="body_title">
	<li style="padding-top:8px; padding-left:5px">内部系统->系统更新详细信息</li>
</div>
<BR>

<form name="thisForm" method="post" action="systemupdate-confirm.action" onSubmit="return checkforminput()">
<table id="list_tb" class="main_content" width="100%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame">

    <tr class="_title" ><td class="title" colspan="2" align="center" > 系统详细信息</td></tr>
    
   
    	 	<tr >
      		<td nowrap="nowrap" width="20%" style="text-align: center;" class="title_left">
      			所属项目
      			 <input class="txt_input" type="hidden" name="id" value="${systemupdate.id}" style="width:40%" / >
      		</td>
      		<td  class="content"  style="text-align:left;">  
       			${systemupdate.projects.project_name}
       		</td> 	
     	 </tr>
     	   
     	   <tr>
     	   		<td nowrap="nowrap" class="title_left" width="20%" style="text-align: center;" >
      			升级模块
      			</td>
       			<td class="content"  style="text-align:left;">
    				  ${systemupdate.module}
      	   		</td>   
     	   </tr>  
     	   
   		 <tr >
    		 <td nowrap="nowrap" class="title_left" width="20%" style="text-align: center;">
    		 	内容描述
    		 </td>
      		<td class="content"  style="text-align:left;">  
      		${systemupdate.content}
       		
       		</td>         
         </tr>
         
         <tr> 	
       		<td nowrap="nowrap" class="title_left" width="20%" style="text-align: center;">
  				计划上线时间
  			</td>
       		<td  class="content"  style="text-align:left;">
       		${systemupdate.plan_time}
      		
       		</td>     
         </tr>
         
         <tr>
          <td nowrap="nowrap" class="title_left" width="20%" style="text-align: center;">
     		 	实际上线时间
		     		 </td>
			 <td  class="content"  style="text-align:left;">       
		      ${systemupdate.actual_time}
		       </td>
		  </tr>
       
         <tr >
			<td nowrap="nowrap" class="title_left" width="20%" style="text-align: center;">
				测试人员
			</td>
			<td class="content"  style="text-align:left;">  
      		    ${systemupdate.test_uname}
      		</td>   
		</tr>
		<tr>
			<td nowrap="nowrap" class="title_left" width="20%" style="text-align: center;">
     		 	升级人员
     		 </td>
       		<td  class="content" style="text-align:left;">  	
       		
       		 ${systemupdate.upgrade_uname}
				 
			</td>	    
			    		
		</tr>
      		
    	<tr >
      <td nowrap="nowrap" class="title_left" width="20%" style="text-align: center;">
     		 	状态
     		 </td>
	    <td  class="content"  style="text-align:left;">       
                 <c:if test="${systemupdate.state=='1'}"> 已确认</c:if>
				 <c:if test="${systemupdate.state=='0'}">未确认</c:if>
         </td>
	</tr>
  		<tr>
      	<td nowrap="nowrap" class="title_left" width="20%" style="text-align: center;">
     		 	填写时间
     		 </td>
	 <td  class="content" style="text-align:left;">       
      ${systemupdate.create_time}
       </td>
     </tr>
      		  		
    	<tr >
      <td nowrap="nowrap" class="title_left" width="20%" style="text-align: center;">
     		 	填写人
     		 </td>
	 <td  class="content" style="text-align:left;">       
               ${systemupdate.users.user_name} 
       </td>
        
	</tr>
  		
  		      		  		
    	<tr >
        <td nowrap="nowrap" class="title_left" width="20%" style="text-align: center;">
     		 	上线结果备注
     		 </td>
	 <td  class="content" style="text-align:left;">       
      ${systemupdate.note}
       </td>
     
	</tr>
	
  	
	 <tr >
      <td class="title_left" style="text-align:center;" colspan="2">  

        <input type="button" name="back" id="back" class="btn" value="返 回" />
      </td>
    </tr>

</table>
</form>
</body>
</html>