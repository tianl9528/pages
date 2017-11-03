<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>人员信息介绍</title>
</head>
  
<body>

<%
int index = 0;
int br_count = 0;
%>
<div class="listBox">
        <div class="listTitle">工作室人员<span class="more"></span></div>
  <div class="list">
                   
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="" id="list_tb">
            <tr class="colorGrey">
              <td class="trainFunction" colspan="3"><span style="font-weight: bold;font-size:20px;">导师</span></td>
            </tr>
          <c:if test="${!empty list}">
            <tr class="colorwhite">
            <c:forEach items="${list}" var="users" varStatus="stat">
            	<c:if test="${users[2] == 1}">
                   	<td valign="top">
                        <table width="300" border="0" cellpadding="0" cellspacing="0" style="padding:5px">
                            <tr>
                              <td width="150" rowspan="5" align="left">
                              <img src="<%=request.getContextPath()%>/${users[1]}" onerror="this.src='<%=request.getContextPath()%>/theme/images/de_user.gif'" width="150" height="180"/>
                              </td> 	
                              <td align="left" height="30" style="font-weight: bold;font-size:16px;color: #1E84C1;padding-left:5px">${users[4]}</td>
                            </tr>   
                            <tr>
                              <td align="left" height="30" style="font-weight: bold;font-size:16px;color: #1E84C1;padding-left:5px">工作年限 ${users[3]} 年</td>
                            </tr>            
                            <tr>
                              <td align="left" height="30" style="font-weight: bold;font-size:16px;color: #1E84C1;padding-left:5px">${users[6]}</td>
                            </tr>
                            <tr>
                              <td align="left" height="30" style="font-weight: bold;color: #1E84C1;font-size:14px;padding-left:5px">文章 ${users[7]} 问答 ${users[8]} 回复 ${users[9] + users[10]}</td>
                            </tr>            
                            <tr>
                              <td height="50" align="left" style="font-size:14px;padding-left:5px">
                              <c:if test="${fn:length(users[5]) < 15}">${users[5]}</c:if>
                              <c:if test="${fn:length(users[5]) > 15}">${fn:substring(users[5],0,15)}......</c:if>
                              <a href="<%= request.getContextPath()%>/user/user-details.action?id=${users[0]}" class="">详细</a>
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
              </c:if>
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
          
<!--培训师-->
<%
br_count = 0;
index = 0;
%>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="" id="list_tb">
            <tr class="colorGrey">
              <td class="trainFunction" colspan="3"><span style="font-weight: bold;font-size:20px;">培训师</span></td>
            </tr>
          <c:if test="${!empty list}">
            <tr class="colorwhite">
            <c:forEach items="${list}" var="users" varStatus="stat"> 
            	<c:if test="${users[2] == 4}">
                   	<td valign="top">
                        <table width="300" border="0" cellpadding="0" cellspacing="0" style="padding:5px">
                            <tr>
                              <td width="150" rowspan="5" align="left">
                              <img src="<%=request.getContextPath()%>/${users[1]}" onerror="this.src='<%=request.getContextPath()%>/theme/images/de_user.gif'" width="150" height="180"/>
                              </td> 	
                              <td align="left" height="30" style="font-weight: bold;font-size:16px;color: #1E84C1;padding-left:5px">${users[4]}</td>
                            </tr>   
                            <tr>
                              <td align="left" height="30" style="font-weight: bold;font-size:16px;color: #1E84C1;padding-left:5px">工作年限 ${users[3]} 年</td>
                            </tr>            
                            <tr>
                              <td align="left" height="30" style="font-weight: bold;font-size:16px;color: #1E84C1;padding-left:5px">${users[6]}</td>
                            </tr>   
                            <tr>
                              <td align="left" height="30" style="font-weight: bold;color: #1E84C1;font-size:14px;padding-left:5px">文章 ${users[7]} 问答 ${users[8]} 回复 ${users[9] + users[10]}</td>
                            </tr>         
                            <tr>
                              <td height="50" align="left" style="font-size:14px;padding-left:5px">
                              <c:if test="${fn:length(users[5]) < 15}">${users[5]}</c:if>
                              <c:if test="${fn:length(users[5]) > 15}">${fn:substring(users[5],0,15)}......</c:if>
                              <a href="<%= request.getContextPath()%>/user/user-details.action?id=${users[0]}" class="">详细</a>
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
                
              </c:if>
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
          
<!--项目负责人-->
<%
br_count = 0;
index = 0;
%>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="" id="list_tb">
            <tr class="colorGrey">
              <td class="trainFunction" colspan="3"><span style="font-weight: bold;font-size:20px;">项目负责人</span></td>
            </tr>
          <c:if test="${!empty list}">
            <tr class="colorwhite">
            <c:forEach items="${list}" var="users" varStatus="stat"> 
            	<c:if test="${users[2] == 3}">
                   	<td valign="top">
                        <table width="300" border="0" cellpadding="0" cellspacing="0" style="padding:5px">
                            <tr>
                              <td width="150" rowspan="5" align="left">
                              <img src="<%=request.getContextPath()%>/${users[1]}" onerror="this.src='<%=request.getContextPath()%>/theme/images/de_user.gif'" width="150" height="180"/>
                              </td> 	
                              <td align="left" height="30" style="font-weight: bold;font-size:16px;color: #1E84C1;padding-left:5px">${users[4]}</td>
                            </tr>   
                            <tr>
                              <td align="left" height="30" style="font-weight: bold;font-size:16px;color: #1E84C1;padding-left:5px">工作年限 ${users[3]} 年</td>
                            </tr>            
                            <tr>
                              <td align="left" height="30" style="font-weight: bold;font-size:16px;color: #1E84C1;padding-left:5px">${users[6]}</td>
                            </tr>
                            <tr>
                              <td align="left" height="30" style="font-weight: bold;color: #1E84C1;font-size:14px;padding-left:5px">文章 ${users[7]} 问答 ${users[8]} 回复 ${users[9] + users[10]}</td>
                            </tr>          
                            <tr>
                              <td height="50" align="left" style="font-size:14px;padding-left:5px">
                              <c:if test="${fn:length(users[5]) < 15}">${users[5]}</c:if>
                              <c:if test="${fn:length(users[5]) > 15}">${fn:substring(users[5],0,15)}......</c:if>
                              <a href="<%= request.getContextPath()%>/user/user-details.action?id=${users[0]}" class="">详细</a>
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
              </c:if>
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


<!--学员-->
<%
br_count = 0;
index = 0;
%>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="" id="list_tb">
            <tr class="colorGrey">
              <td class="trainFunction" colspan="3"><span style="font-weight: bold;font-size:20px;">学员</span></td>
            </tr>
          <c:if test="${!empty list}">
            <tr class="colorwhite">
            <c:forEach items="${list}" var="users" varStatus="stat"> 
            	<c:if test="${users[2] == 2}">
                   	<td valign="top">
                        <table width="300" border="0" cellpadding="0" cellspacing="0" style="padding:5px">
                            <tr>
                              <td width="150" rowspan="5" align="left">
                              <img src="<%=request.getContextPath()%>/${users[1]}" onerror="this.src='<%=request.getContextPath()%>/theme/images/de_user.gif'" width="150" height="180"/>
                              </td> 	
                              <td align="left" height="30" style="font-weight: bold;font-size:16px;color: #1E84C1;padding-left:5px">${users[4]}</td>
                            </tr>   
                            <tr>
                              <td align="left" height="30" style="font-weight: bold;font-size:16px;color: #1E84C1;padding-left:5px">工作年限 ${users[3]} 年</td>
                            </tr>            
                            <tr>
                              <td align="left" height="30" style="font-weight: bold;font-size:16px;color: #1E84C1;padding-left:5px">${users[6]}</td>
                            </tr>
                            <tr>
                              <td align="left" height="30" style="font-weight: bold;color: #1E84C1;font-size:14px;padding-left:5px">文章 ${users[7]} 问答 ${users[8]} 回复 ${users[9] + users[10]}</td>
                            </tr>         
                            <tr>
                              <td height="50" align="left" style="font-size:14px;padding-left:5px">
                              <c:if test="${fn:length(users[5]) < 15}">${users[5]}</c:if>
                              <c:if test="${fn:length(users[5]) > 15}">${fn:substring(users[5],0,15)}......</c:if>
                              <a href="<%= request.getContextPath()%>/user/user-details.action?id=${users[0]}" class="">详细</a>
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
              </c:if>
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

<!--分页-->         
        <div class="page">
          <div class="pageBox">
          
          </div>
        </div>
        
</div>
  
      
</body>
</html>
