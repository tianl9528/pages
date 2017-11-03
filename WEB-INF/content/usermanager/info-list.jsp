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

<script type="text/javascript"
	src="<%=request.getContextPath()%>/theme/js/dialog.js"></script>
<link href="<%=request.getContextPath()%>/theme/js/dialog.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/theme/appjs/userspace/enterprise.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/theme/appjs/userspace/datalocation.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/theme/appjs/gmap3/gmap3.js"></script>
<script src="http://maps.googleapis.com/maps/api/js?sensor=false"
	type="text/javascript"></script>

<link href="<%=base_root%>/theme/css/user.css" rel="stylesheet">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/themes/default/default.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/plugins/code/prettify.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
<script charset="utf-8"
	src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/kindeditor.js"></script>
<script charset="utf-8"
	src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/lang/zh_CN.js"></script>
<script charset="utf-8"
	src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/plugins/code/prettify.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/theme/js/infoservices.js"></script>

<title>信息管理</title>
<style>
.gmap3 {
	margin: 20px auto;
	border: 1px dashed #C0C0C0;
	width: 750px;
	height: 400px;
}

table .title {
	color: #6E8B3D;
	font-weight: bold;
}

.tooltip-inner {
	max-width: 400px;
	background-color: #668B8B;
}

#dlg,#mapdlg .close {
	font-size: 14px;
	font-weight: normal;
	opacity: 1;
	color: white;
	text-shadow: none;
	line-height: 1.3;
}

#dlg .content {
	
}
</style>

</head>
<body>
	<div style="max-width: 1007px; min-width: 978px">
		<div class="">
			<div class="col-lg-2 col-xs-2">
				<div class="col-lg-12 col-xs-12">
					<div class="panel-group" id="accordion">
						<div class="panel panel-default"
							style="margin: 20px 0 0 0; width: 165px">
							<div class="panel-heading">
								<h4 class="panel-title lh30">信息管理</h4>
							</div>
                            <div class="panel-body">
                                <div class="tabbable">
                                    <ul class="nav bs-sidenav" id="tabTit">
                                        <li><a href="#tab1" data-toggle="tab">科技信息</a></li>
                                        <li><a href="#tab2" data-toggle="tab">新闻信息</a></li>
                                        <li><a href="#tab3" data-toggle="tab">机构信息</a></li>
                                        <li><a href="#tab4" data-toggle="tab">法规信息</a></li>
                                        <li><a href="#tab5" data-toggle="tab">服务信息</a></li>
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
					<div class="tab-pane  active" id="tab1">
						<!--科技信息-->
						<iframe src="<%=base_root%>/infoservices/techinfolist.action"
							frameborder="0" marginheight="0" marginwidth="0" frameborder="0"
							scrolling="auto" id="ifm1" name="ifm1"
							onload="javascript:dyniframesize('ifm1');" width="100%" height="600px">
						</iframe>
					</div>
					<!--tab-pane tab1-->
					<div class="tab-pane" id="tab2">
						<!--新闻信息-->
						<iframe src="<%=base_root%>/infoservices/articleNewslist.action"
							frameborder="0" marginheight="0" marginwidth="0" frameborder="0"
							scrolling="auto" id="ifm2" name="ifm2"
							onload="javascript:dyniframesize('ifm2');" width="100%">
						</iframe>
					</div>
					<!--tab-pane tab2-->
					<div class="tab-pane" id="tab3">
						<!--机构信息-->
						<iframe src="<%=base_root%>/detect/detectinstlist.action"
							frameborder="0" marginheight="0" marginwidth="0" frameborder="0"
							scrolling="auto" id="ifm3" name="ifm3"
							onload="javascript:dyniframesize('ifm3');" width="100%">
						</iframe>
					</div>
					<!--tab3-->
					<div class="tab-pane" id="tab4">
						<!--法规信息-->
						<iframe src="<%=base_root%>/detect/detectlawlist.action"
							frameborder="0" marginheight="0" marginwidth="0" frameborder="0"
							scrolling="auto" id="ifm4" name="ifm4"
							onload="javascript:dyniframesize('ifm4');" width="100%">
						</iframe>
					</div>
					<!--tab4-->
					<div class="tab-pane" id="tab5">
						<!--服务信息-->
						<iframe src="<%=base_root%>/detect/detectservlist.action"
							frameborder="0" marginheight="0" marginwidth="0" frameborder="0"
							scrolling="auto" id="ifm5" name="ifm5"
							onload="javascript:dyniframesize('ifm5');" width="100%">
						</iframe>
					</div>
					<!--tab5-->
				</div>
				<!--tab-content col-md-12-->
			</div>
			<!--col-md-9 yy_contright-->
		</div>
	</div>
	<!--row  yy_content-->
</body>
</html>