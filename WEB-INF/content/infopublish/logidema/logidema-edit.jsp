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

<title>物流需求编辑</title>

<script type="text/javascript">
	function goback() {
		history.go(-1);
	}
</script>

<script type="text/javascript">
	$(document).ready(function(){
		$( "#logdemend" ).datepicker();
	});
</script>

</head>
<body>
<div class="panel panel-default">
	<div class="panel-heading">编辑物流需求信息</div>
		<div class="panel-body">
			<form class="form-horizontal" role="form" action="logidema-update.action?id=${logidema.id}" method="post">
				<div class="form-group">
					<label for="start" class="col-sm-2 control-label">出发地</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="start" name="logidema.startPlace" value="${logidema.startPlace}" placeholder="如：茂名市-电白">
					</div>
					<label for="end" class="col-sm-2 control-label" style="width:80px;">到达地</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="end" name="logidema.arrivePlace" value="${logidema.arrivePlace}" placeholder="如：广州-天河">
					</div>
				</div>						
				<div class="form-group">
					<label for="goodsname" class="col-sm-2 control-label">货物名称</label>
						<div class="col-sm-6" style="width:400px;">
							<input type="text" class="form-control" id="goodsname" name="logidema.goodsName" value="${logidema.goodsName}" placeholder="如：化肥，大米等">
						</div>
				</div>
				<div class="form-group">
					<label for="trantype" class="col-sm-2 control-label">运输类型</label>
					<div class="col-sm-10" style="width:100px;">
						<input type="hidden" class="form-control" id="trantype">
						<select id="ObjectCategorytype1" name="logidema.transType" class="form-control rightleg">
							<option <c:if test="${logidema.transType == '物流公司'}">selected</c:if> value="物流公司">物流公司</option>
							<option <c:if test="${logidema.transType == '整车配货'}">selected</c:if> value="整车配货">整车配货</option>
							<option <c:if test="${logidema.transType == '零担配货'}">selected</c:if> value="零担配货">零担配货</option>
						</select>
					</div>
					<label for="goodstype" class="col-sm-2 control-label">货物类型</label>
					<div class="col-sm-10" style="width:100px;">
						<input type="hidden" class="form-control" id="goodstype"  >
						<select id="ObjectCategorytype1" name="logidema.goodsType" class="form-control rightleg">
							<option <c:if test="${logidema.goodsType == '重货'}">selected</c:if> value="重货">重货</option>
							<option <c:if test="${logidema.goodsType == '轻货'}">selected</c:if> value="轻货">轻货</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="amount" class="col-sm-2 control-label">数量</label>
						<div class="col-sm-6 textsmall">
							<input type="text" class="form-control" id="amount" name="logidema.count" value="${logidema.count}" placeholder="输入运输数量">
						</div>
					<label class="col-sm-2 control-label tip-text" style="text-align:left;width:70px;">件</label>
					<label for="weight" class="col-sm-2 control-label" style="width:110px;">重量</label>
					<div class="col-sm-6 textsmall">
						<input type="text" class="form-control" id="weight" name="logidema.load" value="${fn:split( logidema.load,',')[0]}">
					</div>
					<select id="ObjectCategorytype1" name="logidema.load" class="form-control rightleg">
							<option <c:if test="${fn:contains(logidema.load, '吨/T')}">selected</c:if> value="吨/T">吨/T</option>
							<option <c:if test="${fn:contains(logidema.load, '千克/KG')}">selected</c:if> value="千克/KG">千克/KG</option>
							<option <c:if test="${fn:contains(logidema.load, '斤')}">selected</c:if> value="斤">斤</option>
							<option <c:if test="${fn:contains(logidema.load, '件')}">selected</c:if> value="件">件</option>
					</select>
				</div>
				<div class="form-group">
					<label for="bulk" class="col-sm-2 control-label">体积</label>
						<div class="col-sm-6 textsmall">
							<input type="text" class="form-control" id="bulk" name="logidema.volume" value="${logidema.volume}" placeholder="如：2立方米">
						</div>
					<label class="col-sm-2 control-label tip-text" style="text-align:left;width:70px;">立方米</label>
					<label for="price" class="col-sm-2 control-label" style="width:110px;">期望运价</label>
						<div class="col-sm-6 textsmall">
							<input type="text" class="form-control" id="price" name="logidema.price" value="${logidema.price}" placeholder="如：100元">
						</div>
						<label class="col-sm-2 control-label tip-text" style="text-align:left;">元（RMB）</label>
				</div>
				<div class="form-group">
					<label for="demand" class="col-sm-2 control-label">货物运输要求</label>
					<div class="col-sm-10" style="width:100px;">
						<input type="hidden" class="form-control" id="demand">
						<select id="ObjectCategorytype1" name="logidema.require" class="form-control rightleg">
							<option <c:if test="${logidema.require == '向上'}">selected</c:if> value="向上">向上</option>
							<option <c:if test="${logidema.require == '防潮'}">selected</c:if> value="防潮">防潮</option>
							<option <c:if test="${logidema.require == '易碎'}">selected</c:if>value="易碎">易碎</option>
							<option <c:if test="${logidema.require == '危险品'}">selected</c:if>value="危险品">危险品</option>
							<option <c:if test="${logidema.require == '冷链运输'}">selected</c:if>value="冷链运输">冷链运输</option>
							<option <c:if test="${logidema.require == '其他'}">selected</c:if> value="其他">其他</option>
						</select>
					</div>
					<div style="margin-left:330px;">
						<label for="deadline" class="col-sm-2 control-label" >信息截止日期</label>
							<div class="col-sm-6" style="width:200px;">
								<input type="text" class="form-control" id="logdemend" value="<fmt:formatDate value='${logidema.ldExpDate}' pattern='yyyy-MM-dd'></fmt:formatDate>" name="logidema.ldExpDate" placeholder="如：2014年9月1日">
							</div>
					</div>
				</div>
				<div class="form-group" >
					<label for="remarks" class="col-sm-2 control-label">说明</label>
					<div class="col-sm-6" style="width:400px;">
						<textarea class="form-control" row="9" id="remarks" name="logidema.explanation" placeholder="求车" style="height:100px">${logidema.explanation}</textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="linkman" class="col-sm-2 control-label">联系人</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkman" name="logidema.ldContact" value="${logidema.ldContact}" placeholder="输入产品的联系方式">
					</div>
					<label for="linkphone" class="col-sm-2 control-label" style="width:100px;">联系电话</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkphone" name="logidema.ldPhone" value="${logidema.ldPhone}" placeholder="输入联系电话">
					</div>
				</div>
				<div class="form-group">
					<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkaddress" name="logidema.ldAddress" value="${logidema.ldAddress}" placeholder="输入联系地址">
					</div>
					<label for="postcode" class="col-sm-2 control-label" style="width:100px;">邮编</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="postcode" name="logidema.ldPostcode" value="${logidema.ldPostcode}" placeholder="输入联系地址对应的邮编">
					</div>
					
				</div>
				<div class="form-group">
					<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkmail" name="logidema.ldEmail" value="${logidema.ldEmail}" placeholder="输入联系人邮箱">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
						<button type="submit" class="btn btn-success col-sm-3" style="width:80px">发布</button>
						<button type="reset" onclick="goback();" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
					</div>
				</div>
			</form><!--form-horizontal-->
		</div>
	</div><!--panel panel-default-->
</body>
</html>