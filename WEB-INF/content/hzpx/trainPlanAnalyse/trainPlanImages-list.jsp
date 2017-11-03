<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="org.apache.commons.logging.Log"%>
<%@ page import="org.apache.commons.logging.LogFactory"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>培训图</title>
	<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/theme/css/mSelect.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/theme/jquery-ui-1.8.20.custom.css" type="text/css" media="screen" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery-ui-1.8.20.custom.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/scripts/fancy-zoom-master/js/fancyzoom.min.js"></script>
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
    <script type="text/javascript"> 
		$(document).ready(function() {
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
    	<%
			int index = 0;
			int br_count = 0;
			br_count = 0;
			index = 0;
		%>
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
                             	<option value="" <c:if test="${estimate == null || estimate == '' }">selected</c:if> />
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
        	<div class="listTitle">培训图<span class="more"></div>
        		<div class="list">
					<table width="100%" border="0" cellpadding="0" cellspacing="0" class="" id="list_tb">
            			<tr class="colorGrey">
              				<td class="trainFunction" colspan="3"><span style="font-weight: bold;font-size:20px;">&nbsp;&nbsp;</span></td>
            			</tr>
          				<c:if test="${!empty list}">
            				<tr class="colorwhite">
            					<c:forEach items="${list}" var="objs" varStatus="stat"> 
                   					<td valign="top">
                        				<table width="300" border="0" cellpadding="0" cellspacing="0" style="padding:5px">
                            				<tr>
                              					<td width="150" rowspan="4" align="left">
                                                	<div class="photo">
                                                    	<a href="#${objs[5]}" onMouseOver="onMouseOverCallClick('s${objs[5]}')" id="s${objs[5]}">
                                                        	 <img src="<%=request.getContextPath()%>/${objs[2]}" onerror="this.src='<%=request.getContextPath()%>/theme/images/file_de.jpg'" border=0 width="150" height="160"/>
                                                        </a>
                                                        <div id="${objs[5]}">
                                                            <img src="<%=request.getContextPath()%>/${objs[2]}"/>
                                                            <p>
                                                                项目负责人：${objs[9]} </br>
                                                                培训名称：${objs[8]} </br>
                                                                培训时间：${objs[10]}&nbsp;至&nbsp;${objs[11]}</br>
                                                                培训工作类型：${objs[13]}</br>
                                                                工作子类型：${objs[14]}</br>
                                                                评价人：${objs[15]}</br>
                                                                培训评价：${objs[12]}</br>
                                                                评价时间：${objs[16]}
                                                            </p>
                                                        </div>
                                                    </div> 
                              					</td>
                                                <td align="left" height="40" style="font-weight: bold;font-size:12px;color:#1E84C1;padding-left:5px">&nbsp;&nbsp;${objs[7]}
                                                </td>
                            				</tr>   
                            				<tr>
                              					<td align="left" height="40" style="font-weight: bold;font-size:12px;color: #1E84C1;padding-left:5px">描述：${objs[3]}</td>
                            				</tr>            
                            				<tr>
                              					<td align="left" height="40" style="font-weight: bold;font-size:12px;color: #1E84C1;padding-left:5px">作业人员:&nbsp;${objs[0]}</td>
                            				</tr>            
                              					<td align="left" height="40" style="font-weight: bold;font-size:12px;color: #1E84C1;padding-left:5px">
                                                	<c:if test="${objs[6] == null || objs[6] ==''}">未评价</c:if>
                                                    <c:if test="${objs[6] != null && objs[6] !=''}">${objs[6]}</c:if>
                                                    
                                                </td>
                              				</tr>
                        				</table>         
                    				</td> 
									<% 
                                        index = index + 1;
                                        br_count = 1;
                                        if(index==3){
                                            out.println("</tr>");
                                            out.println("<tr class=\"colorwhite\">");
                                            index = 0;
                                        }
                                    %>
            					</c:forEach>
                				<%
									if(br_count == 0){
                				%>
              						<td class="trainFunction" colspan="3">没有数据<br><br></td>
								<%
                                }
                                %>            
            </tr>
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