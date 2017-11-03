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
<title>工作室管理</title>
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
</script>
</head>
<body>


      <div class="clear"></div>
      
<div class="listBox">
        <div class="listTitle">浩臻工作室<span class="more"><a href="#" class="edit">编辑</a></span></div>
        <div class="list">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">	
            <tr>
              <td width=""><img src="content.png"></td>
              <td width="450" style="text-align:left; vertical-align:top">导师工作室定位为导师及其团队结合生产实际开展培训、研修、技术攻关、交流、技能创新等活动的平台和场所，主要负责培养高级培训师、高级技能人才</td>
            </tr>
          </table>
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
            <tr class="colorGrey">
              <td width="77" class="trainTime">导师</td>
              <td width="76" class="trainFunction">陆浩臻</td>
            </tr>
            <tr class="colorGrey">
              <td width="77" class="trainTime">学员</td>
              <td width="76" class="trainFunction"><a href="demo-manlist.jsp">13</a></td>
            </tr>
            <tr class="colorGrey">
              <td width="77" class="trainTime">项目负责人</td>
              <td width="76" class="trainFunction"><a href="demo-manlist.jsp">9</a></td>
            </tr>     
            <tr class="colorGrey">
              <td width="77" class="trainTime">课件数</td>
              <td width="76" class="trainFunction">5</td>
            </tr>             
                
          </table>
        </div>
        <div class="page">
          <div class="pageBox">
          </div>
        </div>
      </div>


</body>
</html>