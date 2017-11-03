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
<%
String id=(String)request.getParameter("id");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css" rel="stylesheet" type="text/css" />
<script src="<%=request.getContextPath()%>/scripts/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js" type="text/javascript"></script>
<title>职务信息管理 - <%=request.getParameter("id")==null?"新增":"修改" %></title>


</head>
<body>
<script type="text/javascript">

$(document).ready(function(){
	$("#back").click(function(){
		location.href = "job.action";
	});	
});

function check(){
    var yhJobName = document.getElementById("jobname").value;
    if(yhJobName.length==0 || yhJobName.replace(/\s+/g,"")=="" || yhJobName==null){
        alert("请输入职务名称");
        return false;
    }
    return true;
    
}
	
</script>

        <div class="body_title">
      
       </div>

</br>

<form name="thisForm" method="post" action="job-save.action?id=${job.id}" onSubmit="return checkforminput()">	

<div class="conBox">
        <div class="conTitle">职务信息</div>
        <div class="conMiddle">
           
          <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
           <tr>
            <td>
            
                <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                  <tr class="greyColor">
                    <td class="typeNameTd" style="width:150px">职务名称</td>
                      <td   class="memberAddTd"  align="left" style="width:720px">
                   <input name="job.name" class="itemManagerInput" value="${job.name}"></input>
                   </td>
                  </tr>
              
                  <tr class="whiteColor">
                    <td class="typeNameTd">备注</td>
                     <td   class="memberAddTd"  align="left">
                   <input name="job.note" class="itemManagerInput" value="${job.note}"></input>
                   </td>
                    </tr>
                  </table>
			</td>
           </tr>
          </table>
            
          <div class="subBtnBox">
          <input type="submit" class="base_btn" onclick="return check();" value="提交" />
        <input type="button"  class="base_btn" value="返回" onclick="window.location.href='job.action'"/>
        
          </div>
        </div>
        <div class="conBottom"></div>
      </div>

</form>
</body>
</html>