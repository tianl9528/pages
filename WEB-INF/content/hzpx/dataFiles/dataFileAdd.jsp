<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.List"%>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath()%>/scripts/uploadify/uploadify.css" rel="stylesheet" type="text/css" />  
		<script src="<%=request.getContextPath()%>/scripts/uploadify/jquery.uploadify.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js" type="text/javascript"></script>
		<script type="text/javascript">  
   			$(function() {     
   				$('#file_upload').uploadify({
            		'auto':false,
            		'swf':'<%=request.getContextPath()%>/scripts/uploadify/uploadify.swf',         
            		'uploader': '<%=request.getContextPath()%>/datafile/dataFile-save.action',         // Put your options here  
            		'queueID':'fileQueue',
            		'buttonClass':'addFileButton',
					'fileObjName':'upfile',
					'buttonText' :'添加文件',
					'fileSizeLimit':'1GB',
					'queueSizeLimit' :99,
					'removeTimeout':2,
					'cancelImg':'<%=request.getContextPath()%>/scripts/uploadify/btn_long_page_pressed.png',
					'onQueueComplete':function(event,data){
            			alert("上传成功!");
           	 		} 
            	}); 
   			});
			
	   		function dataFileUpload(){
	   			var time = new Date();
	   			$.get('dataFile-check.action?upload='+time,function(data){
	   				if(data=='1'){//1表示验证通过，0表示验证未通过
	   					jQuery('#file_upload').uploadify('upload','*');
	   				}else{
	   					alert("文件总量超过10G，无法上传!");
	   				}
	   			});
			}
		</script> 
		<title>文件添加</title>
	</head>
	<body>
        <div class="body_title"></div>
		<br />
		<div class="conBox">
			<div class="conTitle">文件添加</div> 
        	<div class="conMiddle">
          		<table cellpadding="0" cellspacing="13" border="0" class="selectTb">
           			<tr>
            			<td>
                			<table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                   				<tr class="whiteColor">
                    				<td class="typeNameTd" style="width:150px">文件添加</td>
                    				<td class="memberAddTd" id="fileInputTd"  align="left" style="width:720px">  
                     					<div id="fileQueue"></div>  
                     					<input type="file" name="upfile" id="file_upload" /> 
                   					</td>
                    			</tr>
                  			</table>
						</td>
           			</tr>
          		</table>
          		<div class="subBtnBox">
          			<input type="button" class="base_btn" onclick="dataFileUpload();" value="上传" /> 
          			<input type="button" class="base_btn" onclick="jQuery('#file_upload').uploadify('cancel','*')" value="取消" />
        			<input type="button"  class="base_btn" value="返回" onclick="window.location.href='dataFile-list.action'"/>
          		</div>
        	</div>
        	<div class="conBottom"></div>
		</div>
	</body>
</html>