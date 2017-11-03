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
String returnValidate = (String)request.getAttribute("returnId")==null?"":(String)request.getAttribute("returnId");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>

<title>[${workType.typeName}] 的小分类管理 - <%=request.getParameter("id")==null?"新增":"修改" %></title>


<%
String uid=request.getParameter("id");
%>

</head>
<body>
<script type="text/javascript">

/*日期控件适用于.txt_select_date类样式文本框,有需要才用*/
$(document).ready(function() {
	  $(".txt_date" ).datepicker({ dateFormat: "yy-mm-dd",
										 changeYear: true,
										 yearRange: "1949:2099",
										 monthNames: ["1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"]});										   
});


var mySelect=new mSelect('mySelect','mSelect.css');
window.onload=function(){
	var aS=document.getElementsByTagName('select');
	for (var i=0;i<aS.length;i++){
		switch(aS[i].getAttribute('mSty')){
			case 'blueCircle':
				mySelect.Create(aS[i],'blueCircle',true);
				break;
		}
	}
}
	
</script>



<div class="clear"></div>

<form id="form1" name="form1" method="post" action="worktypesub-save.action" onSubmit="return checkforminput()">	
<div class="conBox">
        <div class="conTitle">[${workType.typeName}] 的小分类详细信息</div>
        <div class="conMiddle">
           
          <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
           <tr>
            <td>
                <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                    <tr class="greyColor">
                      <td class="typeNameTd" style="width:150px">工作小类型</td>
                      <td class="memberAddTd" align="left" style="width:720px">
                      <input name="workTypeSub.subTypeName" type="text" class="itemManagerInput"  value="${workTypeSub.subTypeName}" />  
                      <input name="workType.id" type="hidden" value="${workType.id}" /> 
                      <input name="workTypeSub.id" type="hidden" value="${workTypeSub.id}" /> 
                      </td>
                    </tr>
                    <tr class="whiteColor">
                      <td class="typeNameTd" style="width:150px">序号</td>
                      <td class="memberAddTd" align="left" style="width:720px">
                      <input name="workTypeSub.serial" type="text" class="itemManagerInput"  value="${workTypeSub.serial}" />  
                      </td>
                    </tr>                    
                     <tr class="greyColor">
                       <td class="typeNameTd">备注</td>
                       <td class="memberAddTd" align="left">
                       <textarea name="workTypeSub.remark" id="workTypeSub.remark" rows="7" style="width:720px;">${workTypeSub.remark}</textarea>
                       </td>
                   </tr>
              </table>
			</td>
            </tr>
            </table>
         
          <div class="subBtnBox">
          <input type="submit" class="base_btn" onclick="return check();" value="提交" />
        <input type="button"  class="base_btn" value="返回" onclick="window.location.href='worktypesub.action?workType.id=${workType.id}'"/>
          </div>
          
         </div>
        <div class="conBottom"></div>
      </div>
</form>

</body>
</html>