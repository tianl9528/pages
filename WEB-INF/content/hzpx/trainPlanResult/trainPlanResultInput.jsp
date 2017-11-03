<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String base_root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查看培训安排</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mergecell.js"></script>
<link href="<%=request.getContextPath()%>/scripts/uploadify/uploadify.css" rel="stylesheet" type="text/css" />
<script src="<%=request.getContextPath()%>/scripts/uploadify/jquery.uploadify.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/fancy-zoom-master/js/fancyzoom.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#list_tb').table();
		$('#file_upload').uploadify({
			'auto':false,
			'swf':'<%=request.getContextPath()%>/scripts/uploadify/uploadify.swf',         
			'uploader': '<%=request.getContextPath()%>/trainPlan/trainPlanResult-saveImagesFile.action',         // Put your options here  
			'queueID':'fileQueue',
			'buttonClass':'addFileButton',
			'fileObjName':'upfile',
			'buttonText' :'添加图片',
			'fileSizeLimit':'1GB',
			'queueSizeLimit' :99,
			'removeTimeout':2,
			'cancelImg':'<%=request.getContextPath()%>/theme/images/btn_long_page_pressed.png',
			'onQueueComplete':function(event,data){
				alert("上传成功!");
			} 
		}); 
		$('div.photo a').fancyZoom({scaleImg: true, closeOnClick: true});
	});
	
	function initTable(){
		$('#tb').mergeCell({ 
			cols: [0, 0]
		});
	} 
	window.onload = function(){
		initTable();
	}
	
	function openDiv(id, traineeId){
		$("#imgDiv_"+id).show();
		$("#traineeId").val (traineeId);
		var tblwidth=$('#tbl_'+id).width()+5;
		$("#imgDiv_"+id).dialog({
			 resizable: true,
			 minWidth:750,
			 height: 540,
			 modal: true,
			 buttons: {
			 "关 闭": function () {
				 $(this).dialog("close");
			 	}
			}
		});
	}

	function imgUpload(){
		var time = new Date();
		$.get('<%=request.getContextPath()%>/datafile/imgFile-check.action',function(data){
			alert(data);
			if(data=='1'){//1表示验证通过，0表示验证未通过
				$("#file_upload").uploadify('settings', 'formData', {'id': $("#traineeId").val(), 'trainPlanId' : $("#planId").val()});
				
				jQuery('#file_upload').uploadify('upload','*');
			}else{
				alert("文件总量超过10G，无法上传!");
			}
		});
	}
	
	function delImg(id){
		if(window.confirm('你确定要删除图片吗？')){
			this.myForm.action = "<%=request.getContextPath()%>/trainPlan/trainPlanResult-deleteFile.action";
			$('#id').val($('#planId').val());
			$('#fileId').val(id);
			this.myForm.submit();
		 }
	}
	
	function onMouseOverCallClick(id){
		alert(id);
		document.getElementById(id).click();
		document.getElementById(id).click();   
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
                      <input type="hidden" id="planId" value="${entity.id}" />
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
                      <td class="typeNameTd" width="140"><span style="font-size:20px;">作业人员</span></td>
                      <td class="typeNameTd" width="110"><span style="font-size:20px;">培训师</span></td>
                      <td class="typeNameTd" width="460"><span style="font-size:20px;">技能</span></td>
                      <td class="typeNameTd" width="180"><span style="font-size:20px;">图片</span></td>
                      <td class="typeNameTd" width="20"><span style="font-size:20px;">上传</span></td>
                    </tr>
            <s:iterator id="trainResultDetailObj" value="trainResultDetailList">
			            <tr class="greyColor">
			              <td class="typeNameTd">${trainResultDetailObj.trainee.user_name }<br>
			              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
			              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" /></td>
			              <td class="memberAddTd" align="center">
                          		${trainResultDetailObj.trainPlanWorkTypeSub.trainer.user_name}
			              </td>
			              <td class="memberAddTd">
                         		${trainResultDetailObj.trainPlanWorkTypeSub.workTypeSub.subTypeName}&nbsp;
                          </td>
			              <td class="typeNameTd">
                          	
                          	  <c:if test="${!empty imgList}">
                              		<c:forEach items="${imgList }" var="img"> 
                                    	<c:if test="${trainResultDetailObj.trainee.user_id ==  img.trainee.user_id}">
                                        <div class="photo">                    
                                        	<a href="#k${img.id}" onMouseOver="onMouseOverCallClick(s${img.id})" id="s${img.id}" >
                                            	<c:if test="${fn:length(img.imagesName)>9}">
                                                    ${fn:substring(img.imagesName, 0, 9)}...
                                                    
                                                </c:if>
                                                <c:if test="${fn:length(img.imagesName)<=9}">
                                                    ${img.imagesName}
                                                </c:if>
                                            </a>
                                            <img src="<%=base_root%>/theme/images/icon_function_3.png" onClick="delImg('${img.id}')"/>
                                        	<br>
                                            <div id="k${img.id}">
                                                <img src="<%=base_root%>${img.imagesUrl}"/>
                                                <p style="font-size:20px">${img.imagesComment}</p>
                                            </div>
                                             </div>	
                                        </c:if>
                                    </c:forEach>
                              </c:if>
                             
			              </td>
                          <td class="memberAddTd">
                          <div align="left">
                          	<input type="button" class="base_btn" value="上传" onclick="openDiv('${entity.id}','${trainResultDetailObj.trainee.user_id}');" />
                          </div>
                          </td>
			            </tr> 
            </s:iterator>  
                </table>        
            </td>
        </tr>
	</table>                  
          </div>
          <div id="imgDiv_${entity.id}" title="批量上传图片" style="display:none;width:100%;">
               <div class="conMiddle">
          		<table cellpadding="0" cellspacing="13" border="0" class="selectTb">
           			<tr>
            			<td>
                			<table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                   				<tr class="whiteColor">
                    				<td class="typeNameTd" style="width:150px">图片上传</td>
                    				<td class="memberAddTd" id="fileInputTd"  align="left" style="width:720px">  
                     					<div id="fileQueue"></div>  
                     					<input type="file" name="upfile" id="file_upload" /> 
                                        <input type="hidden" name="traineeId" id="traineeId" value=""/>
                   					</td>
                    			</tr>
                  			</table>
						</td>
           			</tr>
          		</table>
          		<div class="subBtnBox">
          			<input type="button" class="base_btn" onclick="imgUpload();" value="上传" />
          		</div>
        	</div>
        	<div class="conBottom"></div>
         </div>
          <div class="subBtnBox">
        	<input type="button"  class="base_btn" value="返回" onClick="window.location.href='trainPlan/trainPlan-list.action'"/>
          </div>
        </div>
        <div class="conBottom"></div>
        <form action="" id="myForm" name="myForm">
        	<input type="hidden" value="" name="fileId" id="fileId" />
            <input type="hidden" value="" name="id" id="id"/>
        </form>
      </div>
</body>
</html>