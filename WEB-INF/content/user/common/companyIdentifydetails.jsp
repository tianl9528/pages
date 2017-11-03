<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link href="<%=request.getContextPath()%>/theme/css/training.css"
		rel="stylesheet" type="text/css" />

	<title>用户信息管理 >> 人员详细信息</title>
</head>
<body>

	<div class="clear"></div>
	<div class="conBox">
		<div class="conTitle">人员信息</div>
		<div class="conMiddle">
			<div>
				<table cellpadding="0" cellspacing="13" border="0" class="selectTb">
					<td>
						<table cellpadding="0" cellspacing="0" border="0"
							class="contentTB">
							<tr class="greyColor">
								<td colspan="2" rowspan="4" class="typeNameTd"
									style="width: 100px"><c:if test="${empty user.images_url}">
										<img
											src="<%=request.getContextPath()%>/theme/images/de_user.gif"
											width="200" height="250" />
									</c:if> <c:if test="${!empty user.images_url}">
										<img src="<%=request.getContextPath()%>${user.images_url}"
											width="200" height="250" />
									</c:if></td>
								<td class="typeNameTd" style="width: 150px">姓名</td>
								<td class="memberAddTd" align="left">${user.user_name}</td>
							</tr>
							<tr class="greyColor">
								<td class="typeNameTd">登录名</td>
								<td class="memberAddTd" align="left">${user.log_name}</td>
							</tr>
							<tr class="greyColor">
								<td class="typeNameTd">性别</td>
								<td class="memberAddTd" align="left"><c:if
										test="${user.sex=='0' || empty id }">男</c:if> <c:if
										test="${user.sex=='1'}">女</c:if></td>
							</tr>
							<tr class="greyColor">
								<td class="typeNameTd" style="width: 100px">联系方式</td>
								<td class="memberAddTd" align="left" style="width: 350px">
									${user.mobile}</td>
							</tr>

							<tr class="whiteColor">

								<td class="typeNameTd" width="150">Email</td>
								<td class="memberAddTd" align="left" width="200">${user.email}</td>
								<td class="typeNameTd" width="150">职务</td>
								<td class="memberAddTd" align="left">
									<!-- ${user.job.name} -->
								</td>
							</tr>

							<tr class="greyColor">
								<td class="typeNameTd">审核状态</td>
								<td colspan="3" align="left" class="memberAddTd">
									${user.identify}</td>
							</tr>

						</table>

					</td>
					</tr>
				</table>

			</div>
			<div class="subBtnBox">
				<input type="button" class="base_btn" value="返回"
					onclick="history.back(-1)" />

			</div>
		</div>
		<div class="conBottom"></div>
	</div>

</body>
</html>