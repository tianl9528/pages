<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="com.opensymphony.xwork2.util.ValueStack"%>
<%@ page import="org.apache.struts2.ServletActionContext"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.List"%>

<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.object.User"%>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>搜索结果</title>
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
	<form
			action="<%=request.getContextPath()%>/infoservices/techNewsSearch.action"
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
		</form>

	<div class="listBox">
		<div class="listTitle">
			搜索信息<span class="more"></span>
		</div>
		<div class="list">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="tTitle">
				<tr>
					<td width="200">信息标题</td>
					<td width="200">信息类型</td>
					<td width="80">发布时间</td>
				</tr>
			</table>
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="tList" id="list_tb">
				<c:if test="${!empty page_techNews.result}">
					<c:forEach items="${page_techNews.result}" var="techNews"
						varStatus="stat">
						<tr
							class="<c:if test="${stat.count%2==1}">colorGrey</c:if><c:if test="${stat.count%2==0}">colorwhite</c:if>">
							<td class="trainLeft" width="200"><a
								href="techinfodetail.action?techNewsID=${techNews.iid }"
								target="_blank" style="cursor: pointer; text-decoration: none">${techNews.ititle}</a></td>
							<td class="trainLeft" width="200">${techNews.agftupeid}</td>
							<td class="trainFunction" width="80"><fmt:formatDate
									value="${techNews.idate }"></fmt:formatDate></td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
			<c:if test="${empty page_techNews.result}">
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
						<td><c:if test="${!empty page_techNews.result}">${controlTable_techNews}</c:if></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>