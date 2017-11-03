<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="com.opensymphony.xwork2.util.ValueStack"%>
<%@ page import="org.apache.struts2.ServletActionContext"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.List"%>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String returnValidate = (String) request.getAttribute("returnId") == null ? ""
			: (String) request.getAttribute("returnId");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link href="<%=request.getContextPath()%>/theme/css/training.css"
		rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/theme/css/mSelect.css"
		rel="stylesheet" type="text/css" />
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
	<title>水果<%=request.getParameter("id") == null ? "新增" : "修改"%></title>
	<%
		String uid = request.getParameter("id");
	%><script type="text/javascript">
		$(document).ready(
				function() {
					$("#vdate").datepicker(
							{
								dateFormat : "yy-mm-dd",
								changeYear : true,
								yearRange : "1949:2099",
								monthNames : [ "1月", "2月", "3月", "4月", "5月",
										"6月", "7月", "8月", "9月", "10月", "11月",
										"12月" ]
							});
				});
		$(document).ready(
				function() {
					$("#vexpiry").datepicker(
							{
								dateFormat : "yy-mm-dd",
								changeYear : true,
								yearRange : "1949:2099",
								monthNames : [ "1月", "2月", "3月", "4月", "5月",
										"6月", "7月", "8月", "9月", "10月", "11月",
										"12月" ]
							});
				});
	</script>
</head>
<body>
	<div class="clear"></div>
	<form id="form1" name="form1" method="post" action="fruit-save.action"
		onSubmit="return checkforminput()">
		<div class="conBox">
			<div class="conTitle">水果信息</div>
			<div class="conMiddle">
				<div>
					<table cellpadding="0" cellspacing="13" border="0" class="selectTb">
						<tr>
							<td>
								<table cellpadding="0" cellspacing="0" border="0"
									class="contentTB">
									<input name="id" type="hidden" id="id" value="${fruit.id }"></input>
									<!-- <tr class="greyColor">
										<td class="typeNameTd" width="110">水果名称</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="fruit.id" id="id" type="text"
											class="itemManagerInput" value="${fruit.id }" /></td>
									</tr> -->
									<tr class="whiteColor">
										<td class="typeNameTd" width="110">水果种类</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="fruit.ftype" id="ftype" type="text"
											class="itemManagerInput" value="${fruit.ftype }" /></td>
									</tr>
									<tr class="whiteColor">
										<td class="typeNameTd" width="110">astypeid</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="fruit.astypeid" id="astypeid" type="text"
											class="itemManagerInput" value="${fruit.astypeid }" /></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
				<div class="subBtnBox">
					<input type="submit" class="base_btn" onclick="return check();"
						value="提交" /> <input type="button" class="base_btn" value="返回"
						onclick="window.location.href='fruit.action'" />
				</div>
			</div>
			<div class="conBottom"></div>
		</div>
	</form>
</body>
</html>