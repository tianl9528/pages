<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import= "sunit.accesscontrol.object.User"%>
<%@ page import= "java.util.Date"%>
<%@ page import= "java.text.SimpleDateFormat"%>
<%@ page import= "sunit.app.infopublish.object.JobSeek" %>

<!DOCTYPE html> 
<html lang="en"> 
<head> 
<%
	String base_root = request.getContextPath();

%>
<meta charset="utf-8"> 
<title>用户空间 >>信息发布</title> 

<link href="<%=base_root%>/theme/css/user.css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/appjs/techinfotype/techinfotype.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery.validate.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/appjs/infopublish/validate.js"></script>

<style type="text/css">
#techsuppform label.error {
	margin-left: 2px;
	width: auto;
	display: inline;
	color:#F00;
}
</style>

<script type="text/javascript">
	$(document).ready(function(){				
		$( "#tecsupend" ).datepicker();	
	});
</script>

</head>
<body >
	<div style="max-width:1007px;min-width:722px;padding: 20px 13px 0 0;">
		<div class="panel panel-default">
			<div class="panel-heading">技术信息发布</div>
				<div class="panel-body">
					<form class="form-horizontal" id="techsuppform" role="form" action="techsupp-save.action" method="post">					
						<div class="row" style="margin:0">
							<div class="form-group">
								<label for="type" class="col-lg-2 col-xs-2 control-label">技术类型</label>
							<div class="col-lg-4 col-xs-4" style="width:100px">
								<select id="ft" name="ft"  class="form-control rightleg">
									<option value="">==请选择==</option>
								</select>
							</div>
							<div class="col-lg-4 col-xs-4" style="width:100px">
								<select id="st" name="techinfoid"  class="form-control rightleg">
									<option value="">==请选择==</option>
								</select>
							</div>										
							<label for="tecname" class="col-lg-2 col-xs-2 control-label" style="text-align:right">技术名称</label>
							<div class="col-lg-4 col-xs-4">
								<input type="text" class="form-control" id="tecname" placeholder="技术名称" name="techsupp.tsName" >
							</div>
							</div>
						</div>																														
						<div class="form-group" >
							<label for="tecinfo" class="col-lg-2 col-xs-2 control-label" style="text-align:right">技术信息描述</label>
							<div class="col-lg-6 col-xs-6">
								<textarea class="form-control" rows="9" id="tecinfo" placeholder="技术的相关描述，如技术用途、用法，应用范围等" name="techsupp.tsContent" style="height:100px"></textarea>
							</div>
						</div>
						
						<div class="row" style="margin:0">
							<div class="form-group">
								<label for="tecfield" class="col-lg-2 col-xs-2 control-label" style="text-align:right">技术领域</label>
								<div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="tecfield" placeholder="技术领域"  name="techsupp.tsArea">
								</div>
								<label for="tecsource" class="col-lg-2 col-xs-2 control-label" style="text-align:right">技术来源</label>
								<div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="tecsource" placeholder="技术来源" name="techsupp.tsSource">
								</div>
							</div>
						</div>								
						<div class="row" style="margin:0">
							<div class="form-group">
								<label for="goodstype" class="col-lg-2 col-xs-2 control-label" style="text-align:right">相关农产品类型</label>
								<div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="proType" placeholder="农产品类型" name="techsupp.proType">
								</div>
								<label for="tecgain" class="col-lg-2 col-xs-2 control-label" style="text-align:right">技术获取渠道</label>
								<div class="col-lg-4 col-xs-4" style="padding-top:7px">
									<select id="ObjectCategorytype1" name="techsupp.tsGetway" class="form-control rightleg">
										<option value="" selected="selected">请选择</option>
										<option value="合作">合作</option>
										<option value="技术转让">技术转让</option>
										<option value="培训">培训</option>
										<option value="上门服务">上门服务</option>
										<option value="其他">其他</option>
									</select>
								</div>
							</div>
						</div>								
						<div class="row" style="margin:0">
						<div class="form-group">
							<label for="tecrelate" class="col-lg-2 col-xs-2 control-label" style="text-align:right">相关技术</label>
							<div class="col-lg-4 col-xs-4" >
								<input type="text" class="form-control" id="tecrelate" placeholder="相关技术" name="techsupp.tsRelated">
							</div>
							<label for="deadline" class="col-lg-2 col-xs-2 control-label" style="text-align:right">供应截止时间</label>
							<div class="col-lg-4 col-xs-4">
								<input type="text" class="form-control" id="tecsupend" placeholder="该技术供应截止时间" name="techsupp.tsExpDate">
							</div>
						</div>
						</div>								
						<div class="row" style="margin:0">
							<div class="form-group">
								<label for="linkman" class="col-lg-2 col-xs-2 control-label" style="text-align:right">联系人</label>
								<div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="linkman" value="${user.user_name }" placeholder="联系人" name="techsupp.tsContact">
								</div>
								<label for="linkphone" class="col-lg-2 col-xs-2 control-label" style="text-align:right">联系电话</label>
								<div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="linkphone" value="${user.mobile }" placeholder="联系电话" name="techsupp.tsPhone">
								</div>
							</div>
						</div>								
						<div class="row" style="margin:0">
							<div class="form-group">
								<label for="linkaddress" class="col-lg-2 col-xs-2 control-label" style="text-align:right" >联系地址</label>
								<div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="linkaddress" placeholder="联系地址" name="techsupp.tsAddress">
								</div>
								<label for="postcode" class="col-lg-2 col-xs-2 control-label" style="text-align:right">邮编</label>
								<div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="postcode" placeholder="邮政编码" name="techsupp.tsPostCode" >
								</div>										
							</div>
						</div>						
						<div class="form-group">
							<label for="linkmail" class="col-lg-2 col-xs-2 control-label" style="text-align:right">联系人邮箱</label>
							<div class="col-lg-4 col-xs-4">
								<input type="text" class="form-control" id="linkmail" placeholder="联系人邮箱"  value="${user.email }" name="techsupp.tsEmail" >
							</div>
						</div>
					<div class="form-group ">
						<div class="col-lg-6 col-lg-offset-4 col-xs-6 col-xs-offset-4">
							<button type="submit" class="btn btn-success col-lg-2 col-xs-2">发布</button>
							<button type="reset" class="btn btn-danger col-lg-2 col-lg-offset-1 col-xs-2 col-xs-offset-1">重置</button>
						</div>
					</div>							
				</form><!--form-horizontal-->
			</div>
		</div><!--panel panel-default-->
	</div>
</body>
</html>