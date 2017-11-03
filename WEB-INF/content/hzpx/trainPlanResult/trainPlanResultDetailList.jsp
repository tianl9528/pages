<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="org.apache.commons.logging.Log"%>
<%@ page import="org.apache.commons.logging.LogFactory"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>培训结果详情</title>
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
function deleteConfirm(id){
	if(confirm("此操作将删除跟安排有关的所有信息，不可恢复！确定要删除吗？")){
		//trainPlan/trainPlan-delete.action?trainPlanId=${trainPlan.id }trainPlanDetail
		window.location="<%=request.getContextPath()%>/trainPlan/trainPlan-delete.action?trainPlanId="+id;
	}
}
</script>
</head>
<body>
<!-- 
<div class="searchBox">
        <div class="searchIcon"><img src="<%=request.getContextPath()%>/theme/images/bg_search_55.png" width="38" height="40" /></div>
        <div class="searchInput">
          <input name="searchInput" type="text" />
        </div>
        <div class="searchBtn">
          <input name="" type="button" value="搜索" />
        </div>
         <div>
          &nbsp;<input name="" type="button" value="新增" class="base_btn" />
        </div>
      </div>
      <div class="clear"></div>
  -->     
<div class="listBox">
        <div class="listTitle">培训结果详情</div>
        <div class="list">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr>
              <td width="88">时间</td>
              <td width="76">培训名称</td>
              <td>项目名称</td>
              <td width="118">参训人员</td>
              <td width="50">状态</td>
              <td width="120">操作</td>
            </tr>
          </table>
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
          <c:if test="${!empty page.result}">
          <c:forEach items="${page.result }" var="tpResultObj" varStatus="stat">
            <tr class="<c:if test="${stat.count%2==1}">colorGrey</c:if><c:if test="${stat.count%2==0}">colorwhite</c:if>">
              <td width="88" class="trainLeft"><fmt:formatDate value="${tpResultObj.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.strartTime }" pattern="yyyy-MM-dd"/></td>
              <td width="76" class="trainContent">${tpResultObj.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.planName }</td>
              <td class="trainContent">${tpResultObj.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.projectName }</td>
              <td width="118" class="trainContent">${tpResultObj.trainee.user_name }</td>
              <td width="50" class="trainContent">${tpResultObj.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.state }</td>
             <td class="trainFunction" width="120"><a href="trainPlan/trainPlanResult-detail.action?id=${tpResultObj.id }" class="detail">查看</a><a href="trainPlan/trainPlanResult-input.action?id=${tpResultObj.id }" class="edit">录入</a>
             <!-- <a href="#" class="delete">删除</a> --></td>
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