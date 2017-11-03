<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>培训安排录入</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script><%-- 
<link href="<%=request.getContextPath()%>/theme/jquery-ui-1.8.20.custom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery-ui-1.8.20.custom.min.js"></script> --%>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/jquery_layer/layer.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/zDialog/zDialog.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/zDialog/zDrag.js"></script>

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
.ui-widget-header { border: 1px solid #aaaaaa; background: #cccccc url(images/ui-bg_highlight-soft_75_cccccc_1x100.png) 50% 50% repeat-x; color: #222222; font-weight: bold; }
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

function changeDiv(index,id){
	  toShow(id);
}

function changeType(){
	document.getElementById("myAction").action="pxap-add.action";
	document.getElementById("myAction").submit();
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
/* 
$.get("http://localhost:8892/hzpx/app/accesscontrol/select/select_user.jsp", {}, function(html, textStatus){
	
	$(html).dialog({
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
	
});
 */

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
/* 	
	$("#trainerDiv_"+id).show();
	var tblwidth=$('#tbl_'+id).width()+5;
	$("#trainerDiv_"+id).dialog({
		 resizable: true,
		 minWidth:750,
		 height: 540,
		 modal: true,
		 buttons: {
		 "确定": function () {
			 $(this).dialog("close");
		 }
		 }
		 });
	 */
	//$('#dialog, div, button').css({'color':'red'});
<%-- 	
	$("#showUserId").load('<%=request.getContextPath()%>/app/accesscontrol/select/select_user.jsp');
	$("#showUserId").dialog({
		 resizable: true,
		 minWidth:750,
		 height: 540,
		 modal: true,
		 buttons: {
		 "确定": function () {
			 $(this).dialog("close");
		 }
		 }
		 });
	 --%>
<%-- 	
	$.get('<%=request.getContextPath()%>/app/accesscontrol/select/selectUser_con.jsp',function(data){ //初始將a.html include div#iframe
		$("#showUserId").html(data);
		}); 
 --%>
/*  
 $.layer({
		area : ['auto','auto'],
		dialog : {msg:'白菜级别前端攻城师贤心',type : 8}	
	});
  */
  
 $.layer({
	    type : 2,
	    iframe : {
	        src : '<%=request.getContextPath()%>/app/accesscontrol/select/selectUser_con.jsp'
	    },
	    title : '选择人员',
	    area : ['750px','500px'],
	    offset : ['50%' , '50%'],
	    move : ['.xubox_title' , true],
	    fix : false
	});

/*   
	$("#showUserId").dialog({
		 resizable: true,
		 minWidth:750,
		 height: 540,
		 modal: true,
		 buttons: {
		 "确定": function () {
			 $(this).dialog("close");
		 }
		 }
		 });
	 */
	
<%-- 
	var diag = new Dialog();
	diag.IMAGESPATH="<%=request.getContextPath()%>/scripts/zDialog/images/";
	diag.Width = 900;
	diag.Height = 400;
	diag.Title = "内容页为外部连接的窗口";
	diag.URL = "<%=request.getContextPath()%>/app/accesscontrol/select/selectUser_con.jsp";
	diag.OKEvent = function(){$id('projectName').value = diag.innerFrame.contentWindow.document.getElementById('2013082513210400000').value;diag.close();};

	diag.show();
	  --%>
	 
}
</script>
</head>
<body>

<div class="clear"></div>
<div id="showUserId" style="display:none">
<iframe src="<%=request.getContextPath()%>/app/accesscontrol/select/selectUser_con.jsp"></iframe>
</div>
<form action="trainPlan-save.action" id="myAction" method="post">
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
                      <select id="workTypeId" name="workTypeId" mSty="blueCircle"  onchange="changeType();">
                          <c:forEach items="${workTypeList }" var="obj">
                              <option value="${obj.id }" <c:if test="${obj.id eq workTypeId }">selected</c:if> >${obj.typeName }</option>
                          </c:forEach>
                        </select>
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
                      <input class="itemManagerInput_m" value="<fmt:formatDate value="${entity.strartTime }" pattern="yyyy-MM-dd"/>" id="txt_start_time" name="entity.strartTime" readonly="readonly" style="cursor:pointer"></td>
                      <td class="typeNameTd">结束时间：</td>
                      <td class="memberAddTd" align="left">
                      <input class="itemManagerInput_m" id="txt_end_time" name="entity.endTime" value="<fmt:formatDate value="${entity.endTime }" pattern="yyyy-MM-dd"/>" readonly="readonly" style="cursor:pointer"></td>
                    	
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
                      <td colspan="3" class="typeNameTd"><span style="font-size:20px;">作业人员</span></td>
                    </tr>
                                        
                    <tr class="greyColor">
                      <td class="typeNameTd" width="180">培训师</td>
                      <td align="left" class="memberAddTd" width="300">&nbsp;</td>
                      <td align="left" class="memberAddTd" width="500">&nbsp;</td>
                    </tr>
 
                <c:if test="${!empty trainerList }">
                	<c:forEach items="${trainerList }" var="trainerObj" varStatus="stat">
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
                                            <c:forEach items="${workTypeSubList }" var="workTypeSubObj"
                                                varStatus="uStat">
                                                <tr class="colorGrey">
                                                <td nowrap="nowrap" class="trainContent">${workTypeSubObj.subTypeName }
                                                </td>
                                                <td class="trainLeft">
                                                	<input type="text" id="inpt_${trainerObj.user_id}_${workTypeSubObj.id }" style="width: 450px" readonly="readonly">
                                                	<input type="button" value="..." onClick="changeDiv('${stat.count}','dialog_${trainerObj.user_id}_${workTypeSubObj.id }')">
							                          <div id="dialog_${trainerObj.user_id}_${workTypeSubObj.id }" style="display:none;width:100%" title="请选择作业人员">
							                          <table class="menberBox">
							                          	<tr>
							                            	<td>
							                                    <c:forEach items="${traineeList }" var="user" varStatus="uStat">
							                                        <span class="memberName">
							                                        	${user.user_name }
							                                            <input onClick="selectUser(this,'${trainerObj.user_id}','${workTypeSubObj.id }','${workTypeSubObj.subTypeName }','${user.user_id }','${user.user_name }');" type="button" value=" " class="selectNormal" style="cursor:pointer"/>
							                                        </span>
							                                    </c:forEach>
							                            	</td>
							                            </tr>
													  </table>
													  </div>
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
                	</c:forEach>
                </c:if>    
   
                  </table>
                                    
                  </td>
              </tr>
            </table>                  
                  
          </div>
          <div class="subBtnBox">
          	<input type="button" class="base_btn" onClick="save()" value="提交" />
        	<input type="button"  class="base_btn" value="返回" onClick="window.location.href='trainPlan/trainPlan-list.action'"/>
          </div>
        </div>
        <div class="conBottom"></div>
      </div>

</form>
</body>
</html>