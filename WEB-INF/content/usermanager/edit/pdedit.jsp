<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%
	String base_root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=base_root%>/theme/css/user.css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/appjs/edit/prosup.js"></script>

<title>发布信息管理>>农产品求购信息编辑</title>

<script type="text/javascript">
	function goback() {
		history.go(-1);
	}
</script>

<script type="text/javascript">
	$(document).ready(function(){
		$( "#prodemend" ).datepicker();
	});
</script>

</head>
<body>
<div class="panel panel-default">
	<div class="panel-heading">编辑农产品需求信息</div>
		<div class="panel-body">
			<form class="form-horizontal" role="form" id="prosupform" action="pdupdate.action?id=${probuy.id}" method="post">
				<div class="form-group" id="show1">
					<label for="goods" class="col-sm-2 control-label">产品类型</label>
					<label for="goodstype" style="margin-left:10px;margin-top:7px;">${probuy.agriculturethirdtype.agriculturesecondtype.agriculturefirsttype.agftypename}->${probuy.agriculturethirdtype.agriculturesecondtype.agstypename}->${probuy.agriculturethirdtype.agttypename}</label>																															
					<button type="button" style="margin-top:-2px;" class="btn btn-link" id="bt1">修改</button>
				</div>
				<div class="form-group" id="show2" style="display:none;">
					<label for="goods" class="col-sm-2 control-label">产品类型</label>
					<div class="col-sm-4" style="width:100px">
						<select id="first" name="first"  class="form-control rightleg">
										
						</select>
					</div>
					<div class="col-sm-4" style="width:100px">
						<select id="second" name="second"  class="form-control rightleg">
										
						</select>
					</div>
					<div class="col-sm-4" style="width:100px">
						<select id="third" name="attid"  class="form-control rightleg">
										
						</select>																						
					</div>
					<button type="button" style="margin-left:0px;margin-top:2px;" class="btn btn-link" id="bt2">取消</button>											
				</div>		
				<div class="form-group">
					<label for="probuy.pbName" class="col-sm-2 control-label">产品名称</label>
					<div class="col-sm-6" style="width:200px">
						<input type="text" class="form-control" id="probuy.pbName" name="probuy.pbName" value="${probuy.pbName}" placeholder="输入产品名称">
					</div>
				</div>
				<div class="form-group" >
					<label for="goodsinfo" class="col-sm-2 control-label">产品描述</label>
					<div class="col-sm-6" style="width:520px;">
						<textarea class="form-control" row="9" id="goodsinfo" name="probuy.pbContent" placeholder="请输入相关的产品描述，如外观、大小，颜色等" style="height:100px">${probuy.pbContent}</textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="goodsprice" class="col-sm-2 control-label">产品价格</label>
					<div class="col-sm-6 textsmall"style="width:100px;">
						<input type="text" class="form-control" id="goodsprice" name="probuy.pbPrice" value="${probuy.pbPrice}" placeholder="输入产品价格">
					</div>
					<label class="col-sm-2 control-label tip-text">元（RMB）</label>

					<label for="goodsamount" class="col-sm-2 control-label">产品需求量</label>
						<div class="col-sm-6 textsmall" style="width:100px;">
							<input type="text" class="form-control" id="goodsamount" name="probuy.pbNum" value="${fn:split(probuy.pbNum,',')[0]}" placeholder="输入产品需求量">
						</div>
						<select id="ObjectCategorytype1" name="probuy.pbNum" class="form-control rightleg">
							<option <c:if test="${fn:contains(probuy.pbNum, '吨/T')}">selected</c:if> value="吨/T">吨/T</option>
							<option <c:if test="${fn:contains(probuy.pbNum, '千克/KG')}">selected</c:if> value="千克/KG">千克/KG</option>
							<option <c:if test="${fn:contains(probuy.pbNum, '斤')}">selected</c:if> value="斤">斤</option>
							<option <c:if test="${fn:contains(probuy.pbNum, '件')}">selected</c:if> value="件">件</option>
						</select>
				</div>
				<div class="form-group">
					<label for="goodsquality" class="col-sm-2 control-label">产品质量要求</label>
					<div class="col-sm-6" style="width:520px;">
						<input type="text" class="form-control" id="goodsquality" name="probuy.pbCertify" value="${probuy.pbCertify}" vplaceholder="输入相关的产品质量要求">
					</div>
				</div>
				<div class="form-group">
					<label for="maker" class="col-sm-2 control-label">生产厂家</label>
					<div class="col-sm-6" style="width:520px;">
						<input type="text" class="form-control" id="maker" name="probuy.pbFactory" value="${probuy.pbFactory}" placeholder="输入产品的生产厂家">
					</div>
				</div>
				<div class="form-group">
					<label for="deadline" class="col-sm-2 control-label">需求截止时间</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="prodemend" name="probuy.pbExpDate" value="<fmt:formatDate value='${probuy.pbExpDate}' pattern='yyyy-MM-dd'></fmt:formatDate>" placeholder="输入该产品供应/需求的截止时间">
					</div>
					<label for="logistics" class="col-sm-2 control-label" style="width:100px;">物流方式</label>
					<div class="col-sm-10" style="width:100px;">
						<input type="hidden" class="form-control" id="logistics" placeholder="Password">
						<select id="ObjectCategorytype1" name="probuy.pbLogistics" class="form-control rightleg">
							<option <c:if test="${probuy.pbLogistics == '空运'}">selected</c:if> value="空运">空运</option>
							<option <c:if test="${probuy.pbLogistics == '铁路'}">selected</c:if> value="铁路">铁路</option>
							<option <c:if test="${probuy.pbLogistics == '公路'}">selected</c:if> value="公路">公路</option>
							<option <c:if test="${probuy.pbLogistics == '快递'}">selected</c:if> value="快递">快递</option>
							<option <c:if test="${probuy.pbLogistics == '自提'}">selected</c:if> value="自提">自提</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="linkman" class="col-sm-2 control-label">联系人</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkman" name="probuy.pbContact" value=" ${probuy.pbContact}"placeholder="输入产品的联系方式">
					</div>
					<label for="linkphone" class="col-sm-2 control-label" style="width:100px;">联系电话</label>
					<div class="col-sm-6" style="width:220px;">
						<input type="text" class="form-control" id="linkphone" name="probuy.pbPhone" value="${probuy.pbPhone}" placeholder="输入联系电话">
					</div>
				</div>
				<div class="form-group">
					<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkaddress" name="probuy.pbAddress" value="${probuy.pbAddress}" placeholder="输入联系地址">
					</div>
					<label for="postcode" class="col-sm-2 control-label" style="width:100px;">邮编</label>
					<div class="col-sm-6" style="width:220px;">
						<input type="text" class="form-control" id="postcode" name="probuy.pbPostCode" value="${probuy.pbPostCode}" placeholder="输入联系地址对应的邮编">
					</div>
					
				</div>
				<div class="form-group">
					<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkmail" name="probuy.pbEmail" value="${probuy.pbEmail}" placeholder="输入联系人邮箱">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
						<button type="submit" class="btn btn-success col-sm-3" style="width:80px">修改</button>
						<button type="reset" onclick="goback();" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
					</div>
				</div>
			</form><!--form-horizontal-->
		</div>
	</div><!--panel panel-default-->
</body>
</html>