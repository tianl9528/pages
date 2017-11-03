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
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/appjs/edit/techsupp.js"></script>

<title>技术需求信息编辑</title>

<script type="text/javascript">
	function goback() {
		history.go(-1);
	}
</script>

<script type="text/javascript">
	$(document).ready(function(){
		$( "#tecdemend" ).datepicker();
	});
</script>

</head>
<body>
<div class="panel panel-default">
	<div class="panel-heading">编辑技术需求信息</div>
		<div class="panel-body">
			<form class="form-horizontal" id="techsuppform" role="form" action="techdema-update.action?id=${techdema.id}" method="post">
				<div class="form-group" id="show1">
					<label for="type" class="col-sm-2 control-label">技术类型</label>
					<label for="type" style="margin-left:12px;margin-top:7px;">${techdema.tist.teInFiType.teInFirTypeName}->${techdema.tist.teInSeTypeName}</label>
					<button type="button" style="margin-top:-2px;" class="btn btn-link" id="bt1">修改</button>
				</div>
				<div class="form-group" id="show2" style="display:none;">
					<label for="type" class="col-sm-2 control-label">技术类型</label>
					<div class="col-sm-4" style="width:100px">
						<select id="ft" name="ft"  class="form-control rightleg">
							
						</select>
					</div>
					<div class="col-sm-4" style="width:100px">
						<select id="st" name="techinfoid"  class="form-control rightleg">
							
						</select>
					</div>
					<button type="button" style="margin-left:0px;margin-top:2px;" class="btn btn-link" id="bt2">取消</button>
				</div>
				<div class="form-group">
					<label for="tecname" class="col-sm-2 control-label">技术名称</label>
					<div class="col-sm-6" style="width:200px">
						<input type="text" class="form-control" id="tecname" name="techdema.tName" value="${techdema.tName}" placeholder="输入技术名称">
					</div>										
				</div>
				<div class="form-group">
					<label for="tecfield" class="col-sm-3 control-label">技术领域</label>
					<div class="col-sm-6" style="width:200px">
						<input type="text" class="form-control" id="tecfield" name="techdema.tdArea" value="${techdema.tdArea}" placeholder="输入技术所在领域">
					</div>
				</div>
				<div class="form-group" >
					<label for="tecinfo" class="col-sm-3 control-label">技术需求描述</label>
					<div class="col-sm-6" style="width:520px;">
						<textarea class="form-control" rows="9" id="tecinfo" name="techdema.tdContent" placeholder="请输入您所需技术的描述，如技术用途、使用范围等" style="height:100px">${techdema.tdContent}</textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="tectype" class="col-sm-3 control-label">农产品类型</label>
					<div class="col-sm-6" style="width:520px;">
						<input type="text" class="form-control" id="tectype" name="techdema.proType" value="${techdema.proType}" placeholder="输入相关的农产品类型">
					</div>
				</div>
				<div class="form-group">
					<label for="deadline" class="col-sm-3 control-label">需求截止时间</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="tecdemend" name="techdema.tdExpDate" value="<fmt:formatDate value='${techdema.tdExpDate}' pattern='yyyy-MM-dd'></fmt:formatDate>" placeholder="如：2014年6月1日">
					</div>
				</div>
				<div class="form-group">
					<label for="linkman" class="col-sm-3 control-label">联系人</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkman" name="techdema.tdContact" value="${techdema.tdContact}" placeholder="输入产品的联系方式">
					</div>
					<label for="linkphone" class="col-sm-3 control-label" style="width:100px;">联系电话</label>
					<div class="col-sm-6" style="width:220px;">
						<input type="text" class="form-control" id="linkphone" name="techdema.tdPhone" value="${techdema.tdPhone}" placeholder="输入联系电话">
					</div>
				</div>
				<div class="form-group">
					<label for="linkaddress" class="col-sm-3 control-label" >联系地址</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkaddress" name="techdema.tdAddress" value="${techdema.tdAddress}" placeholder="输入联系地址">
					</div>
					<label for="postcode" class="col-sm-3 control-label" style="width:100px;">邮编</label>
					<div class="col-sm-6" style="width:220px;">
						<input type="text" class="form-control" id="postcode" name="techdema.tdPostCode" value="${techdema.tdPostCode}" placeholder="输入联系地址对应的邮编">
					</div>
					
				</div>
				<div class="form-group">
					<label for="linkmail" class="col-sm-3 control-label">联系人邮箱</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkmail" name="techdema.tdEmail" value="${techdema.tdEmail}" placeholder="输入联系人邮箱">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
						<button type="submit" class="btn btn-success col-sm-3" style="width:80px">发布</button>
						<button type="reset" onclick="goback();"class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
					</div>
				</div>
			</form><!--form-horizontal-->
		</div>
	</div><!--panel panel-default-->
</body>
</html>