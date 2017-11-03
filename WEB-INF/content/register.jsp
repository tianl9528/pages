<%@ page contentType="text/html; charset=utf-8" language="java"%>
<!DOCTYPE html>
<%
	String base_root = request.getContextPath();
%>
<html>
<head>
<title>广东省专业镇信息服务平台注册页面</title>
<meta charset="utf-8">
<!-- Bootstrap -->
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/appjs/intere/intere.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery-ui-1.8.20.custom.min.js"></script>
	
<link href="<%=base_root%>/theme/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=base_root%>/theme/css/register.css" rel="stylesheet" />
<link href="<%=base_root%>/theme/css/jquery-ui-1.8.20.custom.css" rel="stylesheet" />

<style type="text/css">
	#intere-dialog{
		display: none;
	}
	.ui-dialog .ui-dialog-buttonpane .ui-dialog-buttonset button{ 
		width:100px; height:30px;
	}
	.ui-widget-content a{
		text-decoration: none;
		border: none;
	}
	.tab-item{
		width: 66px;
		height: 66px;
		cursor: pointer;
		position: relative;
		z-index: 1;
		float: left;
		font-size: 12px;
		margin-right: 15px;
		margin: 0 15px 10px 0;
		background-color: #f0ffea;		
		text-align: center;
		-webkit-box-shadow: 0 1px 2px #e0e3de;
		-moz-box-shadow: 0 1px 2px #e0e3de;
		box-shadow: 0 1px 2px #e0e3de;
		-webkit-border-radius: 50px;
		-moz-border-radius: 50px;
		border-radius: 50px;
	}
	.tab-item span{
		line-height: 66px;
	}
	.rightbar{
		position: absolute;
		top: 150px;
		right: 0;
		width: 35px;
		height: 402px;
		background-color: #4EB07C;
	}
	.rightbar-tab{
		position: relative;
		right: 0;
		width: 35px;
		cursor: pointer;
		height: 35px;
		margin: 8px 0px;
	}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$('.nav-tabs > li').click(function() {
			$('.tip').text("");
		});
		checkperson();
		checkexpert();
		checkenterprise();
	});
	function checkperson() {

		$('#username').blur(function(e) {
			$("#personregist").removeAttr("disabled");
			var usernamestr = $('#username').val();
			if (usernamestr == '') {
				$('#usernametip').text("请输入姓名，姓名不能为空");
			}
		});
		$('#username').focus(function(e) {
			$('#usernametip').text("");
		});
		$('#userlogname').blur(function(e) {
			var userlognamestr = $('#userlogname').val();
			if (userlognamestr == '') {
				$('#userlognametip').text("请输入用户名，用户名不能为空");
			}
		});
		$('#userlogname').focus(function(e) {
			$('#userlognametip').text("");
		});
		$('#email')
				.blur(
						function(e) {
							var emailstr = $('#email').val();
							var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
							if (!(reg.test(emailstr))) {
								$('#emailtip').text("邮箱格式错误");
							}
							if (emailstr == '') {
								$('#emailtip').text("请输入邮箱，邮箱不能为空");
							}
						});
		$('#email').focus(function(e) {
			$('#emailtip').text("");
		});
		$('#pwd').blur(function(e) {
			var pwdstr = $('#pwd').val();
			var pwdagainstr = $('#pwdagain').val();
			var pwdreg = /^(?=.*[0-9].*)(?=.*[a-zA-Z].*).{8,}$/;
			if (pwdstr == '') {
				$('#pwdtip').text("请输入密码，密码不能为空");
			} else {
				if (!(pwdreg.test(pwdstr))) {
					$('#pwdtip').text("密码至少包含数字和字母且不少于8位");
				}
			}
			if (pwdstr == pwdagainstr) {
				$('#pwdagaintip').text("");
			}
			if (pwdagainstr != '' && pwdstr != pwdagainstr) {
				$('#pwdagaintip').text("密码不一致")
			}
		});
		$('#pwd').focus(function(e) {
			$('#pwdtip').text("");
		});
		$('#pwdagain').blur(function(e) {
			var pwdstr = $('#pwd').val();
			var pwdagainstr = $('#pwdagain').val();
			if (pwdstr != pwdagainstr) {
				$('#pwdagaintip').text("密码不一致")
			}
		});
		$('#pwdagain').focus(function(e) {
			$('#pwdagaintip').text("");
		});
	}

	function checkexpert() {
		$('#expert_username').blur(function(e) {
			$("#expertregist").removeAttr("disabled");
			var usernamestr = $('#expert_username').val();
			if (usernamestr == '') {
				$('#expert_usernametip').text("请输入姓名，姓名不能为空");
			}
		});
		$('#expert_username').focus(function(e) {
			$('#expert_usernametip').text("");
		});
		$('#expert_userlogname').blur(function(e) {
			var usernamestr = $('#expert_userlogname').val();
			if (usernamestr == '') {
				$('#expert_userlognametip').text("请输入用户名，用户名不能为空");
			}
		});
		$('#expert_userlogname').focus(function(e) {
			$('#expert_userlognametip').text("");
		});
		/* 	$('#expert_number').blur(function(e) {
				var expert_numberstr = $('#expert_number').val();
				if (expert_numberstr == '') {
					$('#expert_numbertip').text("请输入专家编号，专家编号不能为空");
				}
			});
			$('#expert_number').focus(function(e) {
				$('#expert_numbertip').text("");
			}); */
		$('#expert_email')
				.blur(
						function(e) {
							var emailstr = $('#expert_email').val();
							var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
							if (!(reg.test(emailstr))) {
								$('#expert_emailtip').text("邮箱格式错误");
							}
							if (emailstr == '') {
								$('#expert_emailtip').text("请输入邮箱，邮箱不能为空");
							}
						});
		$('#expert_email').focus(function(e) {
			$('#expert_emailtip').text("");
		});
		$('#expert_pwd').blur(function(e) {
			var pwdstr = $('#expert_pwd').val();
			var pwdagainstr = $('#expert_pwdagain').val();
			var pwdreg = /^(?=.*[0-9].*)(?=.*[a-zA-Z].*).{8,}$/;
			if (pwdstr == '') {
				$('#expert_pwdtip').text("请输入密码，密码不能为空");
			} else {
				if (!(pwdreg.test(pwdstr))) {
					$('#expert_pwdtip').text("密码至少包含数字和字母且不少于8位");
				}
			}
			if (pwdstr == pwdagainstr) {
				$('#expert_pwdagaintip').text("");
			}
			if (pwdagainstr != '' && pwdstr != pwdagainstr) {
				$('#expert_pwdagaintip').text("密码不一致")
			}
		});
		$('#expert_pwd').focus(function(e) {
			$('#expert_pwdtip').text("");
		});
		$('#expert_pwdagain').blur(function(e) {
			var pwdstr = $('#expert_pwd').val();
			var pwdagainstr = $('#expert_pwdagain').val();
			if (pwdstr != pwdagainstr) {
				$('#expert_pwdagaintip').text("密码不一致")
			}
		});
		$('#expert_pwdagain').focus(function(e) {
			$('#expert_pwdagaintip').text("");
		});
	}

	function checkenterprise() {

		$('#enterprise_username').blur(function(e) {
			$("#enterpriseregist").removeAttr("disabled");
			var usernamestr = $('#enterprise_username').val();
			if (usernamestr == '') {
				$('#enterprise_usernametip').text("请输入姓名，姓名不能为空");
			}
		});
		$('#enterprise_username').focus(function(e) {
			$('#enterprise_usernametip').text("");
		});
		$('#enterprise_userlogname').blur(function(e) {
			var usernamestr = $('#enterprise_userlogname').val();
			if (usernamestr == '') {
				$('#enterprise_userlognametip').text("请输入用户名，用户名不能为空");
			}
		});
		$('#enterprise_userlogname').focus(function(e) {
			$('#enterprise_userlognametip').text("");
		});
		/* 		$('#enterprise_license_number').blur(function(e) {
		 var str = $('#enterprise_license_number').val();
		 if (str == '') {
		 $('#enterprise_license_numbertip').text("请输入执照号，执照号不能为空");
		 }
		 });
		 $('#enterprise_license_number').focus(function(e) {
		 $('#enterprise_license_numbertip').text("");
		 }); */
		$('#enterprise_email')
				.blur(
						function(e) {
							var emailstr = $('#enterprise_email').val();
							var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
							if (!(reg.test(emailstr))) {
								$('#enterprise_emailtip').text("邮箱格式错误");
							}
							if (emailstr == '') {
								$('#enterprise_emailtip').text("请输入邮箱，邮箱不能为空");
							}
						});
		$('#enterprise_email').focus(function(e) {
			$('#enterprise_emailtip').text("");
		});
		$('#enterprise_pwd').blur(function(e) {
			var pwdstr = $('#enterprise_pwd').val();
			var pwdagainstr = $('#enterprise_pwdagain').val();
			var pwdreg = /^(?=.*[0-9].*)(?=.*[a-zA-Z].*).{8,}$/;
			if (pwdstr == '') {
				$('#enterprise_pwdtip').text("请输入密码，密码不能为空");
			} else {
				if (!(pwdreg.test(pwdstr))) {
					$('#enterprise_pwdtip').text("密码至少包含数字和字母且不少于8位");
				}
			}
			if (pwdstr == pwdagainstr) {
				$('#enterprise_pwdagaintip').text("");
			}
			if (pwdagainstr != '' && pwdstr != pwdagainstr) {
				$('#enterprise_pwdagaintip').text("密码不一致")
			}
		});
		$('#enterprise_pwd').focus(function(e) {
			$('#enterprise_pwdtip').text("");
		});
		$('#enterprise_pwdagain').blur(function(e) {
			var pwdstr = $('#enterprise_pwd').val();
			var pwdagainstr = $('#enterprise_pwdagain').val();
			if (pwdstr != pwdagainstr) {
				$('#enterprise_pwdagaintip').text("密码不一致")
			}
		});
		$('#enterprise_pwdagain').focus(function(e) {
			$('#enterprise_pwdagaintip').text("");
		});
	}

	function registPerson() {
		if ($("#usernametip").text() == "" && $("#userlognametip").text() == ""
				&& $("#emailtip").text() == "" && $("#pwdtip").text() == ""
				&& $("#pwdagaintip").text() == "") {
			$("#personform").submit();
		}
	}

	function registExpert() {
		if ($("#expert_usernametip").text() == ""
				&& $("#expert_userlognametip").text() == ""
				&& $("#expert_emailtip").text() == ""
				&& $("#expert_pwdtip").text() == ""
				&& $("#expert_pwdagaintip").text() == "") {
			$("#expertform").submit();
		}
	}

	function registEnterprise() {
		if ($("#enterprise_usernametip").text() == ""
				&& $("#enterprise_userlognametip").text() == ""
				&& $("#enterprise_emailtip").text() == ""
				&& $("#enterprise_pwdtip").text() == ""
				&& $("#enterprise_pwdagaintip").text() == "") {
			$("#enterpriseform").submit();
		}
	}
</script>
<style type="text/css">
.form-group {
	margin: 0;
}

.content {
	margin: 0 auto;
	width: 990px;
	overflow: hidden;
}

.head {
	padding: 15px 0;
	border-bottom: 2px solid #398439;
}

.regcontainer {
	background: #F7F7F7;
	border: #DEDEDE 1px solid;
	padding: 0 30px;
	margin: 30px 0 0 0;
	width: 990px;
	height: 500px;
}

.regcontainer>.left {
	float: left;
	margin: 15px 0;
	padding-right: 15px;
	border-right: #D8D8D8 1px solid;
	min-width: 639px;
	height: 408px;
}

.regcontainer>.right {
	float: right;
	width: 280px;
	padding: 0 5px;
}

.regcontainer>.right>.login {
	margin-top: 30px;
	padding: 30px;
	border-bottom: #D8D8D8 1px solid;
}

.regcontainer>.right>.introduce {
	padding: 15px;
}

.regcontainer>.right>.introduce>h5 {
	color: #FF8133;
	font-weight: bold;
}

.regcontainer>.right>.introduce>p {
	color: #0F0F0F;
}

.tip {
	margin: 0 0;
	color: #F00;
	font-size: 10px;
}

.control-label {
	text-align: right;
	width: 75px;
	padding: 7px;
}

.tipmessage {
	text-align: right;
	padding: 2px;
	margin-top: 5px;
	color: red;
	font-size: 14px;
	color: red;
}
</style>

</head>

<body style="background-color: white">
	<div class="content">
		<div class="head">
			<img src="<%=base_root%>/theme/images/loginimg/logo04.png" />
		</div>
		<div class="regcontainer">
			<ul class="nav nav-tabs" style="margin-top: 15px">
				<li style="padding: 10px 15px; font-weight: bold">请选择注册类型</li>
				<li class="active"><a href="#person" data-toggle="tab">个人用户</a></li>
				<li><a href="#expert" data-toggle="tab">专家用户</a></li>
				<li><a href="#enterprise" data-toggle="tab">企业用户</a></li>
			</ul>
			<div class="left">
				<div class="tab-content" style="padding-top: 15px;">
					<!-- 个人注册 -->
					<div class="tab-pane active in" id="person">
						<form class="form-horizontal" role="form" method="post"
							id="personform" action="regist.action">
							<div class="form-group">
								<label class="tipmessage col-lg-2 col-xs-2 ">(*必填)</label> <label
									for="userlogname" class="col-lg-2 col-xs-2 control-label">登录账号:</label>
								<div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="userlogname"
										placeholder="账号" name="user.log_name">
								</div>
								<p class="tip" id="userlognametip"></p>
							</div>
							<div class="form-group">
								<label class="tipmessage col-lg-2 col-xs-2 ">(*必填)</label> <label
									for="pwd" class="col-lg-2 col-xs-2 control-label">密码:</label>
								<div class="col-lg-4 col-xs-4">
									<input type="password" class="form-control" id="pwd"
										placeholder="密码" name="user.password">
								</div>
								<p class="tip" id="pwdtip"></p>
							</div>
							<div class="form-group">
								<label class="tipmessage col-lg-2 col-xs-2 ">(*必填)</label> <label
									for="pwdagain" class="col-lg-2 col-xs-2 control-label">确认密码:</label>
								<div class="col-lg-4 col-xs-4">
									<input type="password" class="form-control" id="pwdagain"
										placeholder="再次输入密码">
								</div>
								<p class="tip" id="pwdagaintip"></p>
							</div>
							<div class="form-group">
								<label class="tipmessage col-lg-2 col-xs-2 ">(*必填)</label>
								<label for="username" class="col-lg-2 col-xs-2 control-label">姓名:</label>
								<div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="username"
										name="user.user_name" placeholder="姓名">
								</div>
								<p class="tip" id="usernametip"></p>
							</div>							
							<div class="form-group">
								<label class="tipmessage col-lg-2 col-xs-2 ">(*必填)</label> <label
									for="email" class="col-lg-2 col-xs-2 control-label">邮箱:</label>
								<div class="col-lg-4 col-xs-4">
									<input type="email" class="form-control" id="email"
										name="user.email" placeholder="邮箱">
								</div>
								<p class="tip" id="emailtip"></p>
							</div>
							<!--
							<div class="form-group">
								<label class="tipmessage col-lg-2 col-xs-2 ">(*必填)</label> <label
									for="email" class="col-lg-2 col-xs-2 control-label">联系方式:</label>
								<div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="email"
										name="user.mobile" placeholder="联系方式">
								</div>
								<p class="tip" id="mobiletip"></p>
							</div>
							 -->
							<!-- 
							<div class="form-group">
								<label class="tipmessage col-lg-2 col-xs-2 ">(*必选)</label> <label
									for="protown" class="col-lg-2 col-xs-2 control-label">您所在专业镇:</label>
								<div class="col-lg-4 col-xs-4">
									<select id="protown" name="user.protown" class="form-control ">
										<option value="" selected="selected">请选择</option>
										<option value="根子镇">根子镇</option>
										<option value="泗水镇">泗水镇</option>
										<option value="公馆镇">公馆镇</option>
										<option value="谢鸡镇">谢鸡镇</option>
										<option value="电城镇">电城镇</option>
										<option value="博贺镇">博贺镇</option>
										<option value="">其他</option>
								</select>
								</div>
								<p class="tip" id="protown"></p>
							</div>
							 -->
							 <!--
							<div class="form-group">
								<label class="tipmessage col-lg-2 col-xs-2 ">(*必填)</label> <label
									for="pro" class="col-lg-2 col-xs-2 control-label">主营产品:</label>
								<div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="pro"
										name="user.product" placeholder="如荔枝、香蕉等">
								</div>
								<p class="tip" id="protip"></p>
							</div>
							-->
							<!--  														
							<div class="form-group">
								<div class="col-lg-2 col-xs-2"></div>								
									<label class="col-lg-6 col-xs-6">你感兴趣的
										<a href="#" id="add">添加+</a>
										<input type="text" name="user.interest" value="" 
											id="uintere" class="form-control" style="display:none;"/>
									</label>																																										
							</div>	
							<div id="intere-dialog" title="你感兴趣的">
								<a href="#" class="tab-item"><span>蔬菜</span></a>
								<a href="#" class="tab-item"><span>水果</span></a>
								<a href="#" class="tab-item"><span>水产</span></a>
								<a href="#" class="tab-item"><span>农业新闻</span></a>
								<a href="#" class="tab-item"><span>农业气象</span></a>
								<a href="#" class="tab-item"><span>实用技术</span></a>
								<a href="#" class="tab-item"><span>价格行情</span></a>
								<a href="#" class="tab-item"><span>供需信息</span></a>
								<a href="#" class="tab-item"><span>病虫害预报</span></a>
								<a href="#" class="tab-item"><span>政策法规</span></a>
								<textarea name="intere" rows="3" cols="100" id="intere"></textarea>
							</div>
							-->
							<div class="form-group">
								<div class="col-lg-offset-2 col-xs-offset-2 col-lg-10 col-xs-10">
									<div class="checkbox">
										<label> <input type="checkbox" checked>我同意
											<a href="#">用户协议</a>
										</label>
									</div>
									<p class="tip" id="checktip"></p>
								</div>
							</div>														
							<div class="form-group">
								<div class="col-lg-offset-1 col-xs-offset-1">
									<input type="hidden" name="registRole" value="person" /> <input
										type="hidden" name="user.identify" value="通过审核" />
									<button type="button" class="btn btn-info col-lg-2"
										onclick="registPerson()" disabled="disabled" id="personregist">注册</button>
									<button type="reset" class="btn btn-danger col-lg-2">重置</button>
								</div>
							</div>
						</form>
					</div>
					<!-- 专家注册 -->
					<div class="tab-pane" id="expert">
						<form class="form-horizontal" role="form" id="expertform"
							method="post" action="regist.action">
							<div class="form-group">
								<label class="tipmessage col-lg-1 col-xs-1 ">(*必填)</label> <label
									for="expert_username" class="col-lg-2 col-xs-2 control-label">姓名:</label>
								<div class="col-lg-5 col-xs-5">
									<input type="text" class="form-control" id="expert_username"
										name="user.user_name" placeholder="姓名">
								</div>
								<p class="tip" id="expert_usernametip"></p>
							</div>
							<div class="form-group">
								<label class="tipmessage col-lg-1 col-xs-1 ">(*必填)</label> <label
									for="expert_userlogname"
									class="col-lg-2 col-xs-2 control-label">用户名:</label>
								<div class="col-lg-5 col-xs-5">
									<input type="text" class="form-control" id="expert_userlogname"
										name="user.log_name" placeholder="用户名">
								</div>
								<p class="tip" id="expert_userlognametip"></p>
							</div>
							<div class="form-group">
								<label class="tipmessage col-lg-1 col-xs-1 ">(*必填)</label> <label
									for="expert_email" class="col-lg-2 col-xs-2 control-label">邮箱:</label>
								<div class="col-lg-5 col-xs-5">
									<input type="email" class="form-control" id="expert_email"
										name="user.email" placeholder="邮箱">
								</div>
								<p class="tip" id="expert_emailtip"></p>
							</div>
							<div class="form-group">
								<label class="tipmessage col-lg-1 col-xs-1 ">(*必填)</label> <label
									for="expert_pwd" class="col-lg-2 col-xs-2 control-label">密码:</label>
								<div class="col-lg-5 col-xs-5">
									<input type="password" class="form-control" id="expert_pwd"
										name="user.password" placeholder="密码">
								</div>
								<p class="tip" id="expert_pwdtip"></p>
							</div>
							<div class="form-group">
								<label class="tipmessage col-lg-1 col-xs-1 ">(*必填)</label> <label
									for="expert_pwdagain" class="col-lg-2 col-xs-2 control-label">确认密码:</label>
								<div class="col-lg-5 col-xs-5">
									<input type="password" class="form-control"
										id="expert_pwdagain" placeholder="再次输入密码">
								</div>
								<p class="tip" id="expert_pwdagaintip"></p>
							</div>
							<div class="form-group ">
								<div class="col-lg-offset-2 col-xs-offset-2 col-lg-10 col-xs-10">
									<div class="checkbox">
										<label> <input type="checkbox" checked="true">我同意
											<a href="#">用户协议</a>
										</label>
									</div>
									<p class="tip" id="expert_checktip"></p>
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-offset-1 col-xs-offset-1">
									<input type="hidden" name="registRole" value="expert" /> <input
										type="hidden" name="user.identify" value="通过审核" />
									<button type="button" class="btn btn-info col-lg-2"
										onclick="registExpert" disabled="disabled" id="expertregist">注册</button>
									<button type="reset" class="btn btn-danger col-lg-2">重置</button>
								</div>
							</div>
						</form>
					</div>
					<!-- 企业注册 -->
					<div class="tab-pane" id="enterprise">
						<form class="form-horizontal" role="form" id="enterpriseform"
							method="post" action="regist.action">
							<div class="form-group">
								<label class="tipmessage col-lg-1 col-xs-1 ">(*必填)</label> <label
									for="enterprise_username"
									class="col-lg-2 col-xs-2 control-label">姓名:</label>
								<div class="col-lg-5 col-xs-5">
									<input type="text" class="form-control"
										id="enterprise_username" name="user.user_name"
										placeholder="姓名">
								</div>
								<p class="tip" id="enterprise_usernametip"></p>
							</div>
							<div class="form-group">
								<label class="tipmessage col-lg-1 col-xs-1 ">(*必填)</label> <label
									for="enterprise_userlogname"
									class="col-lg-2 col-xs-2 control-label">用户名:</label>
								<div class="col-lg-5 col-xs-5">
									<input type="text" class="form-control"
										id="enterprise_userlogname" name="user.log_name"
										placeholder="用户名">
								</div>
								<p class="tip" id="enterprise_userlognametip"></p>
							</div>
							<div class="form-group">
								<label class="tipmessage col-lg-1 col-xs-1 ">(*必填)</label> <label
									for="enterprise_email" class="col-lg-2 col-xs-2 control-label">邮箱:</label>
								<div class="col-lg-5 col-xs-5">
									<input type="email" class="form-control" id="enterprise_email"
										name="user.email" placeholder="邮箱">
								</div>
								<p class="tip" id="enterprise_emailtip"></p>
							</div>
							<div class="form-group">
								<label class="tipmessage col-lg-1 col-xs-1 ">(*必填)</label> <label
									for="enterprise_pwd" class="col-lg-2 col-xs-2 control-label">密码:</label>
								<div class="col-lg-5 col-xs-5">
									<input type="password" class="form-control" id="enterprise_pwd"
										name="user.password" placeholder="密码">
								</div>
								<p class="tip" id="enterprise_pwdtip"></p>
							</div>
							<div class="form-group">
								<label class="tipmessage col-lg-1 col-xs-1 ">(*必填)</label> <label
									for="enterprise_pwdagain"
									class="col-lg-2 col-xs-2 control-label">确认密码:</label>
								<div class="col-lg-5 col-xs-5">
									<input type="password" class="form-control"
										id="enterprise_pwdagain" placeholder="再次输入密码">
								</div>
								<p class="tip" id="enterprise_pwdagaintip"></p>
							</div>
							<div class="form-group ">
								<div class="col-lg-offset-2 col-xs-offset-2 col-lg-10 col-xs-10">
									<div class="checkbox">
										<label> <input type="checkbox" checked="true">我同意
											<a href="#">用户协议</a>
										</label>
									</div>
									<p class="tip" id="checktip"></p>
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-offset-1 col-xs-offset-1">
									<input type="hidden" name="registRole" value="enterprise" /> <input
										type="hidden" name="user.identify" value="待审核" />
									<button type="button" class="btn btn-info col-lg-2"
										onclick="registEnterprise()" disabled="disabled"
										id="enterpriseregist">注册</button>
									<button type="reset" class="btn btn-danger col-lg-2">重置</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="right">
				<div class="login">
					<p>已有账号，直接登录</p>
					<a class="btn btn-success" href="login.action"><span>点击登录</span></a>
				</div>
				<div class="introduce">
					<h5>广东省茂名农业专业镇信息服务平台</h5>
					<p>致力于为广东省茂名市乃至全国提供全面、优质、专业的服务，
						包括农产品质量检测服务、农业信息服务、农业电子商务服务、农业人才培训服务等。</p>
				</div>
			</div>
		</div>
	</div>
	<div class="footer text-center">
		<div style="padding: 40px 0 20px 0">
			<p>
				<a
					href="http://www.boc.cn/custserv/cs1/200812/t20081209_135605.html">网站地图</a><i>|</i>

				<a
					href="http://www.boc.cn/custserv/cs1/200812/t20081209_135606.html">版权声明</a><i>|</i>

				<a
					href="http://www.boc.cn/custserv/cs1/200812/t20081209_135607.html">使用条款</a><i>|</i>

				<a
					href="http://www.boc.cn/custserv/cs1/200812/t20081212_257687.html">联系我们</a>
			</p>
			<p>@广东省农业专业镇信息服务平台</p>
			Powered By 广东友元国土信息工程有限公司
		</div>
	</div>
</body>
</html>