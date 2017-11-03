<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="org.apache.commons.logging.Log"%>
<%@ page import="org.apache.commons.logging.LogFactory"%>
<%@ page import="com.opensymphony.xwork2.util.ValueStack"%>
<%@ page import="org.apache.struts2.ServletActionContext"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.List"%>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>
	<form action="fruit.action" method="post">
		<!-- <div class="searchBox">
			<div class="searchIcon">
				<img
					src="<%=request.getContextPath()%>/theme/images/bg_search_55.png"
					width="38" height="40" />
			</div>
			<div class="searchInput">
				<input name="searchInput" type="text" />
			</div>
			<div class="searchBtn">
				<input type="submit" value="搜索" style="cursor: pointer" />
			</div>
		</div> -->
	</form>
	<div class="listBox">
		<div class="listTitle">
			水果管理<span class="more"><a href="fruit-input.action">新增</a></span>
		</div>
		<div class="list">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="tTitle">
				<tr>
					<td width="100">id</td>
					<td width="120">ftype</td>
					<td width="150">astypeid</td>
					<td>fdsa</td>
					<td width="170">操作</td>
				</tr>
			</table>
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="tList" id="list_tb">
				<c:if test="${!empty page.result}">
					<c:forEach items="${page.result}" var="fruit" varStatus="stat"><!-- var的取值为以下所有需要用到数据库的表的名字 -->
						<tr
							class="<c:if test="${stat.count%2==1}">colorGrey</c:if><c:if test="${stat.count%2==0}">colorwhite</c:if>">
							<td class="trainLeft" width="100">${fruit.id}</td>
							<td class="trainContent" width="120">${fruit.ftype}</td>
							<td class="trainContent">${fruit.fimpurity}</td>
							<td class="trainFunction" width="170"><a
								href="fruit-details.action?id=${fruit.id}" class="detail">查看</a><a
								href="fruit-input.action?id=${fruit.id}" class="edit">编辑</a><a
								href="fruit-delete.action?id=${fruit.id}"
								onClick="return confirm('确定删除此条记录吗？')" class="delete">删除</a></td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
			<c:if test="${empty page.result}">
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="tTitle">
					<tr>
						<td>没有数据！！！</td>
					</tr>
				</table>
			</c:if>
		</div>
		<!--分页-->
		<div class="page">
			<div class="pageBox">
				<table border="0" cellpadding="0" cellspacing="0"
					style="margin-left: auto; margin-right: auto">
					<tr>
						<td><c:if test="${!empty page.result}">${controlTable}</c:if></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>