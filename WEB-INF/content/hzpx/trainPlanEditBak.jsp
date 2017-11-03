<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>培训安排编辑</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>

<script type="text/javascript">
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
/*提供给用户全选*/
  /*日期控件适用于.txt_select_date类样式文本框,有需要才用*/
$(document).ready(function() {
	  $("#txt_start_time" ).datepicker({ dateFormat: "yy-mm-dd",
										 changeYear: true,
										 yearRange: "1949:2099",
										 monthNames: ["1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"]});										   
});
$(document).ready(function() {
	  $("#txt_end_time" ).datepicker({ dateFormat: "yy-mm-dd",
										 changeYear: true,
										 yearRange: "1949:2099",
										 monthNames: ["1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"]});										   
});


function selectUser(obj,subId,userId,userName){
	var name=$("#txt_"+subId).val();
	var trainee=$("#trainee_"+subId).val();
	if(obj.className=="selectNormal"){
		$("#txt_"+subId).val(name+userName+";");
		$("#trainee_"+subId).val(trainee+userId+";");
		obj.className="selectPressed";
	}else{
		obj.className="selectNormal";
		var newName=name.replace(userName+";","");
		$("#txt_"+subId).val(newName);
		var newTrainee=trainee.replace(userId+";","");
		$("#trainee_"+subId).val(newTrainee);
	}

}

function selectTrainer(obj,subId,userId,userName,index){
	var idObj="#trainerDiv_"+index;
	if(obj.className=="selectNormal"){
		$("#txt_er_"+subId).val(userName);
		$("#trainer_"+subId).val(userId);
		$(idObj).find("input[type='button']").each(function(){
			this.className="selectNormal";
        });
		obj.className="selectPressed";
	}else{
		$("#txt_er_"+subId).val("");
		$("#trainer_"+subId).val("");
		obj.className="selectNormal";
	}

}

function changeDiv(index){
	$.each($("div[id^='div_']"), function(i,obj){      
		if(index==(i+1)){
			obj.style.display = "";
		}else{
			 obj.style.display = "none";
		}
	  });
	
	$.each($("tr[id^='tr_']"), function(i,obj){      
		if(index==(i+1)){
			obj.style.display = "";
		}else{
			 obj.style.display = "none";
		}
	  });
}
</script>
</head>
<body>


<div class="clear"></div>
<form action="trainPlanUpdate.action" id="" method="get">
<div class="conBox">
        <div class="conTitle">培训安排编辑</div>
        <div class="conMiddle">
          <div>
            <table cellpadding="0" cellspacing="1" border="0" class="selectTb">
              <tr>
              	<td class="titleTd" width="150">培训安排名称:<input type="hidden" name="trainPlanId" value="${entity.id }"></td>
              	<td class="contentTd" align="left"><input name="entity.planName" type="text" class="itemManagerInput" value="${entity.planName }"/></td>
              	 <td class="titleTd">项目名称:</td>
              	<td class="contentTd" align="left"><input name="entity.projectName" type="text" class="itemManagerInput" value="${entity.projectName }"/></td>
              </tr>
              <tr>
                <td class="titleTd">项目负责人：</td>
                <td class="contentTd" align="left"><input name="entity.projectLeader" type="text" class="itemManagerInput" value="${entity.projectLeader }"/></td>
                <td class="titleTd">培训地点：</td>
                <td  class="contentTd" align="left"><input name="entity.trainAddr" type="text" class="itemManagerInput" value="${entity.trainAddr }"/></td>
              </tr>
              <tr>
                <td class="titleTd">培训说明：</td>
                <td align="left" colspan="3"><textarea name="entity.trainExplain" style="width:90%" >${entity.trainExplain }</textarea></td>
              </tr>
              <tr>
                <td class="titleTd">开始时间：</td>
                <td class="contentTd" align="left">
				<input class="itemManagerInput_m" id="txt_start_time" name="entity.strartTime" value="<fmt:formatDate value="${entity.strartTime }" pattern="yyyy-MM-dd"/>"></td>
                <td class="titleTd">结束时间：</td>
                <td class="contentTd" align="left">
				<input class="itemManagerInput_m" id="txt_end_time" name="entity.endTime" value="<fmt:formatDate value="${entity.endTime }" pattern="yyyy-MM-dd"/>"></td>
              </tr>
              <tr>
                <td class="titleTd">工作类型：</td>
                <td class="contentTd" align="left"><select name="workTypeId" mSty="blueCircle">
                	<c:forEach items="${workTypeList }" var="obj1">
                    	<option value="${obj1.id }"
                    	 <c:forEach items="${entity.trainPlanWorkType }" var="obj2">
               				 <c:if test='${obj2.workType.typeName eq obj1.typeName}'>selected="selected"</c:if> 
             			 </c:forEach> 
                    	 >${obj1.typeName }</option>
                	</c:forEach>
                  </select></td>
              </tr>
              <tr>
                <td class="titleTd">参培人员：</td>
                <td ></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td colspan="4"><table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                <s:iterator id="trainPlanWorkTypeObj" value="entity.trainPlanWorkType">
                	<s:iterator id="trainPlanWorkTypeSubObj" value="#trainPlanWorkTypeObj.trainPlanWorkTypeSub" status="stat">
						<tr class="<c:if test='${stat.count%2==1}'>colorGrey</c:if><c:if test='${stat.count%2==0}'>colorwhite</c:if>">
	                      <td class="typeNameTd" style="width:200px">
	                      	<input type="hidden" name="subTypeId" value="${trainPlanWorkTypeSubObj.workTypeSub.id }">${trainPlanWorkTypeSubObj.workTypeSub.subTypeName }
	                      </td>
	                      <td class="memberAddTd">
	                      	<table>
								<tr>
									<td align="left"><b>参培人员：</b></td>
								</tr>
								<tr>
									<td><input id="txt_${trainPlanWorkTypeSubObj.workTypeSub.id}" type="text"
																class="memberAddIpnut" readonly="readonly" value="${trainPlanWorkTypeSubObj.traineeNames }"
																onclick="changeDiv('${stat.count}')" /> <input
																type="hidden" id="trainee_${trainPlanWorkTypeSubObj.workTypeSub.id}"
																name="traineeId" value="${trainPlanWorkTypeSubObj.traineeIds }">
																<div class="menberBox"
																	<c:if test="${stat.count!=1}">style="display:none"</c:if>
																	id="div_${trainPlanWorkTypeSubObj.workTypeSub.id}">
																	<s:iterator id="userObj" value="userList">
																			<c:set var="ids" value="${trainPlanWorkTypeSubObj.traineeIds }"></c:set>
																			<c:set var="userId" value="${userObj.user_id }"></c:set>
																			<span class="memberName">${userObj.user_name }<input
																			onclick="selectUser(this,'${trainPlanWorkTypeSubObj.workTypeSub.id}','${userObj.user_id }','${userObj.user_name }');"
																			type="button" value=" " 
																				class="selectNormal"
																			/>
																			</span>	
																	</s:iterator>
																</div></td>
								</tr>
					
								<tr <c:if test="${stat.count!=1}">style="display:none"</c:if>
																	id="tr_${trainPlanWorkTypeSubObj.workTypeSub.id}">
									<td >
									<div align="left">
									<b>培训人员：</b><input id="txt_er_${trainPlanWorkTypeSubObj.workTypeSub.id}" type="text"
																class="itemManagerInput_m" readonly="readonly" value="${trainPlanWorkTypeSubObj.trainer.user_name}"/> 
									<input type="hidden" id="trainer_${trainPlanWorkTypeSubObj.workTypeSub.id}" name="trainerId" value="${trainPlanWorkTypeSubObj.trainer.user_id}">
									</div>
									<div class="menberBox" id="trainerDiv_${stat.count}">
										<c:forEach items="${userList }" var="userObj"
											varStatus="uStat">
											<span class="memberName"  >${userObj.user_name }<input
												onclick="selectTrainer(this,'${trainPlanWorkTypeSubObj.workTypeSub.id}','${userObj.user_id }','${userObj.user_name }','${stat.count}');"
												type="button" value=" " class="selectNormal" /></span>
										</c:forEach>
									</div>
									</td>
								</tr>

								</table>

	                      </td>
	                    </tr>                		
                	</s:iterator>
                </s:iterator>
  
            </table>
            	</td>
              </tr>
            
         </table>
          </div>
          <div class="subBtnBox"><input name="" type="submit" value="全部提交" class="submitBtn" /></div>
        </div>
        <div class="conBottom"></div>
      </div>

</form>
</body>
</html>