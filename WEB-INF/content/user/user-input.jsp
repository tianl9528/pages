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
</meta>
<script type="text/javascript">
$(document).ready(function(){
	 var checked;
	 if($('#radio1').attr("checked")){
		 checked="radio1";
	 }else if($('#radio2').attr("checked")){
		 checked="radio2";
	 }else if($('#radio3').attr("checked")){
		 checked="radio3";
	 }
	  $("#radio1").click(function(){
		 if(confirm('确认通过审核？')){
			 $("#reason").attr("disabled","disabled");
			 $("#reasonlab").attr("disabled",false);
			 $("#type").text("");
			 checked="radio1";
		 }else{
			 if(checked!="radio1"){
				 $('#'+checked).attr("checked",true);
				 $('#radio1').attr("checked",false);	 
			 }
		 }
	  });
	  $("#radio2").click(function(){
		  if(confirm('确认待审核？')){
			  $("#reason").attr("disabled","disabled");
			  $("#reasonlab").attr("disabled",false);
			  $("#type").text("");
			  checked="radio2";
		 }else{
			 if(checked!="radio2"){
				 $('#'+checked).attr("checked",true);
				 $('#radio2').attr("checked",false);	 
			 }
		 }
	  });
	  $("#radio3").click(function(){
		  if(confirm('确认未通过审核？')){
			  $("#reason").removeAttr("disabled");
			  $("#type").text("(*必填)");
			  /* $("#reasonlab").attr("disabled",true); */
			  checked="radio3";
		 }else{
			 if(checked!="radio3"){
			 	$('#'+checked).attr("checked",true);
		     	$('#radio3').attr("checked",false);
		 	}
		 }
	  });
	});
	</script>
<style type="text/css">
tr.Color {
	width: 100px;
}
</style>
</head>
<body>
	<script type="text/javascript">
	function check() {
		var tip;
		 if($('#radio1').attr("checked")){
			 tip='确认通过审核？';
		 }else if($('#radio2').attr("checked")){
			 tip='确认待审核？';
		 }else if($('#radio3').attr("checked")){
			 tip='确认未通过审核？';
		 }
		 if(confirm(tip)){
			 return true;
		 }else{
			return false;
		 }
	}

	</script>
	<div class="clear"></div>
	<form id="form1" name="form1" method="post" action="user-save.action"
		onSubmit="return checkforminput()" enctype="multipart/form-data">
		<div class="conBox">
			<div class="conTitle">用户信息</div>
			<div class="conMiddle">
				<div>
					<c:if test="${!empty user.company.id }">
						<!-- <tr> -->
						<div class="panel-heading">
							<strong style="font-size: 20px">企业审核信息</strong>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-6 col-xs-6" style="margin: 10px 0 0 0">
									<div class="form-group">
										<label for="name" class="col-lg-3 col-xs-3 control-label">企业名称</label>
										<div class="col-lg-5 col-xs-5">
											<input type="text" class="itemManagerInput" id="name"
												placeholder="企业名称" name="company.companyname"
												value="${company.companyname}" disabled="disabled">
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-xs-6" style="margin: 10px 0 0 0">
									<div class="form-group">
										<label for="enterprise_property"
											class="col-lg-3 col-xs-3 control-label">企业性质</label>
										<div class="col-lg-5 col-xs-5">
											<input type="text" class="itemManagerInput" id="name"
												placeholder="企业性质" name="company.nature"
												value="${company.nature}" disabled="disabled">
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-xs-6" style="margin: 10px 0 0 0">
									<div class="form-group">
										<label for="industry_classification"
											class="col-lg-3 col-xs-3 control-label">行业分类</label>
										<div class="col-lg-5 col-xs-5">
											<input type="text" class="itemManagerInput" id="name"
												placeholder="行业分类" name="company.assortment"
												value="${company.assortment}" disabled="disabled">
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-xs-6" style="margin: 10px 0 0 0">
									<div class="form-group ">
										<label for="registered_capital"
											class="col-lg-3 col-xs-3 control-label">注册资本</label>
										<div class="col-lg-5 col-xs-5">
											<input type="text" class="itemManagerInput "
												id="registered_capital" placeholder="注册资本"
												name="company.registercapital"
												value="${company.registercapital}" disabled="disabled">
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-xs-6" style="margin: 10px 0 0 0">
									<div class="form-group">
										<label for="town" class="col-lg-3 col-xs-3 control-label">所在专业镇</label>
										<div class="col-lg-5 col-xs-5">
											<input type="text" class="itemManagerInput" id="town"
												name="company.location" placeholder="所在专业镇"
												value="${company.location}" disabled="disabled">
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-xs-6" style="margin: 10px 0 0 0">
									<div class="form-group">
										<label for="business_scope"
											class="col-lg-3 col-xs-3 control-label ">经营范围</label>
										<div class="col-lg-4 col-xs-4">
											<input type="text" class="itemManagerInput"
												id="business_scope" name="company.scope"
												value="${company.scope}" placeholder="经营范围"
												disabled="disabled">
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-xs-6" style="margin: 10px 0 0 0">
									<div class="form-group">
										<label for="postcode" class="col-lg-3 col-xs-3 control-label "
											style="padding-left: -15px;">企业地址</label>
										<div class="col-lg-4 col-xs-4">
											<input type="text" class="itemManagerInput" id="postcode"
												name="company.address" placeholder="企业地址"
												value="${company.address}" disabled="disabled">
										</div>
									</div>
								</div>

								<input type="hidden" class="itemManagerInput"
									name="company.changed" value="未修改已查看">
							</div>
						</div>
						</tr>
					</c:if>
					<tr>
						<hr style="borber: 1px rgba(148, 134, 134, 0.24) solid;"></hr>
						<div class="panel-heading">
							<strong style="font-size: 20px">个人信息</strong>
						</div>
						<div class="panel-body">
							<div class="row">
								<!--图片  -->
								<div
									style="margin-left: 20px; height: 250px; width: 250px; float: left;">
									<img src="<%=request.getContextPath()%>${user.images_url}"
										onerror="this.src='<%=request.getContextPath()%>/theme/images/de_user.gif'"
										width="250px" height="250px" />
								</div>
								<!-- 图片end -->

								<!--姓名  -->
								<div class=" col-lg-6 col-xs-6"
									style="margin: 10px 0 0 0; float: left;">
									<div class="form-group">
										<label for="postcode" class="col-lg-3 col-xs-3 control-label "
											style="padding-left: -15px;">姓名</label>
										<div class="col-lg-4 col-xs-4">
											<input name="user.user_name" type="text"
												class="itemManagerInput_m" id="user.user_name"
												value="${user.user_name}" disabled="disabled" /> <input
												name="user_id" type="hidden" id="user_id"
												value="${user.user_id}" />
										</div>
									</div>
								</div>
								<!-- 姓名end -->

								<!--登录名  -->
								<div class="col-lg-6 col-xs-6" style="margin: 10px 0 0 0">
									<div class="form-group">
										<label for="postcode" class="col-lg-3 col-xs-3 control-label "
											style="padding-left: -15px;">登录名</label>
										<div class="col-lg-4 col-xs-4">
											<input name="user.log_name" type="text"
												class="itemManagerInput" id="user.log_name"
												value="${user.log_name}" disabled="disabled" />
										</div>
									</div>
								</div>
								<!-- 登录名end -->

								<!--联系方式  -->
								<div class="col-lg-6 col-xs-6" style="margin: 10px 0 0 0">
									<div class="form-group">
										<label for="postcode" class="col-lg-3 col-xs-3 control-label "
											style="padding-left: -15px;">联系方式</label>
										<div class="col-lg-4 col-xs-4">
											<input name="user.mobile" type="text"
												class="itemManagerInput" id="user.mobile"
												value="${user.mobile}" disabled="disabled" />
										</div>
									</div>
								</div>
								<!-- 联系方式end -->

								<!--性别  -->
								<div class="col-lg-6 col-xs-6" style="margin: 10px 0 0 0">
									<div class="form-group">
										<label for="postcode" class="col-lg-3 col-xs-3 control-label "
											style="padding-left: -15px;">性别</label>
										<div class="col-lg-4 col-xs-4">

											<input type="radio" name="user.sex" value="0"
												disabled="disabled"
												<c:if test="${user.sex=='0' || empty id }">checked</c:if> />男
											&nbsp;&nbsp;<input type="radio" name="user.sex" value="1"
												disabled="disabled"
												<c:if test="${user.sex=='1'}">checked</c:if> />女
										</div>
									</div>
								</div>
								<!-- 性别end -->
								<!--密码  -->
								<div class="col-lg-6 col-xs-6" style="margin: 10px 0 0 0">
									<div class="form-group">
										<label for="postcode" class="col-lg-3 col-xs-3 control-label "
											style="padding-left: -15px;">密码</label>
										<div class="col-lg-4 col-xs-4">
											<input type="password" class="itemManagerInput" id="postcode"
												name="company.address" placeholder="企业地址"
												value="${company.address}" disabled="disabled">
										</div>
									</div>
								</div>
								<!-- 密码end -->

								<!--确认密码  -->
								<div class="col-lg-6 col-xs-6" style="margin: 10px 0 0 0">
									<div class="form-group">
										<label for="postcode" class="col-lg-3 col-xs-3 control-label "
											style="padding-left: -15px;">确认密码</label>
										<div class="col-lg-4 col-xs-4">
											<input type="password" class="itemManagerInput" id="postcode"
												name="company.address" placeholder="企业地址"
												value="${company.address}" disabled="disabled">
										</div>
									</div>
								</div>
								<!-- 确认密码end -->

								<!--是否通过审核  -->
								<div class="col-lg-6 col-xs-6" style="margin: 10px 0 0 0">
									<div class="form-group">
										<label class="col-lg-4 col-xs-4 control-label "
											style="padding-left: -15px;">是否通过审核</label>
										<div>
											<input type="radio" name="user.identify" value="通过审核"
												id="radio1"
												<c:if test="${user.identify=='通过审核' || empty id }">checked</c:if> /><label
												for="radio1">通过审核</label> &nbsp;&nbsp; <input type="radio"
												name="user.identify" value="待审核" id="radio2"
												<c:if test="${user.identify=='待审核'}">checked</c:if> /><label
												for="radio2">待审核</label>&nbsp;&nbsp; <input type="radio"
												name="user.identify" value="未通过审核" id="radio3"
												<c:if test="${user.identify=='未通过审核'}">checked</c:if> /><label
												for="radio3">未通过审核</label>
										</div>
									</div>
								</div>
								<!-- 是否通过审核end -->
								<!--未通过原因 -->
								<div class="col-lg-6 col-xs-6" style="margin: 10px 0 0 0">
									<div class="form-group">
										<label for="postcode" class="col-lg-4 col-xs-4 control-label "
											style="padding-left: -15px;">未通过原因<b id="type"
											style="color: red;">(*必填)</b></label>
										<div class="col-lg-4 col-xs-4">
											<input name="reason" type="text" class="itemManagerInput"
												id="reason" />
										</div>
									</div>
									<script>
											if("${user.identify}"!="未通过审核"){
												document.getElementById("reason").disabled="disabled";
												document.getElementById("type").innerHTML=""; 
											}
										</script>
								</div>
								<!-- 未通过原因end -->
							</div>
						</div>
						<!-- </tr>
					</table> -->
				</div>
				<div class="subBtnBox">
					<input id="submit" type="submit" class="base_btn"
						onclick="return check();" value="提交" /> <input type="button"
						class="base_btn" value="返回"
						onclick="window.location.href='user.action'" />
				</div>
			</div>
			<div class="conBottom"></div>
		</div>
	</form>
</body>
</html>