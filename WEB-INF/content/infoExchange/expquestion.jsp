<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ page import= "sunit.accesscontrol.object.User" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>用户空间>>我的解答</title>
<%

response.setHeader("Pragma","No-cache");
response.setHeader("Cache-Control","no-cache");

	String base_root = request.getContextPath();
	User u = (User)request.getAttribute("user");
	
	
%>

<style type="text/css">
	
</style>
<script type="text/javascript">
	
</script>
</head>
<body> 
	<div style="padding:20px 10px 0 10px">
		<div class="panel panel-default">
			<div class="panel-heading" style="background:#428BCA;; padding: 5px 5px 5px 10px; font-size: 20px; color: white; height: 40px">
				<a href="#" style="color:white;"><%=u.getUser_name() %>--提问汇总</a>				
			</div>
			<div class="panel-body">
				<table class="table">
					<thead>
						<tr>
							<th>技术分类</th>
							<th>问题内容</th>
							<th>状态</th>
							<th>提问时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${!empty myqueslist}">
						<c:forEach var="mql" items="${myqueslist}">
						<tr>		
							<td width="15%">${mql.questionTitle}</td>
							<td>${mql.question}</td>
							<td width="10%">
								<a href="#">							
									<c:if test="${fn:trim(mql.state) eq '0'}"><font style="color:red">未解答</font></c:if>
									<c:if test="${fn:trim(mql.state) eq '1'}"><font style="color:green">已解答</font></c:if>
								</a>
							</td>					
							<td width="10%"><fmt:formatDate value="${mql.quesdate}"></fmt:formatDate></td>
							<td width="20%" class="trainFunction">
							<div style="margin-top:-10px;margin-left:-5px;">
							<c:if test="${fn:trim(mql.state) eq '0'}">
								<a href="expanswer.action?id=${mql.id}" onFocus="#" class="edit">回答</a>
							</c:if>									
							<c:if test="${fn:trim(mql.state) eq '1'}">
								<a href="expansdetail.action?id=${mql.id}" onclick="#" onFocus="#" class="detail">查看</a>
								<a href="expansedit.action?id=${mql.id}" onFocus="#" onFocus="#" class="edit">修改</a>								
							</c:if>						    
								
							</div>
							</td>
						</tr>
						</c:forEach>
						</c:if>
						
					</tbody>
				</table>
				<c:if test="${empty myqueslist}">没有数据！</c:if>
			</div>
		</div>
	</div>
</body>
</html>