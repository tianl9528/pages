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
<title>分组详细信息></title>
<%
String uid=request.getParameter("id");
%>

</head>
<body>
<script type="text/javascript">

$(document).ready(function(){
	$("#back").click(function(){
		location.href = "group.action";
	});	
});
</script>
<div class="body_title">
        <li style="padding-top:8px; padding-left:5px">当前位置->分组详细信息
	        			</li>
       </div>

</br>

<%-- <c:forEach items="${depart}" var="item" > 
${item.name}</br> 
</c:forEach> --%>

<form id="form1" name="thisForm" method="post" action="user-save.action" onSubmit="return checkforminput()">	
	<table width="100%" border="0" cellspacing="1" cellpadding="0" id = "mydata" class="main_content">
	 				<tr class="_title">
 <td class="title_left"  colspan="4"> &nbsp;&nbsp;${group.group_name}&nbsp;&nbsp;详细信息
</td>
				</tr>
			
      	
	<tr>
      <td width="20%" style="text-align: center;" class="title_left">分组名称</td>
      <td class="content"  style="text-align:left;">
       ${group.group_name}
       </td>

 </tr>
  <tr>
      <td class="title_left" width="20%" style="text-align: center;" >备注</td>
       <td   class="content"  style="text-align:left;">
     	${group.note}
       </td>
      </tr>
       <tr class="foot">
      <td style="text-align:center;" colspan="2">
        <input type="button" name="back" id="back"  class="btn" value="返 回" />
      </td>
    </tr>
</table>

</form>
</body>
</html>