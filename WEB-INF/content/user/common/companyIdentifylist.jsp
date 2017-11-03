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
<title>用户管理</title>
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
	<%-- <form action="user.action" method="post">
		<div class="searchBox">
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
			<div style="float: left">
				<input type="button" value="新增" class="base_btn"
					style="float: left;"
					onClick="window.location.href='<%=request.getContextPath()%>/user/user-input.action'" />

			</div>
		</div>
		<div class="clear"></div>
	</form> --%>

	<div class="listBox">
		<div class="listTitle">
			系统用户<span class="more"></span>
		</div>
		<div class="list">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="tTitle">
				<tr>
					<td width="220"></td>

					<td width="150">姓名</td>
					<td>用户审核状态</td>
					<td width="170">操作</td>
				</tr>
			</table>
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="tList" id="list_tb">
				<c:if test="${!empty page.result}">
					<c:forEach items="${page.result}" var="users" varStatus="stat">
						<tr
							class="<c:if test="${stat.count%2==1}">colorGrey</c:if><c:if test="${stat.count%2==0}">colorwhite</c:if>">
							<td class="trainLeft" width="100"><img
								src="<%=request.getContextPath()%>${users.images_url}"
								width="160px" height="120px"></td>
							<td class="trainContent" width="150">${users.user_name}</td>
							<td class="trainContent">${users.identify}</td>
							<td class="trainFunction" width="170"><a
								href="companyIdentifydetails.action?id=${users.user_id}"
								class="detail">查看</a><a
								href="companyIdentifyinput.action?id=${users.user_id}"
								class="edit">编辑</a><a
								href="companyIdentifydelete.action?id=${users.user_id}"
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