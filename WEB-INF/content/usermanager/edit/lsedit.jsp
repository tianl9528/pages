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

<title>发布信息管理>>物流供应信息编辑</title>

<script type="text/javascript">
	function goback() {
		history.go(-1);
	}
</script>

<script type="text/javascript">
	$(document).ready(function(){
		$( "#starttime" ).datepicker();
	});
</script>

</head>
<body>
<div class="panel panel-default">
	<div class="panel-heading">编辑物流供应信息</div>
		<div class="panel-body">
			<form class="form-horizontal" role="form" action="lsupdate.action?id=${logisupp.id}" method="post">
				<div class="form-group">
					<label for="start" class="col-sm-2 control-label">出发地</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="start" name="logisupp.startPlace" value="${logisupp.startPlace}" placeholder="如：茂名市-电白">
					</div>
					<label for="end" class="col-sm-2 control-label" style="width:80px;">到达地</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="end" name="logisupp.arrivePlace" value="${logisupp.arrivePlace}" placeholder="如：广州-天河">
					</div>
				</div>							
				<div class="form-group">
					<label for="wayto" class="col-sm-2 control-label">途径地</label>
					<div class="col-sm-6" style="width:400px;">
						<input type="text" class="form-control" id="wayto" name="logisupp.wayPoint" value="${logisupp.wayPoint}" placeholder="如：佛山-三水、江门-开平">
					</div>
				</div>
				<div class="form-group">
					<label for="starttime" class="col-sm-2 control-label" >发车时间</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="starttime" name="logisupp.departureTime" value="<fmt:formatDate value='${logisupp.departureTime}' pattern='yyyy-MM-dd'></fmt:formatDate>" placeholder="如：2014年6月1日">
					</div>
					<label for="price" class="col-sm-2 control-label" style="width:80px;">价格</label>
					<div class="col-sm-6 textsmall">
						<input type="text" class="form-control" id="price" name="logisupp.lsPrice" value="${logisupp.lsPrice}" placeholder="输入货运价格">
					</div>
					<label class="col-sm-2 control-label tip-text">元（RMB）</label>
				</div>
				<div class="form-group">
					<label for="lorrycode" class="col-sm-2 control-label">车辆识别代号</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="loorycode" name="logisupp.identiCode" value="${logisupp.identiCode}" placeholder="输入车辆代号">
					</div>
				</div>
				<div class="form-group" >
					<label for="remarks" class="col-sm-2 control-label">说明</label>
					<div class="col-sm-6" style="width:400px;">
						<textarea class="form-control" row="9" id="remarks" name="logisupp.explanation" placeholder="输入车辆档案资料、车牌号、车长、载重、车辆住址、车辆类型、车体状况等" style="height:100px">${logisupp.explanation}</textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="linkman" class="col-sm-2 control-label">联系人</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkman" name="logisupp.lsContact" value="${logisupp.lsContact}" placeholder="输入产品的联系方式">
					</div>
					<label for="linkphone" class="col-sm-2 control-label" style="width:100px;">联系电话</label>
					<div class="col-sm-6" style="width:220px;">
						<input type="text" class="form-control" id="linkphone" name="logisupp.lsPhone" value="${logisupp.lsPhone}" placeholder="输入联系电话">
					</div>
				</div>
				<div class="form-group">
					<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkaddress" name="logisupp.lsAddress" value="${logisupp.lsAddress}" placeholder="输入联系地址">
					</div>
					<label for="postcode" class="col-sm-2 control-label" style="width:100px;">邮编</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="postcode" name="logisupp.lsPostcode" value="${logisupp.lsPostcode}" placeholder="输入联系地址对应的邮编">
					</div>
					
				</div>
				<div class="form-group">
					<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkmail" name="logisupp.lsEmail" value="${logisupp.lsEmail}" placeholder="输入联系人邮箱">
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