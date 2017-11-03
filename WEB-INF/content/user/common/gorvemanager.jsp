<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="sunit.accesscontrol.object.User"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<%
	String base_root = request.getContextPath();
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript"
	src="<%=base_root%>/theme/js/bootstrap.min.js"></script>

<link href="<%=base_root%>/theme/css/bootstrap.css" rel="stylesheet">
<!-- <link href="<%=base_root%>/theme/css/index_new.css" rel="stylesheet"> -->

<link href="<%=base_root%>/theme/css/user.css" rel="stylesheet">
<link href="<%=base_root%>/theme/css/userspace_personal_info.css"
	rel="stylesheet" type="text/css" />


<style>
</style>
<script type="text/javascript">
	$(function() {
		$("#datepicker").datepicker({
			showAnim : "clip",
			changeYear : true
		});
	});

	function check() {
		var yhNname = document.getElementById("name").value;
		var yhPassword1 = document.getElementById("password1").value;
		var yhPassword2 = document.getElementById("password2").value;
		if (yhNname.length == 0 || yhNname.replace(/\s+/g, "") == ""
				|| yhNname == null) { /* 验证用户名是否为空 */
			alert("请输入用户名字");
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
		return true;
	}
</script>
<title>用户空间>>信息修改</title>
</head>
<body>
	<div style="max-width: 1007px; min-width: 722px; margin-top: 15px;">
		<div class="panel panel-default">
			<div class="panel-heading">政府管理员信息修改与完善</div>
			<div class="panel-body">

				<form class="form-horizontal" role="form" id="form1" name="form1"
					method="post" action="user-save.action?id=${user.user_id }"
					onSubmit="return checkforminput()" enctype="multipart/form-data">

					<div class="row" style="margin: 0">
						<div class="row" style="margin: 0">
							<div class="form-group">
								<label for="name" class="col-lg-2 col-xs-2 control-label"
									style="text-align: right">姓名</label>
								<div class="col-lg-5 col-xs-5">
									<input type="text" class="form-control" placeholder="姓名"
										name="user.user_name" id="name" value="${user.user_name}">
								</div>
							</div>
						</div>
·						<div class="col-lg-4 col-xs-4 col-lg-offset-8 col-xs-offset-8"
							style="margin-top: -206px">
							<img src="<%=request.getContextPath()%>${user.images_url}"
								onerror="this.src='<%=request.getContextPath()%>/theme/images/de_user.gif'"
								style="height: 180px" class="img-rounded" /> <label
								for="exampleInputFile"> 上传头像 <input
								style="margin-left: 5px; margin-top: 10px;" type="file"
								name="reportFiles" value="上传头像" />
							</label>
						</div>
					</div>


					<div class="row" style="margin: 0">
						<div class="form-group">
							<label for="email" class="col-lg-2 col-xs-2 control-label"
								style="text-align: right">QQ</label>
							<div class="col-lg-5 col-xs-5">
								<input type="text" class="form-control" id="qq" placeholder="QQ"
									name="user.qq" value="${user.qq }">
							</div>
						</div>
					</div>
				
					<div class="row" style="margin: 0">
						<div class="row" style="margin: 0">
							<div class="form-group">
								<label for="loginname" class="col-lg-2 col-xs-2 control-label"
									style="text-align: right">登录名</label>
								<div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" disabled="true"
										value="${user.log_name}" placeholder="登录名">
								</div>
							</div>
						</div>


						<div class="row" style="margin: 0">
							<div class="form-group">
								<label for="pwd" class="col-lg-2 col-xs-2 control-label"
									style="text-align: right">密码</label>
								<div class="col-lg-4 col-xs-4">
									<input type="password" class="form-control" id="password1"
										placeholder="密码" value="${user.password}">
								</div>
								<label for="ensurepwd" class="col-lg-2 col-xs-2 control-label"
									style="text-align: right">确认密码</label>
								<div class="col-lg-4 col-xs-4">
									<input type="password" class="form-control" id="password2"
										placeholder="确认密码" value="${user.password}">
								</div>
							</div>
						</div>
					</div>

					<div class="row" style="margin: 0">
						<div class="form-group ">
							<label for="public" class="col-lg-3 col-xs-3 control-label"
								style="text-align: right">是否公开个人资料 </label>

							<div class="col-lg-4 col-xs-4" style="padding: 7px">

								<label><input type="radio" style="margin-left: 0px;"
									checked="checked" name="sex" id="public" value="yes" />是</label>&nbsp;
								<label><input type="radio" style="margin-left: 0px;"
									name="sex" id="public" value="no" />否</label>

							</div>
						</div>
					</div>
					<div class="form-group ">
						<div class="col-lg-6 col-lg-offset-4 col-xs-6 col-xs-offset-4">
							<button type="submit" class="btn btn-success col-lg-2 col-xs-2">提交</button>
							<button type="reset"
								class="btn btn-danger col-lg-2 col-lg-offset-1 col-xs-2 col-xs-offset-1">重置</button>
						</div>
					</div>

				</form>
				<!--form-horizontal-->
			</div>
		</div>
		<!--panel panel-default-->
	</div>
</body>
</html>