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
<title>工作类型管理</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
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
<form action="worktype.action" method="post">
<div class="searchBox">
        <div class="searchIcon"><img src="<%=request.getContextPath()%>/theme/images/bg_search_55.png" width="38" height="40" /></div>
        <div class="searchInput">
          <input name="searchInput" type="text" />
        </div>
        <div class="searchBtn">
          <input name="" type="submit" value="搜索" />
        </div>
		<div>
          <input type="button" value="新增" class="base_btn" style="float:left;" onClick="window.location.href='worktype-input.action'"/>
        </div>
                
      </div>
      <div class="clear"></div>
      </form>
<div class="listBox">
        <div class="listTitle">工作类型<span class="more"><a href="worktype-input.action">+</a></span></div>
        <div class="list">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr>
              <td width="250">工作类型</td>
              <td>备注</td>
              <td width="170">操作</td>
            </tr>
          </table>
          
           <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
          <c:if test="${!empty page.result}">
 			<c:forEach items="${page.result}" var="worktype" varStatus="stat"> 
            <tr class="<c:if test="${stat.count%2==1}">colorGrey</c:if><c:if test="${stat.count%2==0}">colorwhite</c:if>">
              <td class="trainLeft" width="250">${worktype.typeName}</td>
              <td class="trainContent">${worktype.remark}</td>
              <td class="trainFunction" width="170"><a href="<%=request.getContextPath()%>/worktypesub/worktypesub.action?workType.id=${worktype.id}" class="detail">分类</a><a href="worktype-input.action?id=${worktype.id}" class="edit">编辑</a><a href="worktype-delete.action?id=${worktype.id}" onClick="return confirm('确定要删除这条记录吗')" class="delete">删除</a></td>
            </tr>      
          </c:forEach>
		 </c:if>     
          </table>
          
          
        <c:if test="${empty page.result}">
        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr><td>没有数据！！！</td></tr>
        </table>
        </c:if>
</div>        
        
        <!--分页-->         
        <div class="page">
          <div class="pageBox">
          <table border="0" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
            <tr><td><c:if test="${!empty page.result}">${controlTable}</c:if></td></tr>
          </table>
          </div>
        </div>
</div>

</body>
</html>