<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="org.apache.commons.logging.Log"%>
<%@ page import="org.apache.commons.logging.LogFactory"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>培训安排</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/theme/jquery-ui-1.8.20.custom.css" type="text/css" media="screen" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery-ui-1.8.20.custom.min.js"></script>

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

function toEdit(trainPlanId,state){
// if(state==0){
	//	window.location="<%=request.getContextPath()%>/trainPlan/trainPlanEdit.action?trainPlanId="+trainPlanId;
//	}else{
	//	alert("对不起！已培训过的不能编辑！");
//	}
	window.location="<%=request.getContextPath()%>/trainPlan/trainPlanEdit.action?trainPlanId="+trainPlanId;
}


function deleteConfirm(trainPlanId,state){
	<%--
	if(state==0){
		if(confirm("此操作将删除跟安排有关的所有信息，不可恢复！确定要删除吗？")){
			window.location="<%=request.getContextPath()%>/trainPlan/trainPlan-delete.action?trainPlanId="+trainPlanId;
		}
	}else{
		alert("对不起！已培训过的不能删除！");
	}--%>
	window.location="<%=request.getContextPath()%>/trainPlan/trainPlan-delete.action?trainPlanId="+trainPlanId;
}
</script>
</head>
<body>

<form method="post" action="#">
<div class="searchBox">
        <div class="searchIcon"><img src="<%=request.getContextPath()%>/theme/images/bg_search_55.png" width="38" height="40" /></div>
        <div class="searchInput">
          <input name="subtype" type="text" />
        </div>
        <div class="searchBtn">
          <input type="submit" value="搜索" />
        </div>
        <input type="button" value="新增" class="base_btn" onClick="window.location.href='pxap-add.action'"/>
      </div>
      <div class="clear"></div>
</form>
   
<div class="listBox">
        <div class="listTitle">培训安排<span class="more"><a href="pxap-add.action">新增</a></span></div>
        <div class="list">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr>
              <td width="100">时间</td>
              <td width="200">地点</td>
              <td width="200">项目名称</td>
              <td>培训内容</td>
              <td width="50">状态</td>
              <td width="170">操作</td>
            </tr>
          </table>
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
          <c:if test="${!empty page.result}">
          <c:forEach items="${page.result }" var="trainPlan" varStatus="stat">
            <tr class="<c:if test="${stat.count%2==1}">colorGrey</c:if><c:if test="${stat.count%2==0}">colorwhite</c:if>">
              <td width="100" class="trainLeft"><fmt:formatDate value="${trainPlan.strartTime }" pattern="yyyy-MM-dd"/></td>
              <td width="200" class="trainContent">${trainPlan.trainAddr }</td>
              <td class="trainContent" width="200">${trainPlan.projectName }</td>
              <td class="trainContent">${trainPlan.trainAddr }</td>
              <td width="50" class="trainContent">${trainPlan.stateName }</td>
             <td class="trainFunction" width="170"><a href="trainPlanDetail.action?trainPlanId=${trainPlan.id }" class="detail">查看</a><a href="#" class="edit" onclick="toEdit('${trainPlan.id }','${trainPlan.state }')">编辑</a><a href="#" onClick="deleteConfirm('${trainPlan.id }','${trainPlan.state }')" class="delete">删除</a></td>
            </tr>
          </c:forEach>
          </c:if>
          </table>
        </div>
        
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