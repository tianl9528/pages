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
<title>用户信息管理 - <%=request.getParameter("id")==null?"新增":"修改" %></title>
<%
String uid=request.getParameter("id");
%>

</head>
<body>
<script type="text/javascript">
/*日期控件适用于.txt_select_date类样式文本框,有需要才用*/
$(document).ready(function() {
	  $(".txt_select_date" ).datepicker({ dateFormat: "yy-mm-dd",
										 changeYear: true,
										 yearRange: "1949:2099",
										 monthNames: ["1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"]});										   
});

function check(){
    var projectName = document.getElementById("project").value;
    var moduleName = document.getElementById("module").value;
    
    
    if(projectName==""){
        alert("请选择项目");
        return false;
    }
    if(moduleName.length==0 || moduleName.replace(/\s+/g,"")=="" || moduleName==null){
        alert("请输入升级模块");
        return false;
    }
    return true;
    
}

$(document).ready(function(){
	$("#back").click(function(){
		location.href = "sysupdate.action";
	});
	

});
	
	
	/* 
	  function $(id){
			var ops=document.getElementById(id);
			return ops;
		}

		function clear(){
			
				//return confirm('确定提交数据吗？');
				var inputs = document.getElementsByTagName("input");   
			        for(var i=0;i<inputs.length;i++){        
			      		if(inputs[i].getAttribute("type") == "text"){       		     
			        		inputs[i].value ="";     
			      			}     
			    		}      
		} */
	
</script>

        <div class="body_title">
        <li style="padding-top:8px; padding-left:5px">当前位置-> <c:choose>
	        	<c:when test="${!empty id }">
	        		<c:set var="theme"  value="系统更新记录修改"/>
	        	</c:when>
	        	<c:otherwise>
	        		<c:set var="theme"  value="系统更新记录增加"/>
	        	</c:otherwise>
	           </c:choose>       
				${theme}</li>
       </div>

     

<%-- <c:forEach items="${depart}" var="item" > 
${item.name}</br> 
</c:forEach> --%>

<form name="thisForm" method="post" action="sysupdate-save.action" onSubmit="return checkforminput()">	
	<table width="100%" border="0" cellspacing="1" cellpadding="0" id = "mydata" class="main_content">
	 				<br>
	 				<tr class="_title">
				<td class="title" colspan="2" style="text-align:left;">
					</td>
				</tr>
				
	<tr>
      <td width="10%" style="text-align: center;" class="title_left">所属项目</td>
      <td class="content"  width="40%" style="text-align:left;">
       <select name="project_name" id="project"> 
        <option value="" >--请选择--</option>
					<c:forEach items="${project_list}" var="project" > 
					    <option value="${project.id}" <c:if test="${project.id eq systemupdate.projects.id}">selected</c:if>>${project.project_name}</option>
		  			 </c:forEach>
		  			 
	</select>
	</td>
      </tr>
      
      <tr>
       <td class="title_left" width="10%" style="text-align: center;" >升级模块</td>
       <td   class="content"  style="text-align:left;">
       <textarea name="systemupdate.module" id="module" cols=50 rows=3 >${systemupdate.module}</textarea>
       <input class="txt_input" type="hidden" name="systemupdate.id" value="${systemupdate.id}" style="width:40%" / >
       <input class="txt_input" type="hidden" name="state" value="${systemupdate.state}" style="width:40%" / >
      </td>
      </tr>
      
    <tr>
      <td class="title_left" width="10%" style="text-align: center;">内容描述</td>
      <td class="content"  style="text-align:left;">
     <textarea name="systemupdate.content" cols=50 rows=3 >${systemupdate.content}</textarea>
        </td>
      </tr>
    
      
      <tr><td class="title_left" width="10%" style="text-align: center;">计划上线时间</td>
       <td class="content" style="text-align:left;">
      <input type="text" class="txt_select_date" name="systemupdate.plan_time" id="plan_time" value="${systemupdate.plan_time}" style="width:15%" /></td>
      </tr>
      <tr>
       <td class="title_left" width="10%" style="text-align: center;" >实际上线时间</td>
      <td class="content"  style="text-align:left;">
    
        <input class="txt_select_date" type="text" name="systemupdate.actual_time"  value="${systemupdate.actual_time}" style="width:15%" /></td>      
      </tr>
      
      <tr >
      <td class="title_left" width="10%" style="text-align: center;" >测试人员</td>
      <td  class="content" style="text-align:left;">
        <input type="text" class="txt_input" name="systemupdate.test_uname" id="test_uname" value="${systemupdate.test_uname}" style="width:15%" />   
      </tr>

    <tr>
    <td class="title_left" width="10%" style="text-align: center;">升级人员</td>
       <td class="content" style="text-align:left;">
      <input type="text" class="txt_input" name="systemupdate.upgrade_uname" id="upgrade_uname" value="${systemupdate.upgrade_uname}" style="width:15%" /></td>
   
    </tr>
      
    <tr>
     
      <td class="title_left" width="10%" style="text-align: center;">上线结果备注</td>
       <td class="content" style="text-align:left;">
      <textarea name="systemupdate.note" cols=50 rows=3 >${systemupdate.note}</textarea>
      </td>
      </tr> 
      
      
      
    <tr class="foot">
      <td style="text-align:center;" colspan="2">
   
      &nbsp;&nbsp;&nbsp;
          <input type="submit" name="submit" id="submit" class="btn" onclick="return check();" value="提 交" />
      &nbsp;&nbsp;&nbsp;
        <input type="button" name="back" id="back" class="btn" value="返 回" />
      </td>
    </tr>
</table>

</form>
</body>
</html>