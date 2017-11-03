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
	<div style="padding: 20px 20px 0 20px;">
		<form action="enterpriselist.action" method="post">
			<div class="searchBox">
				<!-- <table>
				</select>
				</td>
				<td class="typeNameTd">字段搜索</td>
				<td class="memberAddTd" align="left"><select name="jobs"
					id="job" mSty="blueCircle">
						<option value="">--请选择--</option>
						<c:forEach items="${job_list}" var="jobs">
							<option value="${jobs.id}"
								<c:if test="${jobs.id eq user.job.id}">selected</c:if>>${jobs.name}</option>
						</c:forEach>
				</select></td>
			</table>
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
				</div class=""> -->
				<div class="panel-heading">
					<a href="vegetable-input.action">新增</a></span>
				</div>
			</div>
		</form>
		<div class="listBox">
			<!-- 	<div class="listTitle">
			蔬菜管理<span class="more"><a href="vegetable-input.action">新增</a></span>
		</div> -->
			<div class="list">
				<!-- 	<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="tTitle">
				<tr>
					<td width="300">图片</td>
					<td width="100">蔬菜代号</td>
					<td width="120">蔬菜品种</td>
					<td width="150">农产品三级代号</td>
					<td width="170">操作</td>
				</tr>
			</table> -->
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="tList" id="list_tb">
					<c:if test="${!empty page_latest.result}">
						<c:forEach items="${page_latest.result}" var="enterprise" varStatus="stat">
							<tr
								class="<c:if test="${stat.count%2==1}">colorGrey</c:if><c:if test="${stat.count%2==0}">colorwhite</c:if>">
								<!-- <td colspan="2" rowspan="4" class="typeNameTd"
								style="width: 50px"><img
								src="<%=request.getContextPath()%>${vegetable.images_url}"
								onerror="this.src='<%=request.getContextPath()%>/theme/images/de_user.gif'"
								width="100" height="100" /></td> 
								<td class="trainLeft" width="100"><a class="pull-left"
									href="<%=request.getContextPath()%>/elecBusiness/vegetable-details.action?id=${vegetable.id}">
										<img class="media-object"
										src="<%=request.getContextPath()%>${vegetable.images_url}"
										style="width: 100px;" alt="...">
								</a></td>-->
								<td class="trainLeft" width="100">${enterprise.eid}</td>
								<td class="trainContent" width="100">${enterprise.etype}</td>
								<!-- <td class="trainFunction" width="100"><a
									href="vegetable-details.action?id=${vegetable.id}"
									class="detail">查看</a><a
									href="vegetable-input.action?id=${vegetable.id}"
									class="edit">编辑</a><a
									href="vegetable-delete.action?id=${vegetable.id}"
									onClick="return confirm('确定删除此条记录吗？')" class="delete">删除</a></td> -->
							</tr>
						</c:forEach>
					</c:if>
				</table>
				<c:if test="${empty page_latest.result}">
					<table width="100%" border="0" cellpadding="0" cellspacing="0"
						class="tTitle">
						<tr>
							<td>没有数据！！！</td>
						</tr>
					</table>
				</c:if>
			</div>
			<!--分页-->
			<div class="">
				<div class="">
					<table border="0" cellpadding="0" cellspacing="0"
						style="margin-left: auto; margin-right: auto">
						<tr>
							<td><c:if test="${!empty page.result}">${controlTable}</c:if></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>