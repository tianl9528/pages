<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="sunit.accesscontrol.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
	String base_root = request.getContextPath();
%>
<title>人才培训 >> 技术培训</title>

<style type="text/css">
.panel-body>.table>tbody>tr>td {
	border-top: 0px;
	border-bottom: 1px solid #BEEC94;
}

.btn-success {
	background-color: #90B82A;
}

.btn-success:hover,btn-success:focus {
	background-color: #86AA29;
}

.tecttrain a {
	color: #4e5b2c;
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="row tecttrain"
		style="max-width: 1007px; min-width: 820px; margin: 15px">

		<form
			action="<%=request.getContextPath()%>/infoservices/articleSearch.action"
			method="post" enctype="multipart/form-data">
			<div
				class="input-group col-lg-5 col-xs-5 col-lg-offset-7 col-xs-offset-7"
				style="margin-bottom: 15px">
				<input name="searchInput" type="searchInput" class="form-control">
				<span class="input-group-btn">
					<button type="submit" class="btn btn-success"
						style="width: 88px; margin-right: 5px">搜索</button>
				</span>
			</div>
		</form>

		<div class="panel panel-default col-lg-12 col-xs-12"
			style="padding: 0;">
			<!-- 
		<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
			 -->
			<div class="panel-heading" >
				<table class="table" style="margin: 0;">
					<tr>
						<td class="col-xs-11 col-lg-11" style="border-top: 0;">
							<div class="myFont15">
								种植技术
							</div>
						</td>

					</tr>
				</table>
			</div>
			<div class="panel-body" style="padding: 5px 15px 45px 15px">
				<table class="table table-hover " style="margin: 0">
					<tr>
						<td><img class="pull-left"
							src="<%=base_root%>/theme/images/trainimg/document.png"
							style="height: 18px;" /> <a href="plantPage.action?type=rice"
							target="_blank" style="cursor: pointer; text-decoration: none">
								<p style="margin-left: 20px;">水稻种植专题</p>
						</a></td>
					</tr>
					<tr>
						<td><img class="pull-left"
							src="<%=base_root%>/theme/images/trainimg/document.png"
							style="height: 18px;" /> <a href="plantPage.action?type=corn"
							target="_blank" style="cursor: pointer; text-decoration: none">
								<p style="margin-left: 20px;">玉米科学种植专题</p>
						</a></td>
					</tr>
					<tr>
						<td><img class="pull-left"
							src="<%=base_root%>/theme/images/trainimg/document.png"
							style="height: 18px;" /> <a
							href="plantPage.action?type=wheat" target="_blank"
							style="cursor: pointer; text-decoration: none">
								<p style="margin-left: 20px;">小麦生产专题</p>
						</a></td>
					</tr>
					<tr>
						<td><img class="pull-left"
							src="<%=base_root%>/theme/images/trainimg/document.png"
							style="height: 18px;" /> <a href="plantPage.action?type=bean"
							target="_blank" style="cursor: pointer; text-decoration: none">
								<p style="margin-left: 20px;">大豆生产专题</p>
						</a></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="panel panel-default col-lg-12 col-xs-12"
			style="padding: 0;">
			<!-- 
		<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
			 -->
			<div class="panel-heading">
				<table class="table" style="margin: 0;">
					<tr>
						<td class="col-xs-11 col-lg-11" style="border-top: 0;">
							<div class="myFont15">
								养殖技术
							</div>
						</td>
					</tr>
				</table>
			</div>
			<div class="panel-body" style="padding: 5px 15px 45px 15px">
				<table class="table table-hover " style="margin: 0">
					<tr>
						<td><img class="pull-left"
							src="<%=base_root%>/theme/images/trainimg/document.png"
							style="height: 18px;" /> <a
							href="cultivationPage.action?type=pig" target="_blank"
							style="cursor: pointer; text-decoration: none">
								<p style="margin-left: 20px;">生猪养殖专题</p>
						</a></td>
					</tr>
					<tr>
						<td><img class="pull-left"
							src="<%=base_root%>/theme/images/trainimg/document.png"
							style="height: 18px;" /> <a href="cultivationPage.action?type=cow" target="_blank"
							style="cursor: pointer; text-decoration: none">
								<p style="margin-left: 20px;">奶牛养殖专题</p>
						</a></td>
					</tr>
					<tr>
						<td><img class="pull-left"
							src="<%=base_root%>/theme/images/trainimg/document.png"
							style="height: 18px;" /> <a href="cultivationPage.action?type=fish" target="_blank"
							style="cursor: pointer; text-decoration: none">
								<p style="margin-left: 20px;">淡水鱼养殖专题</p>
						</a></td>
					</tr>
					<tr>
						<td><img class="pull-left"
							src="<%=base_root%>/theme/images/trainimg/document.png"
							style="height: 18px;" /> <a href="cultivationPage.action?type=sheep" target="_blank"
							style="cursor: pointer; text-decoration: none">
								<p style="margin-left: 20px;">肉羊养殖专题</p>
						</a></td>
					</tr>
					<tr>
						<td><img class="pull-left"
							src="<%=base_root%>/theme/images/trainimg/document.png"
							style="height: 18px;" /> <a href="cultivationPage.action?type=rabbit" target="_blank"
							style="cursor: pointer; text-decoration: none">
								<p style="margin-left: 20px;">家兔养殖专题</p>
						</a></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
