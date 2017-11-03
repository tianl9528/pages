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

<script src="<%=request.getContextPath()%>/scripts/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js" type="text/javascript"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery-1.7.2.min.js"></script>


<title>用户信息管理 -工作室人员详细信息</title>
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
	
</script >
  

<script type="text/javascript">
   function showimg(){
    
    $("#divimg").show();  
   }
  function hideimg(){
 
   $("#divimg").hide();
  }
</script>

<div class="clear"></div>


<div class="conBox">
        <div class="conTitle">工作室人员信息</div>
        <div class="conMiddle">
          <div style="z-index:1">
            <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
                <td>
                <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                    <tr class="greyColor">
                      <td class="typeNameTd" style="width:100px">姓名</td>
                      <td class="memberAddTd" align="left" style="width:350px"><span id="usernames">${user.user_name}</span></td>
                       <td class="typeNameTd" style="width:100px">头像</td>
                      <td class="typeNameTd"> <div width="120px" height="60px"> <img src="<%=request.getContextPath()%>${user.images_url}" /> </div></td>
                    </tr>
                    <tr class="whiteColor">
                      <td class="typeNameTd" >登录名</td>
                      <td class="memberAddTd" align="left">${user.log_name} 
                      <td class="typeNameTd" style="width:100px">性别</td>
                      <td class="memberAddTd" align="left" style="width:350px">
                        <c:if test="${user.sex=='0' || empty id }">男 </c:if>
					  &nbsp;&nbsp;  <c:if test="${user.sex=='1'}">女</c:if>
                      </td>
                  </tr>
                     
                  <tr class="greyColor">
                      <td class="typeNameTd" >工作室</td>
                      <td class="memberAddTd" align="left">
					    ${user.depart.name} 
                       <td class="typeNameTd" >职务</td>
                      <td class="memberAddTd" align="left">
					   ${user.job.name}
		  			 
                      </td>
                    </tr>
                    <tr class="whiteColor">
                      <td class="typeNameTd" >审核状态</td>
                      <td class="memberAddTd" align="left">${user.identify} 
                      <td class="typeNameTd" >联系方式</td>
                      <td class="memberAddTd" align="left"> ${user.mobile}
                    </tr>
            </table>
            
          </div>
          <p></p>
          <p></p>
          <p></p>
          <div class="subBtnBox">
          <p></p>
          <p></p>
          <p></p>
        <input type="button"  class="base_btn" value="返回" onclick="window.location.href='user.action'"/>
        
          </div>
        </div>
       
      </div>


</body>
</html>