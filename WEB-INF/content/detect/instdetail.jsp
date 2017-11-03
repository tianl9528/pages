<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String base_root = request.getContextPath();
%>
<html>
<title>检测检验机构 >> 机构详情</title>
<head>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/bootstrap.min.js"></script>
<link href="<%=base_root%>/theme/css/bootstrap.min.css" rel="stylesheet" />
<style type="text/css">
.Formtable {
	width: 990px;
	background-color: #F5FDF2;
	line-height: 30px;
	border-collapse: collapse;
	margin-right: auto;
	margin-left: auto;
	margin-top: 10px;
}

.FormTable th {
	border: 1px solid #BEEC94;;
	line-height: 30px;
	font-size: 14px;
	text-align: center;
}

.FormTable td {
	border: 1px solid #BEEC94;;
	background-color: #FFF;
	line-height: 30px;
	padding: 0 8px 0 10px;
}
</style>
</head>



<body>
<div
		style="max-width: 1007px; min-width: 722px; padding: 20px 0 0 0;">
		<table class="table Formtable">
			<tbody>
				<tr>
					<th colspan="4">
						<h3 style="text-align: center; font-weight: bold">
							<span>机构详情</span>
						</h3>
					</th>
				</tr>
				<tr>
					<th width="17%">机构名称：</th>
					<td colspan="3">${inst.dname }</td>
				</tr>
				<tr>
					<th>机构类型：</th>
					<td colspan="3"><c:if test="${empty inst.dtype}">暂无</c:if> <c:if
							test="${!empty inst.dtype}">${inst.dtype}</c:if></td>
				</tr>
				<tr>
					<th>机构简介：</th>
					<td colspan="3"><c:if test="${empty inst.dintroduce}">暂无</c:if>
						<c:if test="${!empty inst.dintroduce}">${inst.dintroduce}</c:if></td>
				</tr>
				<tr>
					<th>服务内容：</th>
					<td colspan="3"><c:if test="${empty inst.dservice}">暂无</c:if>
						<c:if test="${!empty inst.dservice}">${inst.dservice}</c:if></td>
				</tr>
				<tr>
					<th>产品或成果(介绍)：</th>
					<td colspan="3"><c:if test="${empty inst.dproduct}">暂无</c:if>
						<c:if test="${!empty inst.dproduct}">${inst.dproduct}</c:if></td>
				</tr>
				<tr>
					<th>相关团队(介绍)：</th>
					<td colspan="3"><c:if test="${empty inst.dteam}">暂无</c:if> <c:if
							test="${!empty inst.dteam}">${inst.dteam}</c:if></td>
				</tr>
				<tr>
					<th>特色资源(介绍) ：</th>
					<td colspan="3"><c:if test="${empty inst.dresource}">暂无</c:if>
						<c:if test="${!empty inst.dresource}">${inst.dresource}</c:if></td>
				</tr>
				<tr>
					<th>项目或课题(描述)：</th>
					<td colspan="3"><c:if test="${empty inst.dproject}">暂无</c:if>
						<c:if test="${!empty inst.dproject}">${inst.dproject}</c:if></td>
				</tr>
				<tr>
					<th>关键字：</th>
					<td colspan="3"><c:if test="${empty inst.dkeyword}">暂无</c:if>
						<c:if test="${!empty inst.dkeyword}">${inst.dkeyword}</c:if></td>
				</tr>
				<tr>
					<th colspan="4">
						<h4>&nbsp;</h4>
					</th>
				</tr>
				<tr>
					<th>联系人：</th>
					<td colspan="1" width="280">${inst.dcontact}</td>
					<th width="100">联系电话：</th>
					<td colspan="1" width="280">${inst.dphone}</td>
				</tr>
				<tr>
					<th>手机：</th>
					<td colspan="1">${inst.dmobile}</td>
					<th>电子邮箱：</th>
					<td colspan="1">${inst.demail}</td>
				</tr>
				<tr>
					<th>地址：</th>
					<td colspan="1">${inst.daddress}</td>
					<th>邮编：</th>
					<td colspan="1">${inst.dpostcode}</td>
				</tr>
				<tr>
					<th>机构图片或logo：</th>
					<td colspan="3">
					<c:if test="${empty inst.dlogo}"><img
						src="<%=base_root%>/theme/images/none.jpg" width="70px"
						height="70px"></c:if>
						<c:if test="${!empty inst.dlogo}"><img
						src="<%=base_root%>/${inst.dlogo}" width="70px"
						height="70px"></c:if>
					</td>
				</tr>
				<tr>
					<td colspan="4" align="center"><input class="btn btn-primary"
						value="关闭" type="button" onclick="javascript:window.close();">
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>