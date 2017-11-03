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
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/ajaxfileupload.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/fancy-zoom-master/js/fancyzoom.min.js"></script>
<c:if test="${courseWareId==null}"><title>课件录入</title></c:if>
<c:if test="${courseWareId!=null}"><title>课件编辑</title></c:if>
<script type="text/javascript">
	$(function(){
		$('#list_tb').table();
	});
	
	$(document).ready(function() {
		$("#back").click(function(){
			history.go(-1);
		 });		
		 
		 //课件上传的修改
		 $("#botton1").click(function(){
            $("#div1").hide();
            $("#div2").show();
            $("#div3").hide();
            $("#div4").show();
        });
        
        $("#button2").click(function(){
            $("#div1").show();
            $("#div2").hide();
            $("#div3").show();
            $("#div4").hide();
        });							   
	});
	
	
	function checkforminput(){
		var courseWareName = document.getElementById("courseWareName").value;
		var fileCommentValue = document.getElementById("fileComment").value;
		if(courseWareName==null || courseWareName.length==0|| courseWareName.replace(/\s+/g,"")==""){
			alert("请输入课件名称");
			return false;
		}
		
		if(fileCommentValue != null && fileCommentValue.length > 2000){
			alert("描述内容不能超过2000，请重新整理");
			return false;
		}
		return true;
	}
</script>

</head>
<body>
	<form name="thisForm" method="post" onSubmit="return checkforminput()" action="courseWare-save.action" enctype="multipart/form-data">
        <div class="conBox">
        	<div class="conTitle">
            	<c:if test="${courseWareId==null}">课件录入</c:if>
                <c:if test="${courseWareId!=null}">课件编辑</c:if>
            </div>
            <div class="conMiddle">
                <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                                <tr class="greyColor">
                                    <td class="typeNameTd" width="150">课件名称</td>
                                    <td class="memberAddTd" align="left" width="720">
                                        <input type="text" class="itemManagerInput" id="courseWareName" name="courseWare.courseWareName"  valid="notnull" msg="请输入课件名称！" value="${courseWare.courseWareName}"/>
                                       	<c:if test="${courseWare.id != null}">
                                        	<input type="hidden" name="courseWareId" value="${courseWareId}"/>
                                        	<input type="hidden" name="courseWare.id" value="${courseWare.id}"/>
                                        </c:if>
                                    </td>
                                </tr>
                                <tr class="whiteColor">
                                    <td class="typeNameTd" width="150">课件描述</td>
                                    <td class="memberAddTd" align="left" width="720">
                                        <textarea rows="4" style="width:280px;" id="fileComment" name="courseWare.fileComment" value="${courseWare.fileComment}">${courseWare.fileComment}</textarea>
                                    </td>
                                </tr>
                                <tr class="whiteColor">
                                    <td class="typeNameTd" width="100">课件上传</td>
                                    <td class="memberAddTd" align="left" width="720">
                                    	<c:choose>
                                            <c:when test="${courseWareId==null}">
                                            	<input type="file" name="courseWareFile" style="width:380px; height:40px"/>
                                            </c:when>
                                            <c:otherwise>
                                            	<div id="div1" style="display: block;">
                                                	<input type="text" readonly style="width:280px;" value="${oldCourseWareFileUrl}" />
                                                    <input type="button" class="base_btn" id="botton1" value="修改">
                                             	</div>
                                             	<div id="div2" style="display: none;">
                                                	<input type="file" name="courseWareFile" style="width:380px; height:40px" />
                                                	<input type="hidden" name="oldCourseWareFileUrl" id="oldUrl" value="${oldCourseWareFileUrl}">
                                                    <input type="button" class="base_btn" id="button2" value="取消">
                                             	</div>
                                             	<div id="div3">
                                             		
                                             	</div>
                                             	<div id="div4" style="display: none;">
                                             		
                                             	</div>
                                            </c:otherwise>
                                          </c:choose>
                                    </td>
                                </tr>                             
                            </table>
                        </td>
                    </tr>
                </table>
                <div class="subBtnBox">
                    <input type="submit" class="base_btn" value="保存">
                    <input type="button" class="base_btn" id="back" value="返回">
                </div>
            </div>
            <div class="conBottom"></div>
		</div>
	</form>
</body>
</html>