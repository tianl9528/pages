<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="com.opensymphony.xwork2.util.ValueStack"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="org.apache.struts2.ServletActionContext"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.List"%>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String returnValidate = (String) request.getAttribute("returnId") == null
			? ""
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
	<title>蔬菜<%=request.getParameter("id") == null ? "新增" : "修改"%></title>
	<%
		String uid = request.getParameter("id");
	%>
	<script type="text/javascript">
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
	<form id="form1" name="form1" method="post"
		action="vegetable-save.action" onSubmit="return checkforminput()"
		enctype="multipart/form-data">
		<div class="conBox">
			<div class="conTitle">蔬菜信息</div>
			<div class="conMiddle">
				<div>
					<table cellpadding="0" cellspacing="13" border="0" class="selectTb">
						<tr>
							<td>
								<table cellpadding="0" cellspacing="0" border="0"
									class="contentTB">
									<input name="id" type="hidden" id="id"
										value="${vegetable.id }"></input>
									<tr class="whiteColor">
										<td class="typeNameTd" width="110">蔬菜代号</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.id" id="id" type="text"
											class="itemManagerInput" value="${vegetable.id }" /></td>
										<td class="typeNameTd" width="110">蔬菜品种</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vtype" id="vtype" type="text"
											class="itemManagerInput" value="${vegetable.vtype }" /></td>
										<td class="typeNameTd" width="110">农产品三级代号<input
											name="vegetable.vprod" id="vprod" type="text"
											class="itemManagerInput" value="${vegetable.agriculturethirdtype.astypeid }" /></td>
									</tr>
									<tr class="whiteColor">
										<td class="typeNameTd" width="110">产地</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vprod" id="vprod" type="text"
											class="itemManagerInput" value="${vegetable.vprod }" /></td>
										<td class="typeNameTd" width="110">制作方法</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vmake" id="vmake" type="text"
											class="itemManagerInput" value="${vegetable.vmake }" /></td>
										<td class="typeNameTd" width="110">等级</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vlevel" id="vlevel" type="text"
											class="itemManagerInput" value="${vegetable.vlevel }" /></td>
									</tr>
									<tr class="whiteColor">
										<td class="typeNameTd" width="110">农药标准</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vpesticide" id="vpesticide" type="text"
											class="itemManagerInput" value="${vegetable.vpesticide }" /></td>
										<td class="typeNameTd" width="110">杂质</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vimpurity" id="vimpurity" type="text"
											class="itemManagerInput" value="${vegetable.vimpurity }" /></td>
										<td class="typeNameTd" width="110">纯度</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vpure" id="vpure" type="text"
											class="itemManagerInput" value="${vegetable.vpure }" /></td>
									</tr>
									<tr class="whiteColor">
										<td class="typeNameTd" width="110">完整性</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vintegrity" id="vintegrity" type="text"
											class="itemManagerInput" value="${vegetable.vintegrity }" /></td>
										<td class="typeNameTd" width="110">安全性</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vsafe" id="vsafe" type="text"
											class="itemManagerInput" value="${vegetable.vsafe }" /></td>
										<td class="typeNameTd" width="110">病虫害</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vdisease" id="vdisease" type="text"
											class="itemManagerInput" value="${vegetable.vdisease }" /></td>
									</tr>
									<tr class="whiteColor">
										<td class="typeNameTd" width="110">合格率</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vquality" id="vquality" type="text"
											class="itemManagerInput" value="${vegetable.vquality }" /></td>
										<td class="typeNameTd" width="110">农药残留量</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vremain" id="vremain" type="text"
											class="itemManagerInput" value="${vegetable.vremain }" /></td>
									</tr>
									<tr class="whiteColor">
										<td class="typeNameTd" width="110">膳食纤维含量</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vfibre" id="vfibre" type="text"
											class="itemManagerInput" value="${vegetable.vfibre }" /></td>
										<td class="typeNameTd" width="110">蛋白质含量</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vprotein" id="vprotein" type="text"
											class="itemManagerInput" value="${vegetable.vprotein }" /></td>
										<td class="typeNameTd" width="110">脂肪含量</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vfat" id="vfat" type="text"
											class="itemManagerInput" value="${vegetable.vfat }" /></td>
									</tr>
									<tr class="whiteColor">
										<td class="typeNameTd" width="110">储藏方法</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vstore" id="vstore" type="text"
											class="itemManagerInput" value="${vegetable.vstore }" /></td>
										<td class="typeNameTd" width="110">包装方式</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vpackage" id="vpackage" type="text"
											class="itemManagerInput" value="${vegetable.vpackage }" /></td>
									</tr>
									<tr class="whiteColor">
										<td class="typeNameTd" width="110">规格</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vspec" id="vspec" type="text"
											class="itemManagerInput" value="${vegetable.vspec }" /></td>
										<td class="typeNameTd" width="110">特色简介</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vfeature" id="vfeature" type="text"
											class="itemManagerInput" value="${vegetable.vfeature }" /></td>
									</tr>
									<tr class="greyColor">
										<td class="typeNameTd">出产时间：</td>
										<td class="memberAddTd" align="left"><input
											class="itemManagerInput_m" id="vdate" name="vegetable.vdate"
											value="<fmt:formatDate value="${vegetable.vdate }" pattern="yyyy-MM-dd"/>"
											style="cursor: pointer"></td>
										<td class="typeNameTd" width="110">保质期</td>
										<td class="memberAddTd" align="left" width="350"><input
											name="vegetable.vexpiry" id="vexpiry" type="text"
											class="itemManagerInput" value="${vegetable.vexpiry }" /></td>
									</tr>
									<tr class="greyColor">
										<td class="typeNameTd">图片</td>
										<td class="memberAddTd" align="left" colspan="3"><input
											type="file" name="image_reportFiles" class="" /></td>
										<td class="typeNameTd">视屏</td>
										<td class="memberAddTd" align="left" colspan="3"><input
											type="file" name="video_reportFiles" class="" /></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
				<div class="subBtnBox">
					<input type="submit" class="base_btn" onclick="return check();"
						value="提交" /> <input type="button" class="base_btn" value="返回"
						onclick="window.location.href='vegetable.action'" />
				</div>
			</div>
			<div class="conBottom"></div>
		</div>
	</form>
</body>
</html>