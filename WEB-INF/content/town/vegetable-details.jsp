<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
	<title>名优产品>>蔬菜详细信息</title>
	<meta name="description" content="Creating Modal Window with Bootstrap">
		<link href="css/bootstrap.css" rel="stylesheet">
			<link href="<%=request.getContextPath()%>/theme/css/cityinfo.css" rel="stylesheet">
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
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-8 col-lg-8 text-left">
								<b>专业镇</b>
							</div>
							<div class="col-xs-4 col-lg-4 text-right">
								<a href="<%=request.getContextPath()%>/town/featureproduct.action"><small>更多>></small></a>
							</div>
						</div>
					</div>
					<div class="panel-body my-panel-body" style="height: 580px">
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
			<div class="col-xs-8 col-lg-8">
				<div class="panel panel-default">
					<div class="panel-body" style="height: 610px">
						<div class="row">
							<div class="col-xs-12 col-lg-12 text-left">
								<span class="citytile"><b>品种：${hproduct.pname}</b></span>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-6 col-lg-6  text-left">
								<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									特色：${vegetable.vfeature}</p>
							</div>
							<div class="col-xs-6 col-lg-6">
								<img
									src="<%=request.getContextPath()%>${hproduct.image}" alt="
									产品图片" class="img-thumbnail cityimg">
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-lg-12  text-left">
								<p>
									<h5>
										<b>包装方法</b>
									</h5>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									${vegetable.vpackage}
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
									${vegetable.town.tname}
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 
	<div class="clear"></div>
	<div class="conBox">
		<div class="conTitle">蔬菜信息</div>
		<div class="conMiddle">
			<div>
				<table cellpadding="0" cellspacing="13" border="0" class="selectTb">
					<td>
						<table cellpadding="0" cellspacing="0" border="0"
							class="contentTB">
							<tr class="greyColor">
								<tr class="whiteColor">
									<td class="typeNameTd" width="110">蔬菜代号</td>
									<td class="memberAddTd" align="left">${vegetable.id }</td>
									<td class="typeNameTd" width="110">蔬菜品种</td>
									<td class="memberAddTd" align="left">${vegetable.vtype }</td>
									<td class="typeNameTd" width="110">农产品三级代号</td>
								</tr>
							<tr class="whiteColor">
								<td class="typeNameTd" width="110">产地</td>
								<td class="typeNameTd" width="110">制作方法</td>
								<td class="memberAddTd" align="left">${vegetable.vmake }</td>
								<td class="typeNameTd" width="110">等级</td>
								<td class="memberAddTd" align="left">${vegetable.vlevel }</td>
							</tr>
							<tr class="whiteColor">
								<td class="typeNameTd" width="110">农药标准</td>
								<td class="memberAddTd" align="left">${vegetable.vpesticide }</td>
								<td class="typeNameTd" width="110">杂质</td>
								<td class="memberAddTd" align="left">${vegetable.vimpurity }</td>
								<td class="typeNameTd" width="110">纯度</td>
								<td class="memberAddTd" align="left">${vegetable.vpure }</td>
							</tr>
							<tr class="whiteColor">
								<td class="typeNameTd" width="110">完整性</td>
								<td class="memberAddTd" align="left">${vegetable.vintegrity }</td>
								<td class="typeNameTd" width="110">安全性</td>
								<td class="memberAddTd" align="left">${vegetable.vsafe }</td>
								<td class="typeNameTd" width="110">病虫害</td>
								<td class="memberAddTd" align="left">${vegetable.vdisease }</td>
							</tr>
							<tr class="whiteColor">
								<td class="typeNameTd" width="110">合格率</td>
								<td class="memberAddTd" align="left">${vegetable.vquality }</td>
								<td class="typeNameTd" width="110">农药残留量</td>
								<td class="memberAddTd" align="left">${vegetable.vremain }</td>
							</tr>
							<tr class="whiteColor">
								<td class="typeNameTd" width="110">膳食纤维含量</td>
								<td class="memberAddTd" align="left">${vegetable.vfibre }</td>
								<td class="typeNameTd" width="110">蛋白质含量</td>
								<td class="memberAddTd" align="left">${vegetable.vprotein }</td>
								<td class="typeNameTd" width="110">脂肪含量</td>
								<td class="memberAddTd" align="left">${vegetable.vfat }</td>
							</tr>
							<tr class="whiteColor">
								<td class="typeNameTd" width="110">储藏方法</td>
								<td class="memberAddTd" align="left">${vegetable.vstore }</td>
								<td class="typeNameTd" width="110">包装方式</td>
								<td class="memberAddTd" align="left">${vegetable.vpackage }</td>
							</tr>
							<tr class="whiteColor">
								<td class="typeNameTd" width="110">规格</td>
								<td class="memberAddTd" align="left">${vegetable.vspec }</td>
								<td class="typeNameTd" width="110">特色简介</td>
								<td class="memberAddTd" align="left">${vegetable.vfeature }</td>
							</tr>
							<tr class="whiteColor">
								<td class="typeNameTd" width="110">出产时间</td>
								<td class="memberAddTd" align="left">${vegetable.vdate }</td>
								<td class="typeNameTd" width="110">过期时间</td>
								<td class="memberAddTd" align="left">${vegetable.vexpiry }</td>
							</tr>

						</table>
					</td>
					<td colspan="2" rowspan="4" class="typeNameTd" style="width: 100px">
						<img src="<%=request.getContextPath()%>${vegetable.images_url}"
						onerror="this.src='<%=request.getContextPath()%>/theme/images/de_user.gif'"
						width="200" height="250" />
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
	</div> -->
</body>
</html>