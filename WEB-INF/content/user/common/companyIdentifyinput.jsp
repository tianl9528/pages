<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="com.opensymphony.xwork2.util.ValueStack"%>
<%@ page import="org.apache.struts2.ServletActionContext"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.List"%>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.object.*"%>
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

	<title>用户信息管理 - <%=request.getParameter("id") == null ? "新增" : "修改"%></title>
	<%
		String uid = request.getParameter("id");
	%>

</head>
<body>
	<script type="text/javascript">

 function chk(){
	 var user_LogName = document.getElementById("logname").value;
	    var msgKey = '<%=returnValidate%>
		';
			if (msgKey.length == 0) {
				var msg = $.ajax({
					type : "POST",
					url : "userinfo-validate.action?userLongName="
							+ user_LogName,
					async : false
				}).responseText;

				if (msg.length > 0) {
					document.form1.buttomsubmit.disabled = true;
					$("#span").css("color", "red").html("用户已被注册");
					return false;
				} else {
					$("#span").css("color", "red").html(" ");
					document.form1.buttomsubmit.disabled = false;

				}
			}
		}

		function check() {
			var yhNname = document.getElementById("name").value;
			var yhLogName = document.getElementById("logname").value;
			var yhPassword1 = document.getElementById("password1").value;
			var yhPassword2 = document.getElementById("password2").value;
			if (yhNname.length == 0 || yhNname.replace(/\s+/g, "") == ""
					|| yhNname == null) { /* 验证用户名是否为空 */
				alert("请输入用户名字");
				return false;
			}
			if (yhLogName.length == 0 || yhLogName.replace(/\s+/g, "") == ""
					|| yhLogName == null) { /* 验证登录名是否为空 */
				alert("请输入登录名");
				return false;
			}

			if (yhPassword1.length == 0) { /* 验证密码是否为空 */
				alert("密码不能为空");
				return false;
			} else {
				if (yhPassword1 != yhPassword2) { /* 验证两次输入的密码是否一致 */
					alert("两次密码不一致");
					return false;
				}
			}

			var jobNname = document.getElementById("job").value;
			if (jobNname == "") {
				alert("请选择所任职务");
				return false;
			}

			return true;

		}

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



	<div class="clear"></div>

	<form id="form1" name="form1" method="post"
		action="companyIdentifysave.action" onSubmit="return checkforminput()"
		enctype="multipart/form-data">
		<div class="conBox">
			<div class="conTitle">用户信息</div>
			<div class="conMiddle">
				<div>
					<table cellpadding="0" cellspacing="13" border="0" class="selectTb">
						<tr>
							<td>
								<table cellpadding="0" cellspacing="0" border="0"
									class="contentTB">
									<tr class="greyColor">
										<td colspan="2" rowspan="4" class="typeNameTd"
											style="width: 100px"><img
											src="<%=request.getContextPath()%>${user.images_url}"
											onerror="this.src='<%=request.getContextPath()%>/theme/images/de_user.gif'"
											width="200" height="250" /></td>
										<td class="typeNameTd" style="width: 100px">企业名称</td>
										<td class="memberAddTd" align="left" style="width: 350px">
											<input name="user.user_name" type="text"
											class="itemManagerInput" id="user.user_name"
											value="${company.companyname}" disabled="disabled" /> <input
											name="user_id" type="hidden" id="user_id"
											value="${user.user_id}" />
										</td>
									</tr>
									<tr class="greyColor">
										<td class="typeNameTd">企业性质</td>
										<td class="memberAddTd" align="left"><input
											name="user.log_name" type="text" class="itemManagerInput"
											id="user.log_name" value="${company.nature}"
											disabled="disabled" /></td>
									</tr>
									<tr class="greyColor">
										<td class="typeNameTd">行业分类</td>
										<td class="memberAddTd" align="left"><input
											name="user.log_name" type="text" class="itemManagerInput"
											id="user.log_name" value="${company.assortment}"
											disabled="disabled" /></td>
									</tr>
									<tr class="greyColor">
										<td class="typeNameTd">联系方式</td>
										<td class="memberAddTd" align="left"><input
											name="user.mobile" type="text" class="itemManagerInput"
											id="user.mobile" value="${user.mobile}" disabled="disabled" /></td>
									</tr>
									<tr class="whiteColor">
										<td class="typeNameTd">企业地址</td>
										<td class="memberAddTd" align="left"><input
											name="company.address" type="text" class="itemManagerInput"
											id="user.password" value="${company.address}" /></td>
										<td class="typeNameTd">Email</td>
										<td class="memberAddTd" align="left"><input
											onkeyup="value=value.replace(/[^\d.]/g,'') "
											onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d.]/g,''))"
											name="user.email" class="itemManagerInput_m"
											id="user.email" disabled="disabled" value="${user.email}" ></td>
									</tr>
									<tr class="greyColor">
										<td class="typeNameTd">注册资本</td>
										<td class="memberAddTd" align="left"><input
											name="user.mobile" type="text" class="itemManagerInput"
											id="user.mobile" value="${company.registercapital}"
											disabled="disabled" /></td>
										<td class="typeNameTd">经营范围</td>
										<td class="memberAddTd" align="left"><input
											name="user.mobile" type="text" class="itemManagerInput"
											id="user.mobile" value="${company.scope}" disabled="disabled" /></td>
									</tr>
									<tr class="greyColor">
										<td class="typeNameTd" style="width: 100px">是否通过审核</td>
										<td class="memberAddTd" align="left" style="width: 350px">
											<input type="radio" name="user.identify" value="通过审核"
											<c:if test="${user.identify=='通过审核' || empty id }">checked</c:if> />通过审核
											&nbsp;&nbsp;<input type="radio" name="user.identify" value="待审核"
											<c:if test="${user.identify=='待审核'}">checked</c:if> />待审核&nbsp;&nbsp;<input
											type="radio" name="user.identify" value="未通过审核"
											<c:if test="${user.identify=='未通过审核'}">checked</c:if> />未通过审核
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
				<div class="subBtnBox">
					<input type="submit" class="base_btn" onclick="return check();"
						value="提交" /> <input type="button" class="base_btn" value="返回"
						onclick="window.location.href='companyIdentifylist.action'" />
				</div>
			</div>
			<div class="conBottom"></div>
		</div>
	</form>

</body>
</html>