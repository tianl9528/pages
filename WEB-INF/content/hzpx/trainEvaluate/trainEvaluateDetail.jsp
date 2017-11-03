<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String base_root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<title>培训评价详细</title>
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

function goBack(id){
		window.location="<%=base_root%>/trainPlan/trainPlan/trainEvaluateDetail-list.action?trainPlanId="+id;
}
</script>
</head>
<body>

<div class="listBox">
        <div class="listTitle">培训评价详细</div>
        <div class="list">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr>
              <td align="left">培训时间：<fmt:formatDate value="${entity.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.strartTime }" pattern="yyyy-MM-dd"/></td>
              <td width="250" align="left">地点：${entity.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.trainAddr }</td>
              <td width="" align="left">项目名称：${entity.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.projectName }</td>
            </tr>
            <tr>
              <td width="200" align="left">工作说明：${entity.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.trainExplain }</td>
              <td width="250" align="left">项目负责人：${entity.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.projectLeader }</td>
              <td width="" align="left">工作类型：${entity.trainPlanWorkTypeSub.trainPlanWorkType.workType.typeName}</td>
            </tr>  
          </table>
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
            <tr class="colorGrey">
              <td width="77" class="trainTime">姓名</td>
              <td width="76" class="trainAdd">技能等级</td>
              <td class="trainName">培训结果</td>
              <td width="280" class="trainCoach">评价</td>
              <td width="80" class="trainMember">图片</td>
            </tr>
         	<tr class="colorGrey">
           	 <td colspan="5" class="trainTime" align="left"><span style="font-weight: bold;color: #1E84C1;">${entity.trainPlanWorkTypeSub.workTypeSub.subTypeName} &nbsp;&nbsp;&nbsp;培训人员：${entity.trainPlanWorkTypeSub.trainer.user_name}</span></td>
            </tr>
            <tr class="colorGrey">
              <td width="77" class="trainTime">${entity.trainee.user_name }</td>
              <td width="76" class="trainAdd">
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              </td>
              <td class="trainName">${entity.trainResult }&nbsp;</td>
              <td width="280" class="trainCoach">${entity.evaluate }&nbsp;</td>
              <td width="300" class="trainMember">
	             <c:forEach items="${entity.trainResultImages }" var="obj">
	           			<a target="openFile" href="<%=base_root%>${obj.imagesUrl}">${obj.imagesName }</a>
	           			<br>	
	             </c:forEach> 
           	   </td>
             </tr> 
             <tr><td>&nbsp;</td></tr>
            <tr>
	           	<td colspan="5">
	           		<input type="button" value="返回" class="base_btn" onclick="goBack('${entity.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.id}')">
	           	</td>
            </tr> 			     
         </table>
        </div>
        <div class="page">
          <div class="pageBox"></div>
        </div>
      </div>


</body>
</html>