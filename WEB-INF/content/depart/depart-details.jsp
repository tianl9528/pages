<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.List"%>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="<%=request.getContextPath()%>/scripts/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js" type="text/javascript"></script>
<title>工作室详细信息></title>
<%
String uid=request.getParameter("id");
%>

</head>
<body>
<script type="text/javascript">

$(document).ready(function(){
	$("#back").click(function(){
		location.href = "depart.action";
	});	
});
</script>

 <div class="body_title">
        <li style="padding-top:8px; padding-left:5px">当前位置->工作室详细信息
	        			</li>
       </div>
</br>

<form id="form1" name="thisForm" method="post" action="user-save.action" onSubmit="return checkforminput()">	
	<table width="100%" border="0" cellspacing="1" cellpadding="0" id = "mydata" class="main_content">
	 				<tr class="_title">
 <td class="title_left"  colspan="4"> &nbsp;&nbsp;${depart.name}&nbsp;&nbsp;详细信息
</td>
				</tr>
			
      	
	<tr>
      <td width="30%" style="text-align: center;" class="title_left">工作室名称</td>
      <td class="content"  style="text-align:left;">
       ${depart.name}
       </td>
       </tr>
     <tr>
      <td class="title_left" width="20%" style="text-align: center;" >备注</td>
       <td   class="content"  style="text-align:left;">
     	${depart.note}
       </td>
      </tr>
      
      <tr>
      <td class="title_left" width="30%" style="text-align: center;" >导师</td>
       <td   class="content"  style="text-align:left;">
     	${depart.teacher}
       </td>
      </tr>
      
       <tr>
      <td class="title_left" width="50%" style="text-align: center;" >工作室成功历程</td>
       <td   class="content"  style="text-align:left;">
     	${depart.development}
       </td>
      </tr>
      
       <tr class="foot">
      <td style="text-align:center;" colspan="7">
        <input type="button" name="back" id="back"  class="btn" value="返 回" />
      </td>
    </tr>
</table>

</form>
</body>
</html>