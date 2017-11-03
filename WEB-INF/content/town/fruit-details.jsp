<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link href="<%=request.getContextPath()%>/theme/css/training.css"
		rel="stylesheet" type="text/css" />

	<title>名优企业>>水果详细信息</title>
</head>
<body>
	<!DOCTYPE html>
	<html lang="en">
<head>
<meta charset="utf-8">
	<title>广东省专业镇信息服务平台</title>
	<meta name="description" content="Creating Modal Window with Bootstrap">
		<link href="css/bootstrap.css" rel="stylesheet">
			<link href="<%=request.getContextPath()%>/theme/css/cityinfo.css"
				rel="stylesheet">
				<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>-->
				<script src="js/jquery.js"></script>
				<script src="js/bootstrap.js"></script>
</head>
<body>
	<div style="padding: 20px 20px 0 20px;">
		<div class="row">
			<!--第二行-->
			<div class="col-xs-4 col-lg-4" style="padding: 0 5px 0 0;">
				<div class="panel panel-default panel-my">
					<div class="panel-heading" style="background-color:#A8CBF2; ">
						<div class="row">
							<div class="col-xs-8 col-lg-8 text-left" >
								<b>专业镇</b>
							</div>
							<div class="col-xs-4 col-lg-4 text-right">
								<a href="<%=request.getContextPath()%>/town/featureproduct.action"><small>更多>></small></a>
							</div>
						</div>
					</div>
					<div class="panel-body my-panel-body"  style="height: 580px">  
						<div class="list-group mylist">
							<a
								href="<%=request.getContextPath()%>/town/featureproduct.action?tid=218"
								class="list-group-item mytitem">电城镇</a> <a
								href="<%=request.getContextPath()%>/town/featureproduct.action?tid=220"
								class="list-group-item mytitem">公馆镇</a> <a
								href="<%=request.getContextPath()%>/town/featureproduct.action?tid=221"
								class="list-group-item mytitem">博贺镇</a> <a
								href="<%=request.getContextPath()%>/town/featureproduct.action?tid=222"
								class="list-group-item mytitem">泗水镇</a> <a
								href="<%=request.getContextPath()%>/town/featureproduct.action?tid=223"
								class="list-group-item mytitem">谢鸡镇</a> <a
								href="<%=request.getContextPath()%>/town/featureproduct.action?tid=224"
								class="list-group-item mytitem">根子镇</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-8 col-lg-8 text-left">
				<div class="panel panel-default">
					<div class="panel-body"  style="height: 610px">
						<div class="row">
							<div class="col-xs-12 col-lg-12">
								<span class="citytile"><b>品种：${hproduct.pname}</b></span>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-6 col-lg-6 ">
								<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									特色：${fruit.ffeature}</p>
							</div>
							<div class="col-xs-6 col-lg-6">
								<img src="<%=request.getContextPath()%>${hproduct.image}" alt="
									产品图片" class="img-thumbnail cityimg">
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-lg-12 text-left">
								<p>
									<h5>
										<b>包装方法</b>
									</h5>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									${fruit.fpackage}
								</p>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-lg-12 text-left">
								<p>
									<h5>
										<b>产地</b>
									</h5>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									${fruit.town.tname}
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
	</html>