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
<title>培训结果录入</title>
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
		window.location="<%=base_root%>/trainPlan/trainPlan/trainPlanResultDetail-list.action?trainPlanId="+id;
}
</script>
</head>
<body>


<div class="conBox">
        <div class="conTitle">培训安排</div>
        <div class="conMiddle">
          <div>
            <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
            	<tr>
                  <td>
                <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                    
                    <tr class="greyColor">
                      <td class="typeNameTd" width="110">工作类型</td>
                      <td class="memberAddTd" align="left" width="350">
                      ${entity.trainPlanWorkTypeSub.trainPlanWorkType.workType.typeName}
                      </td>
                      <td class="typeNameTd" width="110">项目名称</td>
                      <td class="memberAddTd" align="left" width="350">
                      ${entity.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.projectName}
                      </td>
                    </tr>
                                        
                    <tr class="whiteColor">
                      <td class="typeNameTd" width="110">培训名称</td>
                      <td class="memberAddTd" align="left" width="350">
                      ${entity.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.projectName}
                      </td>
                      <td class="typeNameTd" width="110">总负责人</td>
                      <td class="memberAddTd" align="left" width="350">
                      ${entity.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.projectLeader}
                      </td>
                    </tr>
                    
                    <tr class="greyColor">
                      <td class="typeNameTd">培训地点</td>
                      <td colspan="3" align="left" class="memberAddTd">
                      ${entity.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.trainAddr}
                      </td>
                    </tr>                    
  
                    <tr class="whiteColor">
                      <td class="typeNameTd">培训说明</td>
                      <td align="left" colspan="3" class="memberAddTd">
                      ${entity.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.trainExplain}
                      </td>
                    </tr>
                    
                    <tr class="greyColor">
                      <td class="typeNameTd">开始时间</td>
                      <td class="memberAddTd" align="left">
                      <fmt:formatDate value="${entity.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.strartTime }" pattern="yyyy-MM-dd"/>
                      </td>
                      <td class="typeNameTd">结束时间</td>
                      <td class="memberAddTd" align="left">
                      <fmt:formatDate value="${entity.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.endTime }" pattern="yyyy-MM-dd"/>
                      </td>
                    </tr>
  
                  </table>
                                    
                  </td>
              </tr>
            </table>
                  
		<table cellpadding="0" cellspacing="13" border="0" class="selectTb">
             <tr>       
              <td>
              
                <table width="910" cellpadding="0" cellspacing="0" border="0" class="contentTB">
                
                    <tr class="whiteColor">
                      <td class="typeNameTd" width="80"><span style="font-size:20px;">姓名</span></td>
                      <td class="typeNameTd" width="100"><span style="font-size:20px;">技能等级</span></td>
                      <td class="typeNameTd" width="250"><span style="font-size:20px;">培训结果</span></td>
                      <td class="typeNameTd"><span style="font-size:20px;">评价</span></td>
                      <td class="typeNameTd" width="50"><span style="font-size:20px;">图片</span></td>
                    </tr>
                    
		            <tr class="greyColor">
		            	 <td colspan="5" class="typeNameTd" align="left">
                         <span style="font-weight: bold;color: #1E84C1;">
                         技能：${entity.trainPlanWorkTypeSub.workTypeSub.subTypeName} &nbsp;&nbsp;&nbsp;
                         培训师：${entity.trainPlanWorkTypeSub.trainer.user_name}
                         </span>
                         </td>
		             </tr>

			            <tr class="greyColor">
			              <td class="typeNameTd">${entity.trainee.user_name}</td>
			              <td class="typeNameTd">
			              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			              </td>
			              <td class="typeNameTd">${entity.trainResult }</td>
			              <td class="typeNameTd">${entity.evaluate }</td>
			              <td class="typeNameTd">
                          <c:forEach items="${entity.trainResultImages }" var="obj">
                                <a target="openFile" href="<%=base_root%>${obj.imagesUrl}">${obj.imagesName }</a>
                                <br>	
                         </c:forEach>
                          </td>
			            </tr> 
                    
                    
                </table>
                                    
            </td>
        </tr>
	</table>                  
                  
          </div>
          <div class="subBtnBox">
          
        <input type="button"  class="base_btn" value="返回" onclick="goBack('${entity.trainPlanWorkTypeSub.trainPlanWorkType.trainPlan.id}')"/>
        
          </div>
        </div>
        <div class="conBottom"></div>
      </div>

</body>
</html>