<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String base_root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>发布信息管理</title>



<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery-1.7.2.min.js"></script>

<style>
</style>

<script>
	
</script>
<script>
	function go(url) {
		var tabCon = document.getElementById('tabCon');
		tabCon.src = url;
	}
</script>
</head>
<body>
	<div style="max-width: 1007px; min-width: 978px">
		<div class="">
			<div class="col-lg-2 col-xs-2">
				<div class="col-lg-12 col-xs-12">
					<div class="panel-group" id="accordion">
						<div class="panel panel-default"
							style="margin: 15px 0 0 0; width: 165px">
							<div class="panel-heading">
								<h4 class="panel-title">发布信息管理</h4>
							</div>
							<div class="panel-body">
								<div class="tabbable">
									<ul class="nav bs-sidenav" id="tabTit">
										<li><a href="#" onclick="go('model1.action');">技术供应</a></li>
										<li><a href="#" onclick="go('model2.action');">技术需求</a></li>
										<li><a href="#" onclick="go('model3.action');">产品供应</a></li>
										<li><a href="#" onclick="go('model4.action');">产品需求</a></li>
										<li><a href="#" onclick="go('model5.action');">个人求职</a></li>
										<li><a href="#" onclick="go('model6.action');">企业招聘</a></li>
										<li><a href="#" onclick="go('model7.action');">物流供应</a></li>
										<li><a href="#" onclick="go('model8.action');">物流需求</a></li>
										<li><a href="#" onclick="go('model9.action');">招商代理</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-10 col-xs-10">
				<div class="tab-content col-lg-12 col-xs-12"
					style="padding: 0px 0 0 10px;">
					<iframe class='con' src="model1.action" frameborder="0" id="tabCon"
						scrolling="no"
						style="width: 780px; height: 500px; margin-top: 15px; margin-left: 8px;"></iframe>
				</div>
				<!--tab-content col-md-12-->
			</div>
			<!--col-md-9 yy_contright-->
		</div>
	</div>
	<!--row  yy_content-->
</body>
</html>