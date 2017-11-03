<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String base_root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="<%=base_root%>/theme/css/index.css" rel="stylesheet"
	type="text/css" />
</head>
<body style="background:none;">
<div class="tab-pane" id="tab6">
						<!--企业招聘-->
						<div class="listBox" style="width: 790px">
							<div class="listTitle" style="width: 790px">
								企业招聘<span class="more"></span>
							</div>
							<div class="list" style="width: 790px">
								<table width="100%" border="0" cellpadding="0" cellspacing="0"
									class="tTitle">
									<tr>
										<td width="40">主题</td>
										<td width="40">发布人</td>
										<td width="40">发布时间</td>
										<td width="80">操作</td>
									</tr>
								</table>
								<table width="100%" border="0" cellpadding="0" cellspacing="0"
									class="tList" id="list_tb">
									<c:if test="${!empty page_rt.result}">
										<c:forEach items="${page_rt.result}" var="rt"
											varStatus="stat">
											<tr
												class="<c:if test="${stat.count%2==1}">colorGrey</c:if><c:if test="${stat.count%2==0}">colorwhite</c:if>">
												<td class="trainLeft" width="40"><a href="<%=base_root%>/infoExchange/rtdetail.action?id=${rt.id}" target="_blank" class="active">招聘：&nbsp;${rt.job}</a></td>
												<td class="trainLeft" width="40" style="font-size:12px;">${rt.user.company.companyname}</td>
												<td class="trainLeft" width="40" style="font-size:12px;"><fmt:formatDate value="${rt.pubdate}"></fmt:formatDate></td>
												<td class="trainFunction" width="80">	
													<a href="<%=base_root%>/infoExchange/rtdetail.action?id=${rt.id}" target="_blank" class="detail">查看</a>
													<a href="<%=base_root%>/infopublish/rtedit.action?id=${rt.id}" target="_blank" class="edit">编辑</a>											
													<a href="<%=base_root%>/infopublish/rt-delete.action?id=${rt.id}"
													onClick="return confirm('确定删除此条记录吗？')" class="delete">删除</a></td>
											</tr>
										</c:forEach>
									</c:if>
								</table>
								<c:if test="${empty page_rt.result}">
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
											<td><c:if test="${!empty page_rt.result}">${controlTable_rt}</c:if></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!--tab6-->
</body>
</html>