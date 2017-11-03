<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="com.opensymphony.xwork2.util.ValueStack"%>
<%@ page import="org.apache.struts2.ServletActionContext"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.List"%>

<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.object.User"%>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String base_root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新闻信息</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/index.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
<link href="<%=base_root%>/theme/css/mSelect.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet"
	href="<%=base_root%>/theme/jquery-ui-1.8.20.custom.css" type="text/css"
	media="screen" />
<link rel="stylesheet"
	href="<%=base_root%>/theme/ui-lib/qtip/css/jquery.qtip.css"
	type="text/css" />
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery-table-list_select.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery.ui.datepicker-zh-CN.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery-ui-1.8.20.custom.min.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/ui-lib/qtip/js/jquery.qtip.js"></script>

<script type="text/javascript"
	src="<%=base_root%>/theme/js/bootstrap.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<body style="background: none;">
	<br>
	<!-- <form
		action="<%=request.getContextPath()%>/infoservices/articleNewslist.action"
		method="post" enctype="multipart/form-data">
		<div
			class="input-group col-lg-5 col-xs-5 col-lg-offset-7 col-xs-offset-7"
			style="margin-bottom: 15px">
			<input name="searchInput" type="searchInput" class="form-control">
			<span class="input-group-btn">
				<button type="submit" class="btn btn-success"
					style="width: 88px; margin-right: 5px">搜索</button>
			</span>
		</div>
		<div style="float: left">
			<input type="button" value="新增" class="base_btn" style="float: left;"
				onClick="window.location.href='<%=request.getContextPath()%>/infoservices/articleNewsadd.action'" />
		</div>
	</form> -->
	<div class="listBox" style="width: 790px">
		<div class="listTitle" style="width: 790px">
			新闻信息录入<span class="more"><div style="float: left">
					<input type="button" value="新增" class="btn btn-success"
						style="width: 88px; margin-right: 5px"
						onClick="window.location.href='<%=request.getContextPath()%>/infoservices/noticemanageradd.action'" />
				</div></span>
		</div>
		<div class="list" style="width: 790px">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="tTitle">
				<tr>
					<td width="120">信息标题</td>
					<td width="50">信息类型</td>
					<td width="80">操作</td>
				</tr>
			</table>
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="tList" id="list_tb">
				<c:if test="${!empty page_article.result}">
					<c:forEach items="${page_article.result}" var="articleNews"
						varStatus="stat">
						<tr
							class="<c:if test="${stat.count%2==1}">colorGrey</c:if><c:if test="${stat.count%2==0}">colorwhite</c:if>">
							<td class="trainLeft" width="120"><a
								href="<%=request.getContextPath() %>/infoservices/articlePage.action?articleID=${articleNews.id }"
								target="_blank" style="cursor: pointer; text-decoration: none">${articleNews.atitle}</a></td>
							<td class="trainLeft" width="50">${articleNews.atype}</td>
							<td class="trainFunction" width="80"><a
								href="<%=request.getContextPath() %>/infoservices/noticemanageredit.action?articleID=${articleNews.id}"
								class="edit">编辑</a><a
								href="<%=request.getContextPath() %>/infoservices/articleNewsdel.action?articleID=${articleNews.id}"
								onClick="return confirm('确定删除此条记录吗？')" class="delete">删除</a></td>
						</tr>
					</c:forEach>
				</c:if>
			</table>

			<c:if test="${empty page_article.result}">
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
						<td><c:if test="${!empty page_article.result}">${controlTable_article}</c:if></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>