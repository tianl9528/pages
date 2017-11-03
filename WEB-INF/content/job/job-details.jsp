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


<title> 职务详细信息</title>
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
        <div class="conTitle">职务信息</div>
        <div class="conMiddle">
          <div style="z-index:1">
            <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
                <td>
                <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                    <tr class="greyColor">
                      <td class="typeNameTd" style="width:100px">职务名</td>
                      <td class="memberAddTd" align="left" style="width:350px"><span id="usernames">${job.name}</span></td>
                       
                    </tr>
                    <tr class="whiteColor">
                      <td class="typeNameTd" >职务说明</td>
                      <td class="memberAddTd" align="left">${job.note} 
                      
                      </td>
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
        <input type="button"  class="base_btn" value="返回" onclick="window.location.href='job.action'"/>
        
          </div>
        </div>
       
      </div>


</body>
</html>