<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String base_root = request.getContextPath();
	Boolean myDataFiles = (Boolean)request.getAttribute("MYDATAFILES"); 
	String userId = (String)request.getAttribute("USERID");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查看培训安排</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/fancy-zoom-master/js/fancyzoom.min.js"></script>
<script type="text/javascript"> 
	$(document).ready(function() {
		$("#back").click(function(){
			history.go(-1);
	    });
		
   		$('div.photo a').fancyZoom({scaleImg: true, closeOnClick: true});
  	});
	function onMouseOverCallClick(id){
		document.getElementById(id).click();   
	}
	
	function onMouseOutCallClick(id){
		document.getElementById("zoom_close").click();   
	}
	
</script>
</head>
<body>

<div class="clear"></div>


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
                      <c:forEach items="${entity.trainPlanWorkType }" var="obj">
               			 ${obj.workType.typeName}
              		  </c:forEach> 
                      </td>
                      <td class="typeNameTd" width="110">项目名称</td>
                      <td class="memberAddTd" align="left" width="350">
                      ${entity.projectName }
                      </td>
                    </tr>
                                        
                    <tr class="whiteColor">
                      <td class="typeNameTd" width="110">培训名称</td>
                      <td class="memberAddTd" align="left" width="350">
                      ${entity.planName}
                      </td>
                      <td class="typeNameTd" width="110">总负责人</td>
                      <td class="memberAddTd" align="left" width="350">
                      ${entity.projectLeader }
                      </td>
                    </tr>
                    
                    <tr class="greyColor">
                      <td class="typeNameTd">培训地点</td>
                      <td colspan="3" align="left" class="memberAddTd">
                      ${entity.trainAddr }
                      </td>
                    </tr>                    
  
                    <tr class="whiteColor">
                      <td class="typeNameTd">培训说明</td>
                      <td align="left" colspan="3" class="memberAddTd">
                      ${entity.trainExplain }
                      </td>
                    </tr>
                    
                    <tr class="greyColor">
                      <td class="typeNameTd">开始时间</td>
                      <td class="memberAddTd" align="left">
                      <fmt:formatDate value="${entity.strartTime }" pattern="yyyy-MM-dd"/>
                      </td>
                      <td class="typeNameTd">结束时间</td>
                      <td class="memberAddTd" align="left">
                      <fmt:formatDate value="${entity.endTime }" pattern="yyyy-MM-dd"/>
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
                      <td class="typeNameTd" width="50"><span style="font-size:20px;">合格</span></td>
                      <td class="typeNameTd"><span style="font-size:20px;">评价</span></td>
                      <td class="typeNameTd" width="50"><span style="font-size:20px;">图片</span></td>
                    </tr>
                    
			<s:iterator id="trainPlanWorkTypeObj" value="entity.trainPlanWorkType">
	            <s:iterator id="trainPlanWorkTypeSubObj" value="#trainPlanWorkTypeObj.trainPlanWorkTypeSub">
		            <tr class="whiteColor">
		            	 <td colspan="6" class="typeNameTd" align="left">
                         <span style="font-size:20px; color:#000">
                         技能：${trainPlanWorkTypeSubObj.workTypeSub.subTypeName} &nbsp;&nbsp;&nbsp;
                         培训师：${trainPlanWorkTypeSubObj.trainer.user_name}
                         </span>
                         </td>
		             </tr>
		            <s:iterator id="trainResultDetailObj" value="#trainPlanWorkTypeSubObj.trainResultDetail">
                    <c:if test="${trainResultDetailObj.trainee.user_id == userId}">
			            <tr class="greyColor">
			              <td class="typeNameTd">${trainResultDetailObj.trainee.user_name }</td>
			              <td class="typeNameTd">
			              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			              </td>
			              <td class="typeNameTd">${trainResultDetailObj.trainResult }&nbsp;</td>
			              <td class="typeNameTd">${trainResultDetailObj.isQualified }&nbsp;</td>
			              <td class="typeNameTd">${trainResultDetailObj.evaluate }&nbsp;</td>
			              <td class="typeNameTd">
                          <div class="photo">
			              	<c:forEach items="${trainResultDetailObj.trainResultImages }" var="obj"> 
                                <a href="#${obj.id}" onMouseOut="onMouseOutCallClick('${obj.id}')" onMouseOver="onMouseOverCallClick('#${obj.id}')" id="#${obj.id}">${obj.imagesName }</a>
                                <div id="${obj.id}">
                              		<img src="<%=base_root%>${obj.imagesUrl}"/>
                                <p>${obj.imagesComment}</p>
                              </div>
                                <br>
			              	</c:forEach>
                           </div> 
			              </td>
			            </tr> 
                 </c:if>
	            </s:iterator>
	            </s:iterator>
            </s:iterator>
                </table>
                                    
            </td>
        </tr>
	</table>                  
                  
          </div>
          <div class="subBtnBox">
        	<input type="button" class="base_btn" name="back" id="back" value="返回" />
          </div>
        </div>
        <div class="conBottom"></div>
      </div>


</body>
</html>