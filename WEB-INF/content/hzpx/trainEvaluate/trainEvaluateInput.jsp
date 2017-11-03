<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String base_root = request.getContextPath();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>培训评价</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mergecell.js"></script>
<script type="text/javascript">
	$(function(){
		$('#list_tb').table();
	});
	
	
	function initTable(){
		$('#tb').mergeCell({ 
			cols: [0, 0]
		});
	} 
	
	window.onload = function(){
		initTable();
	}
	
	function openDiv(id){
		$("#imgDiv_"+id).show();
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
	
	function commitImgComment(id){
		var commentId = "#comment_" + id;
		var subId = "#sub_" + id;
		var imagesComment = $(commentId).val();
		imagesComment = encodeURI(imagesComment);
		imagesComment = encodeURI(imagesComment);
		
		$.get('<%=request.getContextPath()%>/trainPlan/trainResultImageComment.action',
			{ 'imagesComment': imagesComment, 'trainPlanWorkTypeSubId': $(subId).val(), 'id': id },
				function(data){
					alert(data);
				}
		);
	}
	
	$(document).ready(function(){
		$("#back").click(function(){
			location.href = "depart.action";
		});	
	});
</script>
</head>
<body>
 <form action="trainEvaluate-save.action" method="post" name="evaluateForm">       
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
                      <td class="typeNameTd" width="160"><span style="font-size:20px;">作业人员</span></td>
                      <td class="typeNameTd" width="100"><span style="font-size:20px;">培训师</span></td>
                      <td class="typeNameTd" width="220"><span style="font-size:20px;">技能</span></td>
                      <td class="typeNameTd" width="50"><span style="font-size:20px;">评价</span></td>
                      <td class="typeNameTd" width="330"><span style="font-size:20px;">评语</span></td>
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
			        <td class="memberAddTd">
                    	${trainResultDetailObj.trainPlanWorkTypeSub.trainer.user_name}
                    	<input type="hidden" name="detailId" value="${trainResultDetailObj.id }">
                    </td>
			        <td class="memberAddTd">${trainResultDetailObj.trainPlanWorkTypeSub.workTypeSub.subTypeName}&nbsp;</td>
			        <td class="memberAddTd">
                    	<select name="isQualified" id="isQualified_${trainResultDetailObj.id }" >
							<option value="">--选择--</option>
							<option value="好" <c:if test="${trainResultDetailObj.isQualified eq '好' }">selected</c:if> >好</option>
							<option value="中" <c:if test="${trainResultDetailObj.isQualified eq '中' }">selected</c:if> >中</option>
                            <option value="差" <c:if test="${trainResultDetailObj.isQualified eq '差' }">selected</c:if> >差</option>
						</select>
                    </td>
			        <td class="memberAddTd">
                        <textarea rows="5" style="width:150px" name="evaluate" id="evaluate_${trainResultDetailObj.id }" >${trainResultDetailObj.evaluate }</textarea>
                    </td>
			        <td class="typeNameTd">
                      	<c:if test="${!empty imgList}">
                            <c:forEach items="${imgList }" var="img"> 
                                <c:if test="${trainResultDetailObj.trainee.user_id ==  img.trainee.user_id}">
                                    <a href="#" onClick="openDiv('${img.id}')">
                                        <c:if test="${fn:length(img.imagesName)>15}">
                                        	${fn:substring(img.imagesName, 0, 15)}...
                                        </c:if>
                                        <c:if test="${fn:length(img.imagesName)<=15}">
                                        	${img.imagesName}
                                        </c:if>
                                    </a>
                                    <br>
                                    <div id="imgDiv_${img.id}" title="图片编辑查看" style="display:none;width:100%;">
                                       <div class="conMiddle">
                                        <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
                                            <tr>
                                                <td>
                                                    <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                                                        <tr class="whiteColor">
                                                            <td class="typeNameTd" colspan="2" align="center">
                                                            	<img src="<%=base_root%>${img.imagesUrl}" width="500"
                                                                 height="300" />
                                                            </td>
                                                        </tr>
                                                        <tr class="whiteColor">
                                                        	<td class="memberAddTd" align="left" style="width:720px">  
                                                                图片评论
                                                            </td>
                                                            <td class="memberAddTd">
                                                            	<textarea rows="4" style="width:350px" id="comment_${img.id}">${img.imagesComment }</textarea>
                                                            </td>
                                                        </tr>
                                                        <tr class="whiteColor">
                                                        	<td class="memberAddTd" align="left" style="width:720px">  
                                                                技能
                                                            </td>
                                                            <td class="memberAddTd">
                                                            	<select id="sub_${img.id}">
                                                            	<s:iterator id="detailObj" value="trainResultDetailList">
                                                                	<c:if test="${detailObj.trainee.user_id == trainResultDetailObj.trainee.user_id}">
                                    									<option value="${detailObj.trainPlanWorkTypeSub.id}" <c:if test="${img.trainPlanWorkTypeSub.id != null && img.trainPlanWorkTypeSub.id ==  detailObj.trainPlanWorkTypeSub.id}">selected</c:if>>${detailObj.trainPlanWorkTypeSub.workTypeSub.subTypeName}</option>                                   
                                                                    </c:if>
                                                                </s:iterator>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        <div class="subBtnBox">
                                            <input type="button" class="base_btn" onclick="commitImgComment('${img.id}');" value="保 存" />
                                        </div>
                                    </div>
                                    <div class="conBottom"></div>
                                 </div>
                                </c:if>
                            </c:forEach>
                      	</c:if>	
                  </td>
			    </tr> 
            </s:iterator>            
        </table>         
       </td>
        </tr>
	</table>                  
                  
          </div>
          <div class="subBtnBox">
          	<input type="hidden" name="trainPlanId" value="${entity.id}">
            <input type="submit" value="保 存" class="base_btn">
			<input type="button" value="返 回" class="base_btn" id="back">
          </div>
        </div>
        
        <div class="conBottom"></div>
      </div>
	 </form>

</body>
</html>