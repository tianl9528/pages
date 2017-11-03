<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>培训安排录入</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
<link href="<%=request.getContextPath()%>/theme/jquery-ui-1.8.20.custom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery-ui-1.8.20.custom.min.js"></script>


<style type="text/css">

.colorGrey{
	background-color: #eeeeee;
	border-left-width: 1px;
	border-left-color: #cccdcf;
	border-left-style: solid;
	border-bottom-width: 1px;
	border-bottom-color: #cccdcf;
	border-bottom-style: solid;
	font-family: "微软雅黑";
	font-size: 16px;
}
.colorwhite{
	background-color: #FFF;
	border-bottom-width: 1px;
	border-bottom-color: #cccdcf;
	border-bottom-style: solid;
	font-family: "微软雅黑";
	font-size: 16px;
}
.trainLeft {
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-right-style: solid;
	border-bottom-style: solid;
	border-right-color: #cccdcf;
	border-bottom-color: #cccdcf;
}
.trainContent {
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-right-style: solid;
	border-bottom-style: solid;
	border-right-color: #cccdcf;
	border-bottom-color: #cccdcf;
}
</style>

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

<%--选择作业人员--%>
function selectUser(obj,trainerId,subId,subName,userId,userName){
	if("undefined"==typeof($('#tbltr_'+trainerId+'_'+subId).attr('class'))){
		var hiddenStr='';
		hiddenStr+="<input type='hidden' id='trainerId_"+trainerId+"_"+subId+"' name='trainerId' value='"+trainerId+"'>";
		hiddenStr+="<input type='hidden' id='subTypeId_"+trainerId+"_"+subId+"' name='subTypeId' value='"+subId+"'>";
		hiddenStr+="<input type='hidden' id='traineeId_"+trainerId+"_"+subId+"' name='traineeId' value='"+userId+";'>";
		var str='';
	    str+="<tr class='whiteColor' id='tbltr_" + trainerId+"_"+subId+"'>";
	    str+="<td class='typeNameTd2'>"+subName+hiddenStr+"</td>";
	    str+="<td class='memberAddTd2'>"+userName+";</td>";
		str+='</tr>';
		jQuery("#addRow_"+trainerId).append(str);
		
		$("#inpt_"+trainerId+'_'+subId).val(userName+";");
	}else{
		if(obj.className=="selectNormal"){
			var subNameStr="";
			var traineeStr="";
			$('#tbltr_'+trainerId+'_'+subId).find("td").each(function(i){
				if("memberAddTd2"==$(this).attr('class')){
					$(this).text($(this).text()+userName+";");
				}
			});

			$("#inpt_"+trainerId+'_'+subId).val($("#inpt_"+trainerId+'_'+subId).val()+userName+";");
			$("#traineeId_"+trainerId+'_'+subId).val($("#traineeId_"+trainerId+'_'+subId).val()+userId+";");
		}else{
			$('#tbltr_'+trainerId+'_'+subId).find("td").each(function(i){
				if("memberAddTd2"==$(this).attr('class')){			
					$(this).text($(this).text().replace(userName+";",""));
				}
			});
			$("#inpt_"+trainerId+'_'+subId).val($("#inpt_"+trainerId+'_'+subId).val().replace(userName+";",""));
			$("#traineeId_"+trainerId+'_'+subId).val($("#traineeId_"+trainerId+'_'+subId).val().replace(userId+";",""));
		}
	}
	if(""==$("#inpt_"+trainerId+'_'+subId).val()){
		$('#tbltr_'+trainerId+'_'+subId).remove();
	}
	if(obj.className=="selectNormal"){
		obj.className="selectPressed";
	}else{
		obj.className="selectNormal";
	}
}

function selectTrainer(obj,subId,userId,userName,index){
	var name=$("#txt_er_"+subId).val();
	var id=$("#subTypeId_"+subId).val();
	var idObj="#trainerDiv_"+index;
	if(obj.className=="selectNormal"){
		$("#txt_er_"+subId).val(name+userName+";");
		$("#subTypeId_"+subId).val(id+userId+";");
		obj.className="selectPressed";
//		$(idObj).find("input[type='button']").each(function(){
//			this.className="selectNormal";
 //       });
		obj.className="selectPressed";
	}else{
//		$("#txt_er_"+subId).val("技能：");
//		$("#trainer_"+subId).val("");
		obj.className="selectNormal";
		var newName=name.replace(userName+";","");
		$("#txt_er_"+subId).val(newName);
		var newTrainer=id.replace(userId+";","");
		$("#subTypeId_"+subId).val(newTrainer);
	}

}

<%--弹出选择作业人员窗口--%>
function changeDiv(index,id){
	  toShow(id);
}

function changeType(){
	document.getElementById("myAction").action="pxap-add.action";
	document.getElementById("myAction").submit();
}
<%--页面加载完执行--%>
window.onload = function(){
	$.each($("input[id^='traineeId_']"), function(i,obj){  
		var strs= new Array(); //定义一数组
		strs=obj.value.split(";");
		var s=obj.id;
		var idStr=s.replace("traineeId_","btn_");
		for(var i=0;i<strs.length;i++){
			if(""!=strs[i]){
				document.getElementById(idStr+"_"+strs[i]).className="selectPressed";
			}
		}
	  });
}

function save(){
	if(checkInput("projectName","请填写项目名称")){
		return false;
	}else if(checkInput("planName","请填写培训名称")){
		return false;
	}else if(checkInput("projectLeader","请填写总负责人")){
		return false;
	}else if(checkInput("trainAddr","请填写培训地点")){
		return false;
	}else if(checkInput("trainExplain","请填写培训说明")){
		return false;
	}else if(checkInput("txt_start_time","请选择开始时间")){
		return false;
	}else if(checkInput("txt_end_time","请选择结束时间")){
		return false;
	}else {
		var flag=1;
	<%--	
		$.each($("input[id^='trainee_']"), function(i,obj){      
			if(""!=obj.value){
				if($("#"+obj.id.replace("trainee_","subTypeId_")).val()==""){
					alert("请选择技能");
					$("#"+obj.id.replace("trainee_","txt_ee_")).click();
					flag=0;
					return false;
				}
			}
		  });
		--%>
		if(flag==1){
			$("#myAction").submit();
		}
	}
}
//id为输入框的id，txt为要提示的信息
function checkInput(id,txt){
	if(""==$("#"+id).val()){
		alert(txt);
		$("#"+id).focus();
		return true;
	}else{
		return false;
	}
}

function toShow(id){
//	$("#"+id).dialog();
	$("#"+id).dialog({
		 resizable: true,
		 height: 440,
		 width: 800,
		 modal: true,
		 buttons: {
		 "确定": function () {
			 $(this).dialog("close");
		 }
		 }
		 });

}

function openDiv(id){
	$("#trainerDiv_"+id).show();
	var tblwidth=$('#tbl_'+id).width()+5;
	$("#trainerDiv_"+id).dialog({
		 resizable: true,
		 minWidth:500,
		 height: 540,
		 modal: true,
		 buttons: {
		 "确定": function () {
			 $(this).dialog("close");
		 }
		 }
		 });
}

</script>
</head>
<body>

<div class="clear"></div>

<form action="trainPlanUpdate.action" id="myAction" method="post">
<div class="conBox">
        <div class="conTitle">录入新培训安排</div>
        <div class="conMiddle">
          <div>
            <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
            	<tr>
                  <td>
                <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                    
                    <tr class="greyColor">
                      <td class="typeNameTd" width="110">工作类型</td>
                      <td class="memberAddTd" align="left" width="350">
               			<input type="hidden" name="trainPlanId" value="${entity.id }">
                    	 <c:forEach items="${entity.trainPlanWorkType }" var="obj2">
               				 ${obj2.workType.typeName}
               				 <input name="workTypeId" type="hidden" value="${obj2.workType.id}">
             			 </c:forEach>  
                      </td>
                      <td class="typeNameTd" width="110">项目名称</td>
                      <td class="memberAddTd" align="left" width="350">
                      <input name="entity.projectName" id="projectName" type="text" class="itemManagerInput" value="${entity.projectName }"/>
                      </td>
                    </tr>
                                        
                    <tr class="whiteColor">
                      <td class="typeNameTd" width="110">培训名称</td>
                      <td class="memberAddTd" align="left" width="350">
                      <input name="entity.planName" id="planName" type="text" class="itemManagerInput" value="${entity.planName }"/>
                      </td>
                      <td class="typeNameTd" width="110">总负责人</td>
                      <td class="memberAddTd" align="left" width="350">
                      <input name="entity.projectLeader" id="projectLeader" type="text" class="itemManagerInput" value="${entity.projectLeader }"/>
                      </td>
                    </tr>
                    
                    <tr class="greyColor">
                      <td class="typeNameTd">培训地点</td>
                      <td colspan="3" align="left" class="memberAddTd">
                      <textarea name="entity.trainAddr" id="trainAddr" rows="3" style="width:90%">${entity.trainAddr }</textarea>
                      </td>
                    </tr>                    
  
                    <tr class="whiteColor">
                      <td class="typeNameTd">培训说明</td>
                      <td align="left" colspan="3" class="memberAddTd"><textarea name="entity.trainExplain" id="trainExplain" rows="5" style="width:90%">${entity.trainExplain }</textarea></td>
                    </tr>
                    
                    <tr class="greyColor">
                      <td class="typeNameTd">开始时间：</td>
                      <td class="memberAddTd" align="left">
                      <input class="itemManagerInput_m" value="<fmt:formatDate value="${entity.strartTime }" pattern="yyyy-MM-dd"/>" id="txt_start_time" name="entity.strartTime" style="cursor:pointer"></td>
                      <td class="typeNameTd">结束时间：</td>
                      <td class="memberAddTd" align="left">
                      <input class="itemManagerInput_m" id="txt_end_time" name="entity.endTime" value="<fmt:formatDate value="${entity.endTime }" pattern="yyyy-MM-dd"/>" style="cursor:pointer"></td>
                    </tr>
  
                  </table>
                                    
                  </td>
              </tr>
            </table>
                  
<table cellpadding="0" cellspacing="13" border="0" class="selectTb">
				<tr>
                      <td>
                <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                    
                    <tr class="whiteColor">
                      <td colspan="2" class="typeNameTd"><span style="font-size:20px;">技术人员</span></td>
                    </tr>
                                        
                    <tr class="greyColor">
                      <td class="typeNameTd" width="180">培训师</td>
                      <td align="left" class="memberAddTd" width="800">&nbsp;</td>
                    </tr>
 <!--  
                <s:iterator id="trainPlanWorkTypeObj" value="entity.trainPlanWorkType">
                <s:iterator id="trainPlanWorkTypeObjTrainers" value="#trainPlanWorkTypeObj.newTrainPlanWorkTypeSub">
                <tr><td>${trainPlanWorkTypeObjTrainers.traineeNames }</td></tr>
                </s:iterator>
                
                	<s:iterator id="trainPlanWorkTypeSubObj" value="#trainPlanWorkTypeObj.trainPlanWorkTypeSub" status="stat">
	                    <tr class="whiteColor">
	                      <td class="typeNameTd">
	                      	<input type="hidden" name="subTypeId" value="${trainPlanWorkTypeSubObj.workTypeSub.id }">${trainPlanWorkTypeSubObj.workTypeSub.subTypeName }
	                      </td>
                          <td align="left" class="memberAddTd">
                          
                          <input id="txt_ee_${trainPlanWorkTypeSubObj.workTypeSub.id}" type="text" class="memberAddIpnut" style="cursor:pointer" readonly="readonly" value="技术人员：${trainPlanWorkTypeSubObj.traineeNames }" onclick="changeDiv('${stat.count}')" /> 
                          <input type="hidden" id="trainee_${trainPlanWorkTypeSubObj.workTypeSub.id}" name="traineeId" value="${trainPlanWorkTypeSubObj.traineeIds }">
                          
                          <table style="display:none;width:100%" class="menberBox" id="div_${trainPlanWorkTypeSubObj.workTypeSub.id}">
                          	<tr>
                            	<td>
                                    <c:forEach items="${traineeList }" var="user" varStatus="uStat">
                                        <span class="memberName">
                                        	${user.user_name }
                                            <input onclick="selectUser(this,'${trainPlanWorkTypeSubObj.workTypeSub.id}','${user.user_id }','${user.user_name }');" type="button" value=" " style="cursor:pointer"
                                    		<c:if test="${fn:contains(trainPlanWorkTypeSubObj.traineeIds,user.user_id)}">class="selectPressed"</c:if>
                                    		<c:if test="${!fn:contains(trainPlanWorkTypeSubObj.traineeIds,user.user_id)}">class="selectNormal"</c:if>
                                             />
                                        </span>
                                    </c:forEach>
                            	</td>
                            </tr>
						  </table>

							<br>
                            <table style="display:none;width:100%;" id="tr_${trainPlanWorkTypeSubObj.workTypeSub.id}">
                            	<tr>
                                	<td>
                                        <div align="left">
                                        	<span class="memberName">
                                        		<input id="txt_er_${trainPlanWorkTypeSubObj.workTypeSub.id}" type="text" class="memberAddIpnut" style="cursor:pointer" readonly="readonly" value="培训师：${trainPlanWorkTypeSubObj.trainer.user_name}"/> 
                                        	</span>
                                        	<input type="hidden" id="trainer_${trainPlanWorkTypeSubObj.workTypeSub.id}" name="trainerId" value="${trainPlanWorkTypeSubObj.trainer.user_id}">
                                        </div>
                                        
                                        <div class="menberBox" id="trainerDiv_${stat.count}">
                                            <c:forEach items="${trainerList }" var="user"
                                                varStatus="uStat">
                                                <span class="memberName">${user.user_name }
                                                <input onclick="selectTrainer(this,'${trainPlanWorkTypeSubObj.workTypeSub.id}','${user.user_id }','${user.user_name }','${stat.count}');" type="button" value=" "
                                                <c:if test="${trainPlanWorkTypeSubObj.trainer.user_id eq user.user_id }"> class="selectPressed" </c:if>
                                                <c:if test="${trainPlanWorkTypeSubObj.trainer.user_id ne user.user_id }"> class="selectNormal" </c:if>
                                                  />
                                                </span>
                                            </c:forEach>
                                        </div>
                            		</td>
                            	</tr>
                            </table>
                        </td>
                     </tr>               		
                	</s:iterator>
                </s:iterator>
              -->
              <!-- 
                <c:if test="${!empty trainerList }">
                	<s:iterator id="trainerObj" value="trainerList">
	                    <tr class="whiteColor">
	                      <td class="typeNameTd">
	                      	<input type="hidden" name="trainerId" value="${trainerObj.user_id }">${trainerObj.user_name }
	                      </td>
                          <td align="left" class="memberAddTd">
                          <input id="txt_ee_${trainerObj.user_id}" type="text" class="memberAddIpnut" style="cursor:pointer" readonly="readonly"
                          <s:if test="trainerIds.contains(#trainerObj.user_id)">
                                <s:iterator id="trainPlanWorkTypeSubSetObj" value="trainPlanWorkTypeSubSet">
                                    <c:if test="${trainPlanWorkTypeSubSetObj.trainer.user_id eq trainerObj.user_id }">
									value="作业人员：${trainPlanWorkTypeSubSetObj.traineeNames}"
									</c:if>
								</s:iterator>
                          </s:if>
                          <s:else>
                          		value="作业人员："
                          </s:else>
                            onClick="changeDiv('${trainerObj.user_id}')" /> 
                            
                          <input type="hidden" id="trainee_${trainerObj.user_id}" name="traineeId"
                           <c:choose>
                           		<c:when test="${fn:contains(trainerIds,trainerObj.user_id)}" >
                                <s:iterator id="trainPlanWorkTypeSubSetObj" value="trainPlanWorkTypeSubSet">
                                    <c:if test="${trainPlanWorkTypeSubSetObj.trainer.user_id eq trainerObj.user_id }">
									value="${trainPlanWorkTypeSubSetObj.traineeIds}"
									</c:if>
								</s:iterator>
                                </c:when> 
						  </c:choose>                          
                           >
                          <div id="dialog_${trainerObj.user_id}" style="display:none;width:100%" title="请选择作业人员">
                          <table class="menberBox">
                          	<tr>
                            	<td>
                                    <c:forEach items="${traineeList }" var="user" varStatus="uStat">
                                        <span class="memberName">
                                        	${user.user_name }                                        	
                                            <input onClick="selectUser(this,'${trainerObj.user_id}','${user.user_id }','${user.user_name }');" type="button" value=" "
	                                        	<s:if test="trainerIds.contains(#trainerObj.user_id)">
	                                             	<s:iterator id="trainPlanWorkTypeSubSetObj" value="trainPlanWorkTypeSubSet">
	                                             		<c:if test="${trainPlanWorkTypeSubSetObj.trainer.user_id eq trainerObj.user_id }">
															<c:if test="${fn:contains(trainPlanWorkTypeSubSetObj.traineeIds,user.user_id) and fn:contains(trainPlanWorkTypeSubSetObj.traineeNames,user.user_name)}">class="selectPressed"</c:if>
	                                    					<c:if test="${!fn:contains(trainPlanWorkTypeSubSetObj.traineeIds,user.user_id) or !fn:contains(trainPlanWorkTypeSubSetObj.traineeNames,user.user_name)}">class="selectNormal"</c:if>
														</c:if>
													</s:iterator>
	                                        	</s:if>
	                                        	<s:else>
	                                             	class="selectNormal"
	                                        	</s:else>

                                             style="cursor:pointer"/>
                                        </span>
                                    </c:forEach>
                            	</td>
                            </tr>
						  </table>
						  </div>
							<br>
                            <table id="tr_${trainerObj.user_id}">
                            	<tr>
                                	<td>
                                        <div align="left">
                                        	<span class="memberName">
                                        		<input id="txt_er_${trainerObj.user_id}" type="text" class="memberAddIpnut" style="cursor:pointer" readonly="readonly"
						                         <s:if test="trainerIds.contains(#trainerObj.user_id)">
						                                <s:iterator id="trainPlanWorkTypeSubSetObj" value="trainPlanWorkTypeSubSet">
						                                    <c:if test="${trainPlanWorkTypeSubSetObj.trainer.user_id eq trainerObj.user_id }">
															value="技能：${trainPlanWorkTypeSubSetObj.workTypeSubNames}"
															</c:if>
														</s:iterator>
						                         </s:if>
						                         <s:else>
						                                    value="技能："
						                         </s:else>
                                        		  onclick="openDiv('trainerDiv_${trainerObj.user_id}');"/> 
                                        	</span>
                                        	<input type="hidden" id="subTypeId_${trainerObj.user_id}" name="subTypeId" 
					                         <c:choose>
					                           		<c:when test="${fn:contains(trainerIds,trainerObj.user_id)}" >
					                                <s:iterator id="trainPlanWorkTypeSubSetObj" value="trainPlanWorkTypeSubSet">
					                                    <c:if test="${trainPlanWorkTypeSubSetObj.trainer.user_id eq trainerObj.user_id }">
														value="${trainPlanWorkTypeSubSetObj.workTypeSubIds}"
														</c:if>
													</s:iterator>
					                                </c:when> 
											  </c:choose>
                                        	>
                                        </div>
                                        
                                        <div class="menberBox" id="trainerDiv_${trainerObj.user_id}" title="请选择技能" style="display:none;">
                                        <table align="center">
                                            <c:forEach items="${workTypeSubList }" var="workTypeSubObj"
                                                varStatus="uStat">
                                                <tr><td nowrap="nowrap">
                                                <span class="memberName2">${workTypeSubObj.subTypeName }
                                                <input onClick="selectTrainer(this,'${trainerObj.user_id}','${workTypeSubObj.id }','${workTypeSubObj.subTypeName }','${trainerObj.user_id}');" type="button" value=" "
		               								<s:if test="trainerIds.contains(#trainerObj.user_id)">
			                                             	<s:iterator id="trainPlanWorkTypeSubSetObj" value="trainPlanWorkTypeSubSet">
			                                             	<c:if test="${trainPlanWorkTypeSubSetObj.trainer.user_id eq trainerObj.user_id }">
																	<c:if test="${fn:contains(trainPlanWorkTypeSubSetObj.workTypeSubNames,workTypeSubObj.subTypeName) and fn:contains(trainPlanWorkTypeSubSetObj.workTypeSubIds,workTypeSubObj.id)}">class="selectPressed"</c:if>
			                                    					<c:if test="${!fn:contains(trainPlanWorkTypeSubSetObj.workTypeSubNames,workTypeSubObj.subTypeName) or !fn:contains(trainPlanWorkTypeSubSetObj.workTypeSubIds,workTypeSubObj.id)}">class="selectNormal"</c:if>
																</c:if>
															</s:iterator>
		               								</s:if>
		               								<s:else>
			                                             	class="selectNormal"
		               								</s:else>
                                                  />
                                                </span>
                                                </td>
                                                <td>
                                                </td>
                                                </tr>
                                            </c:forEach>
                                        </table>
                                        </div>
                            		</td>
                            	</tr>
                            </table>
                        </td>
                     </tr>
                     </s:iterator>
                </c:if>                  

 -->
 
                <c:if test="${!empty trainerList }">
                	<s:iterator id="trainerObj" value="trainerList" status="stat">
	                    <tr class="whiteColor">
	                      <td class="typeNameTd">
	                      	${trainerObj.user_name }
	                      </td>
                          <td align="left" class="memberAddTd" colspan="2">
                         
                          	<table cellpadding="0" cellspacing="0" border="0"  width="100%">
                          		<tr class="whiteColor">
                          			<td class="typeNameTd" style="border-right:1px;border-right-style:solid;border-color: #CDCDCD;" width="297">技能</td>
                          			<td class="typeNameTd" width="503">作业人员</td>
                          		</tr>
                          		<tbody id="addRow_${trainerObj.user_id }">
                          		<s:if test="trainerIds.contains(#trainerObj.user_id)">
                                <s:iterator id="trainPlanWorkTypeSubSetObj" value="trainPlanWorkTypeSubList" >
                                    <c:if test="${trainPlanWorkTypeSubSetObj.trainer.user_id eq trainerObj.user_id }">
										<tr class='whiteColor' id="tbltr_${trainPlanWorkTypeSubSetObj.trainer.user_id}_${trainPlanWorkTypeSubSetObj.workTypeSub.id}">
											<td class='typeNameTd2'>${trainPlanWorkTypeSubSetObj.workTypeSub.subTypeName}<input type='hidden' id="trainerId_${trainPlanWorkTypeSubSetObj.trainer.user_id}_${trainPlanWorkTypeSubSetObj.workTypeSub.id}" name='trainerId' value="${trainPlanWorkTypeSubSetObj.trainer.user_id}"><input type='hidden' id="subTypeId_${trainPlanWorkTypeSubSetObj.trainer.user_id}_${trainPlanWorkTypeSubSetObj.workTypeSub.id}" name='subTypeId' value="${trainPlanWorkTypeSubSetObj.workTypeSub.id}"><input type='hidden' id="traineeId_${trainPlanWorkTypeSubSetObj.trainer.user_id}_${trainPlanWorkTypeSubSetObj.workTypeSub.id}" name='traineeId' value="${trainPlanWorkTypeSubSetObj.traineeIds}"></td>
											<td class='memberAddTd2'>${trainPlanWorkTypeSubSetObj.traineeNames}</td>
										</tr>
									</c:if>
								</s:iterator>
                          </s:if>
                          		</tbody>
                          	</table> 
							<br>
                            <table style="width:100%; " id="tr_${trainerObj.user_id}">
                            	<tr>
                                	<td>
                                        <div align="left">
                                        	<input value="选择" type="button" class="base_btn"  onclick="openDiv('${trainerObj.user_id}');">
                                        </div>
                                        <div id="trainerDiv_${trainerObj.user_id}" title="请选择技能" style="display:none;width:100%;">
				                          <table id="tbl_${stat.count}" align="center" cellpadding="0" cellspacing="0" border="0">
				                          	<tr class="colorGrey">
				                          		<td align="center" nowrap="nowrap" class="trainLeft">技能</td><td align="center" class="trainLeft">作业人员</td>
				                          	</tr>
                                            <s:iterator value="workTypeSubList" id="workTypeSubObj"
                                                status="uStat">
                                                <tr class="colorGrey">
                                                <td nowrap="nowrap" class="trainContent">${workTypeSubObj.subTypeName }
                                                </td>
                                                <td class="trainLeft">
                                                	<input type="text" id="inpt_${trainerObj.user_id}_${workTypeSubObj.id }" readonly="readonly"
					                          		<s:if test="trainerIds.contains(#trainerObj.user_id)">
					                                <s:iterator id="trainPlanWorkTypeSubSetObj" value="trainPlanWorkTypeSubList" >
					                                    <c:if test="${trainPlanWorkTypeSubSetObj.workTypeSub.id eq workTypeSubObj.id and trainPlanWorkTypeSubSetObj.trainer.user_id eq trainerObj.user_id }">
					                                    value="${trainPlanWorkTypeSubSetObj.traineeNames}"
														</c:if>
													</s:iterator>
													</s:if> 		
                                                	>
                                                	<input type="button" value="..." onClick="changeDiv('${stat.count}','dialog_${trainerObj.user_id}_${workTypeSubObj.id }')">
							                          <div id="dialog_${trainerObj.user_id}_${workTypeSubObj.id }" style="display:none;width:100%" title="请选择作业人员">
							                          <table class="menberBox">
							                          	<tr>
							                            	<td>
							                                    <c:forEach items="${traineeList }" var="user" varStatus="uStat">
							                                        <span class="memberName">
							                                        	${user.user_name }
							                                            <input id="btn_${trainerObj.user_id}_${workTypeSubObj.id }_${user.user_id }" onClick="selectUser(this,'${trainerObj.user_id}','${workTypeSubObj.id }','${workTypeSubObj.subTypeName }','${user.user_id }','${user.user_name }');" type="button" value=" "
												                           class="selectNormal"
							                                              style="cursor:pointer"/>
							                                        </span>
							                                    </c:forEach>
							                            	</td>
							                            </tr>
													  </table>
													  </div>
                                                </td>
                                                </tr>
                                            </s:iterator>
										  </table>
                                        </div>
                            		</td>
                            	</tr>
                            </table>
                        </td>
                     </tr>
                     </s:iterator>
                </c:if>  

    
                  </table>
                  </td>
              </tr>
            </table>                  
                  
          </div>
          <div class="subBtnBox">
          	<input type="button" class="base_btn" onclick="save()" value="提交" />
        	<input type="button"  class="base_btn" value="返回" onclick="window.location.href='trainPlan/trainPlan-list.action'"/>
          </div>
        </div>
        <div class="conBottom"></div>
      </div>

</form>
</body>
</html>