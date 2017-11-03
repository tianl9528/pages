<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.List"%>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="<%=request.getContextPath()%>/scripts/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js" type="text/javascript"></script>
<title>分组信息管理 - <%=request.getParameter("id")==null?"新增":"修改" %></title>


</head>
<body>
<script type="text/javascript">

$(document).ready(function(){
	$("#back").click(function(){
		location.href = "group.action";
	});	
});

function check(){
    var yhGroupName = document.getElementById("groupname").value;
    if(yhGroupName.length==0 || yhGroupName.replace(/\s+/g,"")=="" || yhGroupName==null){
        alert("请输入分组名称");
        return false;
    }
    return true;
    
}
	
</script>

        <div class="body_title">
        <li style="padding-top:8px; padding-left:5px">当前位置-> <c:choose>
	        	<c:when test="${!empty id }">
	        		<c:set var="theme"  value="分组修改"/>
	        	</c:when>
	        	<c:otherwise>
	        		<c:set var="theme"  value="分组增加"/>
	        	</c:otherwise>
	           </c:choose>       
				${theme}</li>
       </div>

</br>

<%-- <c:forEach items="${depart}" var="item" > 
${item.name}</br> 
</c:forEach> --%>

<form name="thisForm" method="post" action="group-save.action" onSubmit="return checkforminput()">	
	<table width="100%" border="0" cellspacing="1" cellpadding="0" id = "mydata" class="main_content">
	 				<tr class="_title">
				<td class="title" colspan="4" style="text-align:left;">
					</td>
				</tr>
				
	<tr >
      <td width="20%" style="text-align: center;" class="title_left">小组名称</td>
      <td class="content"  style="text-align:left;">
        <input type="text" class="txt_input" name="group.group_name" id="groupname" value="${group.group_name}" style="width:30%" />
         <input name="id" type="hidden" class="input_oneborder" value="${id}"></td>
 </tr>
 
  <tr>
      <td class="title_left" width="20%" style="text-align: center;" >备注</td>
       <td   class="content"  style="text-align:left;">
      <textarea name="group.note" cols=80 rows=3 >${group.note}</textarea></td>
      </tr>
      
  

    <tr class="foot">
      <td style="text-align:center;" colspan="5">
   
      &nbsp;&nbsp;&nbsp;
          <input type="submit" name="submit" id="submit" class="btn" onclick="return check();" value="提 交" />
      &nbsp;&nbsp;&nbsp;
        <input type="button" name="back" id="back"  class="btn" value="返 回" />
      </td>
    </tr>
</table>

</form>
</body>
</html>