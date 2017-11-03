<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String base_root = request.getContextPath();
%>
<html>
<title>检验检测服务 >> 检测服务</title>
<head>

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
	<div style="width: 1007px; margin: 0 auto">
		<table class="table FormTable" align="center" cellpadding="">
			<tbody>
				<tr>
					<th colspan="4" class="line">
						<h3 style="text-align: center; font-weight: bold">
							<span>服务</span>
						</h3>
					</th>
				</tr>
				<tr>
					<th width="15%">服务名称：</th>
					<td colspan="3">${serv.sname }</td>
				</tr>
				<tr>
					<th>单位名称：</th>
					<td colspan="3">${serv.sinstname }</td>
				</tr>
				<tr>
					<th>服务类别：</th>
					<td colspan="3">${serv.stype }</td>
				</tr>

				<tr>
					<th style="padding: 0px 5px 0px 5px;">服务内容描述：</th>
					<td colspan="3">${serv.scontent }</td>
				</tr>
				<tr>
					<th style="padding: 0px 5px 0px 5px;">服务流程说明：</th>
					<td colspan="3">${serv.sstream }</td>
				</tr>
				<tr>
					<th>服务时间：</th>
					<td width="310">${serv.sservdate }</td>
					<th>发布时间：</th>
					<td width="295">${serv.sdate }</td>
				</tr>

				<tr>
					<th>服务方式：</th>
					<td colspan="1">${serv.smethod }</td>
					<th>关键字：</th>
					<td colspan="1">${serv.skeyword }</td>
				</tr>

				<tr>
					<th colspan="4"><h4>&nbsp;</h4></th>
				</tr>

				<tr>
					<th>联系人：</th>
					<td colspan="1">${serv.scontact }</td>
					<th width="15%">联系电话：</th>
					<td colspan="1">${serv.sphone }</td>
				</tr>

				<tr>
					<th>手机：</th>
					<td colspan="1">${serv.smobile }</td>
					<th>电子邮箱：</th>
					<td colspan="1">${serv.semail }</td>
				</tr>

				<tr>
					<th>地址：</th>
					<td colspan="1">${serv.saddress }</td>
					<th>邮编：</th>
					<td colspan="1">${serv.spostcode }</td>
				</tr>

				<tr>
					<th>传真：</th>
					<td>${serv.sfax }</td>
					<th>附件：</th>
					<td>
						<div>${serv.sadd }</div>
					</td>
				</tr>

				<tr>
					<td colspan="4" align="center"><input class="btn btn-primary"
						value="关 闭" type="button" onclick="javascript:window.close();">
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>