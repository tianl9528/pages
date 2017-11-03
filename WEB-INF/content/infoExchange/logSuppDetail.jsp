<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<title>物流供应信息</title>
<meta name="description" content="Creating Modal Window with Bootstrap">

<link
	href="<%=request.getContextPath()%>/theme/css/base/jquery.ui.all.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/theme/css/supplychild.css"
	rel="stylesheet">

<style>
.ui-dialog .ui-dialog-buttonpane .ui-dialog-buttonset button {
	width: 100px;
	height: 30px;
}

.text {
	width: 200px;
}
</style>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						//alert("abc");
						$("#dialog-form")
								.dialog(
										{
											autoOpen : false,
											height : 460,
											width : 600,
											modal : true,
											buttons : {
												"询价" : function() {
													var phone = $("#phone")
															.val();
													//var email=$("#email").val();
													if (phone == "") {
														alert("请输入联系电话或者邮箱");
													} else {
														var params = $(
																"#myform")
																.serialize();
														params = decodeURIComponent(
																params, true);
														//alert(params);
														$
																.ajax({
																	async : true,
																	url : "inquiry.action",
																	type : "post",
																	dateType : "json",
																	data : params,
																	success : function(
																			result) {
																		alert(result);
																		$(
																				"#dialog-form")
																				.dialog(
																						"close");
																	},
																	error : function(
																			XmlHttpRequest,
																			textStatus,
																			errorThrown) {
																		alert(XmlHttpRequest.responseText);
																	}
																});
													}
												},
												"取消" : function() {
													$(this).dialog("close");
												}
											},
											close : function() {
												//allFields.val( "" ).removeClass( "ui-state-error" );

											}
										});
						$("#inquiry")
								.click(
										function() {

											var role = "${user_role}"

											if (role == "游客"||role=="待审核用户") {
												$("#tip")
														.dialog(
																{
																	autoOpen : false,
																	height : 180,
																	width : 300,
																	modal : true,
																	buttons : {
																		"登录" : function() {
																			window.location.href = "/gdzyzmm/login.action";
																		},
																		"取消" : function() {
																			$(
																					this)
																					.dialog(
																							"close");
																		}
																	},
																	close : function() {

																	}
																});

												$("#tip").dialog("open");
											} else {
												$("#dialog-form")
														.dialog("open");
											}
										});
					});
</script>
</head>
<body>
	<div style="padding: 20px 20px 0 20px;">
		<div style="padding: 20px 20px 0 20px;">
		<div class="col=xs-5 col-lg-5">
			<table border="2">
				<thead>出发地网点信息
				</thead>
				<tr>
					<td>网点：</td>
					<td>${logSupp.startPlace }</td>
				</tr>
				<tr>
					<td>发布时间：</td>
					<td>${logSupp.lsPubDate }</td>
				</tr>
				<tr>
					<td>发车时间：</td>
					<td>${logSupp.departureTime }</td>
				</tr>
				<tr>
					<td>途径地：</td>
					<td>${logSupp.wayPoint }</td>
				</tr>
				<tr>
					<td>说明：</td>
					<td>${logSupp.explanation }</td>
				</tr>
				
			</table>
		</div>
		<div class="col=xs-2 col-lg-2"><img
											src="<%=request.getContextPath() %>/theme/image/arrow.jpg"  style="width: 100px;height: 130px"></div>
		<div class="col=xs-5 col-lg-5">
			<table border="2">
				<thead>到达地网点信息
				</thead>
				<tr>
					<td>网点：</td>
					<td>${logSupp.arrivePlace }</td>
				</tr>
				<tr>
					<td>发布时间：</td>
					<td>${logSupp.lsPubDate }</td>
				</tr>
				<tr>
					<td>发车时间：</td>
					<td>${logSupp.departureTime }</td>
				</tr>
				<tr>
					<td>途径地：</td>
					<td>${logSupp.wayPoint }</td>
				</tr>
				<tr>
					<td>说明：</td>
					<td>${logSupp.explanation }</td>
				</tr>
				
			</table>
		</div>
	</div>
	</div>
</body>
</html>