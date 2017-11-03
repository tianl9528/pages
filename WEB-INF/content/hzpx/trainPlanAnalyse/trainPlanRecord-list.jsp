<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="org.apache.commons.logging.Log"%>
<%@ page import="org.apache.commons.logging.LogFactory"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>培训分析</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/theme/jquery-ui-1.8.20.custom.css" type="text/css" media="screen" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery-ui-1.8.20.custom.min.js"></script>
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
    </script>
</head>
	<body>
		<div style="width:80%">
        	<form method="post" action="#">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
                    <tr>
                        <td>技能</td>
                        <td><input name="subTypeName" height="40" value="${subTypeName}" type="text" class="itemManagerInput" /></td>                   	
                        <td align="center">作业人员</td>
                        <td><input name="trainerName" height="40" type="text" value="${trainerName}" class="itemManagerInput" /></td>
                    </tr>
                    <tr><td><br/></td></tr>
                    <tr>
                        <td>项目</td>
                        <td><input name="projectName" height="40" type="text" value="${projectName}" class="itemManagerInput" /></td>
                        <td>评价</td>
                        <td class="memberAddTd" align="left" style="width:30%">
                            <select id="estimate" name="estimate" mSty="blueCircle"> 
                             	<option value="" <c:if test="${estimate == null || estimate == '' }">selected</c:if>/>
                                <option value="好" <c:if test="${estimate == '好' }">selected</c:if>>好</option>
                                <option value="中" <c:if test="${estimate == '中' }">selected</c:if>>中</option>
                                <option value="差" <c:if test="${estimate == '差' }">selected</c:if>>差</option>
                            </select>
                        </td>
                        <td colspan="4" align="center"><input class="base_btn" type="submit" value="搜索" /></td>
                    </tr>
                </table>
			</form>                
      	</div>  
		<div class="listBox">
        	<div class="listTitle">培训结果<span class="more"></div>
        	<div class="list">
          		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            		<tr>
                    	<td width="20%">项目名称</td>
              			<td width="20%">培训内容</td>
                        <td width="10%">技能类型</td>
              			<td width="10%">子类型</td>
              			<td width="10%">作业人员</td>		
              			<td width="10%">评级</td>
              			<td width="20%">评价</td>
            		</tr>
          		</table>
          		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
          			<c:if test="${!empty list}">
         				<c:forEach items="${list }" var="objs" varStatus="stat">
            				<tr class="<c:if test="${stat.count%2==1}">colorGrey</c:if><c:if test="${stat.count%2==0}">colorwhite</c:if>">
                            	<td width="20%">${objs[0]}</td>
                                <td width="20%">${objs[1]}</td>
                                <td width="10%">${objs[3]}</td>
                                <td width="10%">${objs[4]}</td>
                                <td width="10%">${objs[2]}</td>		
                                <td width="10%">${objs[5]}</td>
                               <td width="20%">${objs[6]}</td>
            				</tr>
          				</c:forEach>
      				</c:if>
          		</table>
        	</div>
        	<div class="page">
          		<div class="pageBox">
          			<table border="0" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
                        <tr>
                        	<td>
                            	${controlTable}
                            </td>
                        </tr>
          			</table>
          		</div>
        	</div> 
      	</div>
	</body>
</html>