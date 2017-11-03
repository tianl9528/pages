<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ page import= "sunit.accesscontrol.object.User" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>用户空间>>我的提问</title>
<%

response.setHeader("Pragma","No-cache");
response.setHeader("Cache-Control","no-cache");

	String base_root = request.getContextPath();
	User u = (User)request.getAttribute("user");
	
	//System.out.println("已经发布的供应信息 == 》 " + supplyList.size());
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
							<th>问题类型</th>
							<th>问题内容</th>
							<th>状态</th>
							<th>回答</th>
							<th>提问时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${!empty myqueslist}">
						<c:forEach var="mql" items="${myqueslist}">
						<tr>		
							<td width="10%">
								<c:if test="${!empty mql.professor}">专家提问</c:if>
								<c:if test="${empty mql.professor}">一般提问</c:if>
							</td>
							<td>${mql.question}</td>
							<td>														
								<c:if test="${fn:trim(mql.state) eq '0'}"><font style="color:red;">未解答</font></c:if>
								<c:if test="${fn:trim(mql.state) eq '1'}"><font style="color:green;">已解答</font></c:if>							
							</td>
							<td width="10%"><a href="#">${mql.recount}</a></td>					
							<td width="10%"><fmt:formatDate value="${mql.quesdate}"></fmt:formatDate></td>
							<td width="20%" class="trainFunction">
							<div style="margin-top:-10px;margin-left:-5px;">
							    <a href="myquesdetail.action?id=${mql.id}" onclick="#" class="detail">查看</a>
							    <a href="myquesedit.action?id=${mql.id}" onFocus="#" onFocus="#" class="edit">修改</a>
								<a href="myquesdelete.action?id=${mql.id}" onClick="return confirm('确定删除此记录吗？')"	onFocus="this.blur()" class="delete">删除</a>
							</div>
							</td>
						</tr>
						</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
		</div>
		
		<div class="panel panel-default">
			<div class="panel-heading" style="background:#428BCA;; padding: 5px 5px 5px 10px; font-size: 20px; color: white; height: 40px">
				<a href="#" style="color:white;"><%=u.getUser_name() %>--解答汇总</a>				
			</div>
			<div class="panel-body">
				<table class="table">
					<thead>
						<tr>
							<th>回答内容</th>
							<th>回答时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${!empty myanswlist}">
						<c:forEach var="mal" items="${myanswlist}">
						<tr>		
							<td width="70%">														
								${mal.content}						
							</td>				
							<td width="10%"><fmt:formatDate value="${mal.redate}"></fmt:formatDate></td>
							<td width="20%" class="trainFunction">
								<div style="margin-top:-10px;margin-left:-5px;">
								    <a href="myanswdetail.action?id=${mal.id}" onclick="#" class="detail">查看</a>
								    <a href="myanswedit.action?id=${mal.id}" onFocus="#" onFocus="#" class="edit">修改</a>
									<a href="myanswdelete.action?id=${mal.id}" onClick="return confirm('确定删除此记录吗？')"	onFocus="this.blur()" class="delete">删除</a>
								</div>
							</td>
						</tr>
						</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
		</div>
		
	</div>
</body>
</html>