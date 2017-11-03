<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String base_root = request.getContextPath();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查看培训安排</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mergecell.js"></script>
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


function initTable(){
/* 	
	var tbodyObj = document.getElementById("tb");
	var tbodyRowsCount = tbodyObj.rows.length;
	var y=1;
	var rowCount=1;
	for (var i= 0; i <tbodyRowsCount; i++) {
		if(y<tbodyRowsCount){
			var cell=tbodyObj.rows[i].cells[0];
			var cell2=tbodyObj.rows[y].cells[0];
			if(cell.innerText==cell2.innerText){
				alert(i+"相等"+y);
				
			}else{
				alert(i+"不相等"+y);
			}
			y++;
		}
	}
	 */
	$('#tb').mergeCell({ 
		cols: [0, 0]
	});
} 
window.onload = function(){
	initTable();
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
              
                <table id="tb" width="910" cellpadding="0" cellspacing="0" border="0" class="contentTB">
                
                    <tr class="whiteColor">
                      <td class="typeNameTd" width="80"><span style="font-size:20px;">作业人员</span></td>
                      <td class="typeNameTd" width="100"><span style="font-size:20px;">培训师</span></td>
                      <td class="typeNameTd" width="250"><span style="font-size:20px;">技能</span></td>
                      <td class="typeNameTd" width="50"><span style="font-size:20px;">合格</span></td>
                      <td class="typeNameTd"><span style="font-size:20px;">评价</span></td>
                      <td class="typeNameTd" width="50"><span style="font-size:20px;">图片</span></td>
                    </tr>
                     
            <s:iterator id="trainResultDetailObj" value="trainResultDetailList">
				<tr class="greyColor">
			    	<td class="typeNameTd">${trainResultDetailObj.trainee.user_name }<br>
			        	<img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			            <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			            <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			            <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			            <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
                    </td>
			        <td class="memberAddTd">${trainResultDetailObj.trainPlanWorkTypeSub.trainer.user_name}</td>
			        <td class="memberAddTd">${trainResultDetailObj.trainPlanWorkTypeSub.workTypeSub.subTypeName}&nbsp;</td>
			        <td class="memberAddTd">${trainResultDetailObj.isQualified }&nbsp;</td>
			        <td class="memberAddTd">${trainResultDetailObj.evaluate }&nbsp;</td>
			        <td class="memberAddTd">
			         
			        </td>
			    </tr> 
            </s:iterator>            
        </table>         
       </td>
        </tr>
	</table>                  
                  
          </div>
          <div class="subBtnBox">
        	<input type="button"  class="base_btn" value="返回" onClick="window.location.href='trainPlan/trainPlan-list.action'"/>
          </div>
        </div>
        <div class="conBottom"></div>
      </div>


</body>
</html>