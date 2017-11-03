<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="com.opensymphony.xwork2.util.ValueStack"%>
<%@ page import="org.apache.struts2.ServletActionContext"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.List"%>

<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.object.User"%>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>工作室人员管理</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>

<script type="text/javascript">
	$(function() {
		$('#list_tb').table();
	});

	var mySelect = new mSelect('mySelect', 'mSelect.css');
	window.onload = function() {
		var aS = document.getElementsByTagName('select');
		for (var i = 0; i < aS.length; i++) {
			switch (aS[i].getAttribute('mSty')) {
			case 'blueCircle':
				mySelect.Create(aS[i], 'blueCircle', true);
				break;
			}
		}
	}
</script>
</head>
<body>
	<br>
	<form action="user.action" method="post">
		<div class="searchBox">
			<div style="float: left;">
				<select name="departname" mSty="blueCircle">
					<option value="">--全部工作窒--</option>
					<c:forEach items="${depart_list}" var="departs" varStatus="stat">
						<option value="${departs.name}">${departs.name}</option>
					</c:forEach>
				</select> 姓名：<input class="itemManagerInput_m" type="text" name="username">&nbsp;&nbsp;
			</div>

			<div class="searchIcon">
				<img
					src="<%=request.getContextPath()%>/theme/images/bg_search_55.png"
					width="38" height="40" />
			</div>
			<div class="searchInput">
				<input name="searchInput" type="text" style="width: 180px" />
			</div>
			<div class="searchBtn">
				<input type="submit" value="搜索" style="cursor: pointer" />
			</div>
			<div>
				<input type="button" value="新增" class="base_btn"
					style="float: left;"
					onClick="window.location.href='<%=request.getContextPath()%>/user/user-input.action'" />

			</div>
		</div>
		<div class="clear"></div>
	</form>

	<div class="listBox">
		<div class="listTitle">
			工作窒人员<span class="more"><a href="demo-pxjg-add.jsp">+</a></span>
		</div>
		<div class="list">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="tTitle">
				<tr>
					<td width="50">姓名</td>
					<td width="60">工作窒</td>
					<td width="80">职务</td>
					<td width="80">联系方式</td>
					<td width="80">人员说明</td>
					<td width="170">操作</td>
				</tr>
			</table>
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="tList" id="list_tb">
				<c:if test="${!empty page.result}">
					<c:forEach items="${page.result}" var="users" varStatus="stat">

						<td class="trainLeft" width="50">${users.user_name}</td>
						<td class="trainContent" width="60">${users.depart.name}</td>
						<td class="trainContent" width="80">${users.job.name}</td>
						<td class="trainContent" width="80">${users.mobile}</td>
						<td class="trainContent" width="80">${users.summary}</td>
						<td class="trainFunction" width="170"><a
							href="user-details.action?id=${users.user_id}" class="detail">查看</a><a
							href="user-input.action?id=${users.user_id}" class="edit">编辑</a><a
							href="user-delete.action?id=${users.user_id}"
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