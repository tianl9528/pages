<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet">
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
							<span>政策</span>
						</h3>
					</th>
				</tr>

				<tr>
					<th width="15%">标题：</th>
					<td colspan="3" width="85%">${law.ltitle }</td>
				</tr>

				<tr>
					<th>内容：</th>
					<td colspan="3">${law.lcontent }</td>
				</tr>

				<tr>
					<th>详细信息：</th>
					<td colspan="3">
						<div id="content">
							<div class="content">${law.ldetail }</div>
						</div>
						</div>
					</td>
				</tr>

				<tr>
					<th>消息来源：</th>
					<td colspan="3">${law.lsource }</td>
				</tr>

				<tr>
					<th>作者：</th>
					<td colspan="3">${law.lauthor }</td>
				</tr>

				<tr>
					<th>发布时间：</th>
					<td colspan="3"><fmt:formatDate value="${law.ldate }"></fmt:formatDate></td>
				</tr>

				<tr>
					<th>所属分类</th>
					<td colspan="3">${law.lclassfy }</td>
				</tr>
				<tr>
					<th>所属栏目：</th>
					<td colspan="3">${law.ltype }</td>
				</tr>
				<tr>
					<th>附件：</th>

					<td colspan="3">
						<div>${law.ladd }</div>
					</td>
				</tr>
				<tr>
					<td colspan="4" class="Command" align="center"><input
						class="btn btn-primary" value="关闭" type="button"
						onclick="javascript:window.close();"></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>