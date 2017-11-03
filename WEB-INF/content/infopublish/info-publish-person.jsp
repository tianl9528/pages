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
	JobSeek job = (JobSeek)request.getAttribute("jobseekload");	
%>
<meta charset="utf-8"> 
<title>用户空间 >>个人信息发布</title> 

<link href="<%=base_root%>/theme/css/user.css" rel="stylesheet">


<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery.validate.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/dialog.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/gettype.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/appjs/techinfotype/techinfotype.js"></script>
<link href="<%=request.getContextPath()%>/theme/js/dialog.css" rel="stylesheet" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/appjs/infopublish/validate.js"></script>
<style>
	#dlg .close {
	font-size:14px;
	font-weight:normal;
	opacity: 1;
	color:white;
	text-shadow:none;
	line-height:1.3;
	
}
#dlg .content
{
  width:250px;
  height:80px;
}

.nav-pills > li >a{
	border-radius:0;
	text-align:left;
	width:200px;
}
.nav-pills > li.active > a,
.nav-pills > li.active > a:hover,
.nav-pills > li.active > a:focus {
  color: #ffffff;
  background-color:#A8CBF2;
}
</style>
<script>
$(document).ready(function(){
$('.leftitem li >a ').click(function(e)
{
	e.preventDefault();
	var lis=$('li');
	lis.removeClass('active');
});

$('.leftitem .panel-title > a ').click(function(e)
{
	e.preventDefault();
	var submenu=$(this).parent().parent().next();
	var panel=submenu.parent();
	var panels=$('#sidebar div.panel-body');
	var panels_parents=$('#sidebar div.panel');
	
	if(submenu.parent().hasClass('open'))
	{
		submenu.slideUp();
		panel.removeClass('open');
	}
	else
	{
		panels.slideUp();
		submenu.slideDown();
		panels_parents.removeClass('open');
		panel.addClass('open');
	}
	
})
	});
</script>
<style>
	#dlg .close {
	font-size:14px;
	font-weight:normal;
	opacity: 1;
	color:white;
	text-shadow:none;
	line-height:1.3;
	
}
#dlg .content
{
  width:250px;
  height:80px;
}
</style>
<script type="text/javascript">
$(function(){
$("#jobseek").click(function(){
	<%
		if(job!=null){
	%>
		//showInfo("您已发布过求职信息，您现在可以查看或者修改！",1);
		new Dialog('您已发布过求职信息，您现在可以查看或者修改！',
				{
					id:'dlg',
					time:3000,
					title:"系统信息"
				}).show();
	<% }%>
	});
	


});
	function checkJobseek(obj){
		return true;
	}
</script>

<style type="text/css">
#prosupform label.error {
	margin-left: 2px;
	width: auto;
	display: inline;
	color:#F00;
}
#probuyform label.error {
	margin-left: 2px;
	width: auto;
	display: inline;
	color:#F00;
}
#techsuppform label.error {
	margin-left: 2px;
	width: auto;
	display: inline;
	color:#F00;
}
#techdemaform label.error {
	margin-left: 2px;
	width: auto;
	display: inline;
	color:#F00;
}
#investform label.error {
	margin-left: 2px;
	width: auto;
	display: inline;
	color:#F00;
}
#jobseekform label.error {
	margin-left: 2px;
	width: auto;
	display: inline;
	color:#F00;
}
#logisupform label.error {
	margin-left: 2px;
	width: auto;
	display: inline;
	color:#F00;
}
#logidemaform label.error {
	margin-left: 2px;
	width: auto;
	display: inline;
	color:#F00;
}
</style>

<script type="text/javascript">
	$(document).ready(function(){
		$( "#prosupend" ).datepicker();
		$( "#prodemend" ).datepicker();
		$( "#tecsupend" ).datepicker();
		$( "#tecdemend" ).datepicker();
		$( "#investend" ).datepicker();
		$( "#logdemend" ).datepicker();
		$( "#starttime" ).datepicker();
		
	});
</script>

</head>
<body>
  <div class="row  yy_content" style="padding: 20px 13px 0 0;">
		   <div class="col-lg-3 col-xs-3 leftitem" style="padding-left:0">
			<div id="sidebar" style="margin-left:15px;">
					<div class="panel panel-default  open" style="margin-bottom:2px">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a style="cursor:pointer">
								发布供应信息
								</a>
							</h4>
						</div>
						<div class="panel-body">																	
							<ul class="nav nav-pills">
									  <li class="active"><a href="#tab1" data-toggle="tab">农产品供应</a>
									  <li><a href="#tab3" data-toggle="tab">技术供应</a>
									  <li><a href="#tab7" data-toggle="tab">物流供应</a>
							</ul>									 
						</div>
					</div>
				  
					<div class="panel panel-default" style="margin-bottom:2px">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a style="cursor:pointer">
								发布需求信息
								</a>
							</h4>
						</div>
						<div class="panel-body" style="display:none;">
							<ul class="nav nav-pills">
							  <li><a href="#tab2" data-toggle="tab">农产品需求</a>
							  <li><a href="#tab4" data-toggle="tab">技术需求</a>
							  <li><a href="#tab8" data-toggle="tab">物流需求</a>
							</ul>
						</div>						
				  </div>
				  
				  	<div class="panel panel-default" style="margin-bottom:2px">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a style="cursor:pointer">
								发布其他信息
								</a>
							</h4>
						</div>
						<div class="panel-body" style="display:none;">
							<ul class="nav nav-pills">
							  <li><a href="#tab5" data-toggle="tab">招商代理</a>
							  <li id="jobseek"><a href="#tab6" data-toggle="tab">求职</a>
							</ul>
						</div>						
				  </div>
				  
			 </div> 
		</div>

		<div class="col-md-9 yy_contright" style="padding-left:0px;">
			<div class="tab-content col-md-12" style="padding:0px 0 0 10px;margin-left:-10px;">
				<div class="tab-pane active" id="tab1"><!--产品供应-->
					<div class="panel panel-default">
					<div class="panel-heading">发布农产品供应信息&nbsp;</div>
						<div class="panel-body">
							<form class="form-horizontal" id="prosupform" action="prosupp-save.action" method="post" enctype="multipart/form-data">
								<div class="row">
									<div class="col-md-4 firstcol">
										<div class="form-group">
											<label for="goods" class="col-sm-2 control-label">产品类型</label>
											<div class="col-sm-4" style="width:100px">
												<select id="first" name="first"  class="form-control rightleg">
    												<option value="">==请选择==</option>
												</select>
											</div>
											<div class="col-sm-4" style="width:100px">
												<select id="second" name="second"  class="form-control rightleg">
    												<option value="">==请选择==</option>
												</select>
											</div>
											<div class="col-sm-4" style="width:100px">
												<select id="third" name="attid"  class="form-control rightleg">
    												<option value="">==请选择==</option>
												</select>																						
											</div>											
										</div>										
										<div class="form-group">
											<label for="goods" class="col-sm-2 control-label">产品名称</label>
											<div class="col-sm-6" style="width:200px">
												<input type="text" class="form-control" id="spName" name="prosupp.spName" placeholder="输入产品名称">
											</div>
										</div>
										<div class="form-group" >
											<label for="goodsinfo" class="col-sm-2 control-label">产品描述</label>
											<div class="col-sm-6 input_width1">
												<textarea class="form-control" rows="9" id="goodsinfo" name="prosupp.spContent" placeholder="请输入相关的产品描述，如外观、大小，颜色等" style="height:100px"></textarea>
											</div>
										</div>
										<div class="form-group">
											<label for="goodsprice" class="col-sm-2 control-label">产品价格</label>
											<div class="col-sm-6 textsmall">
												<input type="text" class="form-control" id="spPrice" name="prosupp.spPrice" placeholder="输入产品价格">
											</div>
											<label class="col-sm-2 control-label tip-text">元（RMB）</label>
										</div>
										<div class="form-group">
											<label for="goodsamount" class="col-sm-2 control-label">产品储量</label>
												<div class="col-sm-6 textsmall">
													<input type="text" class="form-control" id="spNum" name="prosupp.spNum" placeholder="输入产品储量">
												</div>
												<select id="unit" name="prosupp.spNum" class="form-control rightleg" style="width:100px;">
													<option value="" selected="selected">选择单位</option>
													<option value="吨">吨</option>
													<option value="千克">千克</option>
													<option value="斤">斤</option>
													<option value="件">件</option>
												</select>
										</div>
										<div class="form-group">
											<label for="goodsapprove" class="col-sm-2 control-label">产品认证信息</label>
											<div class="col-sm-6 input_width1">
												<input type="text" class="form-control" id="goodsapprove" name="prosupp.spCertify" placeholder="输入相关的产品认证信息">
											</div>
										</div>
										<div class="form-group">
											<label for="goodsquality" class="col-sm-2 control-label">产品质量信息</label>
											<div class="col-sm-6 input_width1">
												<input type="text" class="form-control" id="goodsquality" name="prosupp.spQuality" placeholder="输入相关的产品质量信息">
											</div>
										</div>
									</div><!--firstcol，第一列--->
									<div class="col-md-4">
										<div class="form-group">
											<img class ="img-thumbnail" src="#" style="width:300px;height:200px;"/>
											<label for="exampleInputFile" style="margin-left:10px">
												上传产品图片
												<input type="file" id="imgfile" value="上传图片" name="reportFiles" />
											</label>
										</div>
									</div><!--第二列-->
								</div>
								<div class="form-group">
									<label for="maker" class="col-sm-2 control-label">生产厂家</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="maker" name="prosupp.spFactory" placeholder="输入产品的生产厂家">
									</div>
								</div>
								<div class="form-group">
									<label for="deadline" class="col-sm-2 control-label">供应截止时间</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="prosupend" name="prosupp.spExpDate" placeholder="输入产品的截止时间">
									</div>
									<label for="logistics" class="col-sm-2 control-label">物流方式</label>
									<div class="col-sm-10" style=" width:100px;">
										<input type="hidden" class="form-control" id="logistics" placeholder="Password">
										<select id="logis" name="prosupp.spLogistics" class="form-control rightleg">
											<option value="" selected="selected">请选择</option>
											<option value="空运">空运</option>
											<option value="铁路">铁路</option>
											<option value="公路">公路</option>
											<option value="快递">快递</option>
											<option value="自提">自提</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="linkman" class="col-sm-2 control-label">联系人</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkman" name="prosupp.spContact" value="${user.user_name}" placeholder="输入产品的联系人">
									</div>
									<label for="linkphone" class="col-sm-2 control-label">联系电话</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkphone" name="prosupp.spPhone" value="${user.person.mobile }" placeholder="输入联系电话">
									</div>
								</div>
								<div class="form-group">
									<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkaddress" name="prosupp.spAddress" value="${user.person.address }" placeholder="输入联系地址">
									</div>
									<label for="postcode" class="col-sm-2 control-label">邮编</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="postcode" name="prosupp.spPostCode" value="${user.person.postcode }" placeholder="输入联系地址对应的邮编">
									</div>
									
								</div>
								<div class="form-group">
									<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkmail" name="prosupp.spEmail" value="${user.person.email }" placeholder="输入联系人邮箱">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
										<button type="submit" class="btn btn-success col-sm-3" style="width:80px" onclick="validate()">发布</button>
										<button type="reset" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
									</div>
								</div>
							</form><!--form-horizontal-->
						</div>
					</div><!--panel panel-default-->
				</div><!--tab-pane tab1-->
				<div class="tab-pane" id="tab2"><!--产品需求-->
					<div class="panel panel-default">
						<div class="panel-heading">发布农产品需求信息</div>
							<div class="panel-body">
								<form class="form-horizontal" role="form" id="probuyform" action="probuy-save.action" method="post">
									<div class="form-group">
											<label for="goods" class="col-sm-2 control-label">产品类型</label>
											<div class="col-sm-4" style="width:100px">
												<select  id="first" name="first"  class="form-control rightleg">
    												<option value="">==请选择==</option>
												</select>
											</div>
											<div class="col-sm-4" style="width:100px">
												<select  id="second" name="second"  class="form-control rightleg">
    												<option value="">==请选择==</option>
												</select>
											</div>
											<div class="col-sm-4" style="width:100px">
												<select id="third" name="attid"  class="form-control rightleg">
    												<option value="">==请选择==</option>
												</select>																						
											</div>											
										</div>		
									<div class="form-group">
										<label for="probuy.pbName" class="col-sm-2 control-label">产品名称</label>
										<div class="col-sm-6" style="width:200px">
											<input type="text" class="form-control" id="pbName" name="probuy.pbName" placeholder="输入产品名称">
										</div>
									</div>
									<div class="form-group" >
										<label for="goodsinfo" class="col-sm-2 control-label">产品描述</label>
										<div class="col-sm-6" style="width:520px;">
											<textarea class="form-control" row="9" id="pbContent" name="probuy.pbContent" placeholder="请输入相关的产品描述，如外观、大小，颜色等" style="height:100px"></textarea>
										</div>
									</div>
									<div class="form-group">
										<label for="goodsprice" class="col-sm-2 control-label">产品价格</label>
										<div class="col-sm-6 textsmall"style="width:100px;">
											<input type="text" class="form-control" id="pbPrice" name="probuy.pbPrice" placeholder="输入产品价格">
										</div>
										<label class="col-sm-2 control-label tip-text">元（RMB）</label>
	
										<label for="goodsamount" class="col-sm-2 control-label">产品需求量</label>
											<div class="col-sm-6 textsmall" style="width:100px;">
												<input type="text" class="form-control" id="pbNum" name="probuy.pbNum" placeholder="输入产品需求量">
											</div>
											<select id="unit" name="probuy.pbNum" class="form-control rightleg">
												<option value="" selected="selected">选择单位</option>
												<option value="吨">吨</option>
												<option value="千克">千克</option>
												<option value="斤">斤</option>
												<option value="件">件</option>
											</select>
									</div>
									<div class="form-group">
										<label for="goodsquality" class="col-sm-2 control-label">产品质量要求</label>
										<div class="col-sm-6" style="width:520px;">
											<input type="text" class="form-control" id="pbCertify" name="probuy.pbCertify" placeholder="输入相关的产品质量要求">
										</div>
									</div>
									<div class="form-group">
										<label for="maker" class="col-sm-2 control-label">生产厂家</label>
										<div class="col-sm-6" style="width:520px;">
											<input type="text" class="form-control" id="pbFactory" name="probuy.pbFactory" placeholder="输入产品的生产厂家">
										</div>
									</div>
									<div class="form-group">
										<label for="deadline" class="col-sm-2 control-label">需求截止时间</label>
										<div class="col-sm-6" style="width:200px;">
											<input type="text" class="form-control" id="prodemend" name="probuy.pbExpDate" placeholder="输入该产品供应/需求的截止时间">
										</div>
										<label for="logistics" class="col-sm-2 control-label" style="width:100px;">物流方式</label>
										<div class="col-sm-10" style="width:100px;">
											<select id="pbLogistics" name="probuy.pbLogistics" class="form-control rightleg">
												<option value="" selected="selected">请选择</option>
												<option value="空运">空运</option>
												<option value="铁路">铁路</option>
												<option value="公路">公路</option>
												<option value="快递">快递</option>
												<option value="自提">自提</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="linkman" class="col-sm-2 control-label">联系人</label>
										<div class="col-sm-6" style="width:200px;">
											<input type="text" class="form-control" id="linkman" name="probuy.pbContact" value="${user.user_name}" placeholder="输入产品的联系方式">
										</div>
										<label for="linkphone" class="col-sm-2 control-label" style="width:100px;">联系电话</label>
										<div class="col-sm-6" style="width:220px;">
											<input type="text" class="form-control" id="linkphone" name="probuy.pbPhone" value="${user.person.mobile }" placeholder="输入联系电话">
										</div>
									</div>
									<div class="form-group">
										<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
										<div class="col-sm-6" style="width:200px;">
											<input type="text" class="form-control" id="linkaddress" name="probuy.pbAddress" value="${user.person.address }" placeholder="输入联系地址">
										</div>
										<label for="postcode" class="col-sm-2 control-label" style="width:100px;">邮编</label>
										<div class="col-sm-6" style="width:220px;">
											<input type="text" class="form-control" id="postcode" name="probuy.pbPostCode" value="${user.person.postcode }" placeholder="输入联系地址对应的邮编">
										</div>
										
									</div>
									<div class="form-group">
										<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
										<div class="col-sm-6" style="width:200px;">
											<input type="text" class="form-control" id="linkmail" name="probuy.pbEmail" value="${user.person.email }" placeholder="输入联系人邮箱">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
											<button type="submit" class="btn btn-success col-sm-3" style="width:80px">发布</button>
											<button type="reset" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
										</div>
									</div>
								</form><!--form-horizontal-->
							</div>
						</div><!--panel panel-default-->
					</div><!--tab-pane tab2-->
				<div class="tab-pane" id="tab3"><!--技术供应-->
					<div class="panel panel-default">
						<div class="panel-heading">发布技术供应信息</div>
						<div class="panel-body">
							<form class="form-horizontal" id=techsuppform role="form" action="techsupp-save.action" method="post">
								<div class="form-group">
									<label for="type" class="col-sm-2 control-label">技术类型</label>
									<div class="col-sm-4" style="width:100px">
										<select id="ft" name="ft"  class="form-control rightleg">
  												<option value="">==请选择==</option>
										</select>
									</div>
									<div class="col-sm-4" style="width:100px">
										<select id="st" name="techinfoid"  class="form-control rightleg">
  												<option value="">==请选择==</option>
										</select>
									</div>
									<label for="tecname" class="col-sm-2 control-label">技术名称</label>
									<div class="col-sm-6" style="width:200px">
										<input type="text" class="form-control" id="tecname" name="techsupp.tsName" placeholder="输入技术名称">
									</div>										
								</div>
								<div class="form-group" >
									<label for="tecinfo" class="col-sm-2 control-label">技术信息描述</label>
									<div class="col-sm-6" style="width:520px;">
										<textarea class="form-control" rows="9" id="tecinfo" name="techsupp.tsContent" placeholder="请输入技术的相关描述，如技术用途、用法，应用范围等" style="height:100px"></textarea>
									</div>
								</div>
								<div class="form-group">
									<label for="tecfield" class="col-sm-2 control-label">技术领域</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="tecfield" name="techsupp.tsArea" placeholder="输入技术领域">
									</div>
									<label for="tecsource" class="col-sm-2 control-label">技术来源</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="tecsource" name="techsupp.tsSource" placeholder="输入技术来源">
									</div>
								</div>
								<div class="form-group">
									<label for="goodstype" class="col-sm-2 control-label">农产品类型</label>
									<div class="col-sm-6" style="width:520px;">
										<input type="text" class="form-control" id="proType" name="techsupp.proType" placeholder="输入相关的农产品类型">
									</div>
								</div>
								<div class="form-group">
									<label for="tecgain" class="col-sm-2 control-label">技术获取渠道</label>
									<div class="col-sm-6" style="width:520px;">
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
								<div class="form-group">
									<label for="tecrelate" class="col-sm-2 control-label">相关技术</label>
									<div class="col-sm-6" style="width:520px;">
										<input type="text" class="form-control" id="tecrelate" name="techsupp.tsRelated" placeholder="输入相关技术">
									</div>
								</div>
								<div class="form-group">
									<label for="deadline" class="col-sm-2 control-label">供应截止时间</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="tecsupend" name="techsupp.tsExpDate" placeholder="输入该技术供应截止时间">
									</div>
								</div>
								<div class="form-group">
									<label for="linkman" class="col-sm-2 control-label">联系人</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkman" name="techsupp.tsContact" value="${user.user_name }" placeholder="输入产品的联系方式">
									</div>
									<label for="linkphone" class="col-sm-2 control-label" style="width:100px;">联系电话</label>
									<div class="col-sm-6" style="width:220px;">
										<input type="text" class="form-control" id="linkphone" name="techsupp.tsPhone" value="${user.person.mobile }" placeholder="输入联系电话">
									</div>
								</div>
								<div class="form-group">
									<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkaddress" name="techsupp.tsAddress" value="${user.person.address }" placeholder="输入联系地址">
									</div>
									<label for="postcode" class="col-sm-2 control-label" style="width:100px;">邮编</label>
									<div class="col-sm-6" style="width:220px;">
										<input type="text" class="form-control" id="postcode" name="techsupp.tsPostCode" value="${user.person.postcode }" placeholder="输入联系地址对应的邮编">
									</div>									
								</div>
								<div class="form-group">
									<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkmail" name="techsupp.tsEmail" value="${user.person.email }" placeholder="输入联系人邮箱">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
										<button type="submit" class="btn btn-success col-sm-3" style="width:80px">发布</button>
										<button type="reset" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
									</div>
								</div>
							</form><!--form-horizontal-->
						</div>
					</div><!--panel panel-default-->
				</div><!--tab3-->
				<div class="tab-pane" id="tab4"><!--技术需求-->
					<div class="panel panel-default">
						<div class="panel-heading">发布技术需求信息</div>
							<div class="panel-body">
								<form class="form-horizontal" id="techdemaform" role="form" action="techdema-save.action" method="post">
									<div class="form-group">
										<label for="type" class="col-sm-2 control-label">技术类型</label>
										<div class="col-sm-4" style="width:100px">
											<select id="ft" name="ft"  class="form-control rightleg">
		 										<option value="">==请选择==</option>
											</select>
										</div>
										<div class="col-sm-4" style="width:100px">
											<select id="st" name="techinfoid"  class="form-control rightleg">
		 										<option value="">==请选择==</option>
											</select>
										</div>
										<label for="tecname" class="col-sm-2 control-label">技术名称</label>
										<div class="col-sm-6" style="width:200px">
											<input type="text" class="form-control" id="tecname" name="techdema.tName" placeholder="输入技术名称">
										</div>										
									</div>
									<div class="form-group">
										<label for="tecfield" class="col-sm-3 control-label">技术领域</label>
										<div class="col-sm-6" style="width:200px">
											<input type="text" class="form-control" id="tecfield" name="techdema.tdArea" placeholder="输入技术所在领域">
										</div>
									</div>
									<div class="form-group" >
										<label for="tecinfo" class="col-sm-3 control-label">技术需求描述</label>
										<div class="col-sm-6" style="width:520px;">
											<textarea class="form-control" row="9" id="tecinfo" name="techdema.tdContent" placeholder="请输入您所需技术的描述，如技术用途、使用范围等" style="height:100px"></textarea>
										</div>
									</div>
									<div class="form-group">
										<label for="tectype" class="col-sm-3 control-label">农产品类型</label>
										<div class="col-sm-6" style="width:520px;">
											<input type="text" class="form-control" id="proType" name="techdema.proType" placeholder="输入相关的农产品类型">
										</div>
									</div>
									<div class="form-group">
										<label for="deadline" class="col-sm-3 control-label">需求截止时间</label>
										<div class="col-sm-6" style="width:200px;">
											<input type="text" class="form-control" id="tecdemend" name="techdema.tdExpDate" placeholder="如：2014年6月1日">
										</div>
									</div>
									<div class="form-group">
										<label for="linkman" class="col-sm-3 control-label">联系人</label>
										<div class="col-sm-6" style="width:200px;">
											<input type="text" class="form-control" id="linkman" name="techdema.tdContact" value="${user.user_name }" placeholder="输入产品的联系方式">
										</div>
										<label for="linkphone" class="col-sm-3 control-label" style="width:100px;">联系电话</label>
										<div class="col-sm-6" style="width:220px;">
											<input type="text" class="form-control" id="linkphone" name="techdema.tdPhone" value="${user.person.mobile }" placeholder="输入联系电话">
										</div>
									</div>
									<div class="form-group">
										<label for="linkaddress" class="col-sm-3 control-label" >联系地址</label>
										<div class="col-sm-6" style="width:200px;">
											<input type="text" class="form-control" id="linkaddress" name="techdema.tdAddress" value="${user.person.address }" placeholder="输入联系地址">
										</div>
										<label for="postcode" class="col-sm-3 control-label" style="width:100px;">邮编</label>
										<div class="col-sm-6" style="width:220px;">
											<input type="text" class="form-control" id="postcode" name="techdema.tdPostCode" value="${user.person.postcode }" placeholder="输入联系地址对应的邮编">
										</div>
										
									</div>
									<div class="form-group">
										<label for="linkmail" class="col-sm-3 control-label">联系人邮箱</label>
										<div class="col-sm-6" style="width:200px;">
											<input type="text" class="form-control" id="linkmail" name="techdema.tdEmail" value="${user.person.email }" placeholder="输入联系人邮箱">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
											<button type="submit" class="btn btn-success col-sm-3" style="width:80px">发布</button>
											<button type="reset" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
										</div>
									</div>
								</form><!--form-horizontal-->
							</div>
						</div><!--panel panel-default-->
				</div><!--tab4-->
				<div class="tab-pane" id="tab5"><!--招商代理信息-->
					<div class="panel panel-default">
						<div class="panel-heading">发布招商代理信息</div>
						<div class="panel-body">
							<form class="form-horizontal" id="investform" role="form" action="invest-save.action" method="post" enctype="multipart/form-data">
								<div class="row">
									<div class="col-md-4 firstcol">
										<div class="form-group">
											<label for="goods" class="col-sm-2 control-label">产品名称</label>
											<div class="col-sm-6" style="width:200px">
												<input type="text" class="form-control" id="inName" name="invest.inName" placeholder="输入产品名称">
											</div>
										</div>
										<div class="form-group" >
											<label for="goodsinfo" class="col-sm-2 control-label">产品描述</label>
											<div class="col-sm-6 input_width1">
												<textarea class="form-control" rows="9" id="goodsinfo" name="invest.inContent" placeholder="请输入相关的产品描述，如外观、大小，颜色等" style="height:100px"></textarea>
											</div>
										</div>
										<div class="form-group">
											<label for="goodsprice" class="col-sm-2 control-label">产品价格</label>
											<div class="col-sm-6 textsmall">
												<input type="text" class="form-control" id="inPrice" name="invest.inPrice" placeholder="输入产品价格">
											</div>
											<label class="col-sm-2 control-label tip-text">元（RMB）</label>
										</div>
										<div class="form-group">
											<label for="goodsamount" class="col-sm-2 control-label">产品储量</label>
												<div class="col-sm-6 textsmall">
													<input type="text" class="form-control" id="inNum" name="invest.inNum" placeholder="输入产品储量">
												</div>
												<select id="unit" name="invest.inNum" class="form-control rightleg" style="width:100px;">
													<option value="" selected="selected">选择单位</option>
													<option value="吨">吨</option>
													<option value="千克">千克</option>
													<option value="斤">斤</option>
													<option value="件">件</option>
												</select>
										</div>
										<div class="form-group">
											<label for="goodsapprove" class="col-sm-2 control-label">产品认证信息</label>
											<div class="col-sm-6 input_width1">
												<input type="text" class="form-control" id="goodsapprove" name="invest.inCertify" placeholder="输入相关的产品认证信息">
											</div>
										</div>
										<div class="form-group">
											<label for="goodsquality" class="col-sm-2 control-label">产品质量信息</label>
											<div class="col-sm-6 input_width1">
												<input type="text" class="form-control" id="goodsquality" name="invest.inQuality" placeholder="输入相关的产品质量信息">
											</div>
										</div>
									</div><!--firstcol，第一列--->
									<div class="col-md-4">
										<div class="form-group">
											<img class ="img-thumbnail" src="#" style="width:300px;height:200px;"/>
											<label for="exampleInputFile" style="margin-left:100px">
												上传产品图片
												<input type="file" id="imgfile" value="上传图片" name="reportFiles" />
											</label>
										</div>
									</div><!--第二列-->
								</div>
								<div class="form-group">
									<label for="maker" class="col-sm-2 control-label">生产厂家</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="maker" name="invest.inFactory" placeholder="输入产品的生产厂家">
									</div>
								</div>
								<div class="form-group">
									<label for="deadline" class="col-sm-2 control-label">供应截止时间</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="investend" name="invest.inExpDate" placeholder="如：2014年6月1日">
									</div>
								</div>
								<div class="form-group">
									<label for="linkman" class="col-sm-2 control-label">联系人</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkman" name="invest.inContact" value="${user.user_name }" placeholder="输入产品的联系方式">
									</div>
									<label for="linkphone" class="col-sm-2 control-label" style="width:100px;">联系电话</label>
									<div class="col-sm-6" style="width:220px;">
										<input type="text" class="form-control" id="linkphone" name="invest.inPhone" value="${user.person.mobile }" placeholder="输入联系电话">
									</div>
								</div>
								<div class="form-group">
									<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkaddress" name="invest.inAddress" value="${user.person.address }" placeholder="输入联系地址">
									</div>
									<label for="postcode" class="col-sm-2 control-label" style="width:100px;">邮编</label>
									<div class="col-sm-6" style="width:300px;">
										<input type="text" class="form-control" id="postcode" name="invest.inPostCode" value="${user.person.postcode }" placeholder="输入联系地址对应的邮编">
									</div>
								</div>
								<div class="form-group">
									<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkmail" name="invest.inEmail" value="${user.person.email }" placeholder="输入联系人邮箱">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
										<button type="submit" class="btn btn-success col-sm-3" style="width:80px">发布</button>
										<button type="reset" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
									</div>
								</div>
							</form><!--form-horizontal-->
						</div>
					</div><!--panel panel-default-->
				</div><!--tab5-->
				<div class="tab-pane" id="tab6"><!--求职信息-->
					<div class="panel panel-default">
						<div class="panel-heading">发布求职信息</div>
						<div class="panel-body">
							<form class="form-horizontal" id="jobseekform" role="form" action="jobseek-save.action" enctype="multipart/form-data" method="post">
								<div class="form-group">
									<input type="hidden" name="jobseek.applyerid" value="${user.user_id}">
									<label for="name" class="col-sm-2 control-label">姓名</label>
									<div class="col-sm-6" style="width:200px">
										<input type="text" class="form-control" id="name" name="jobseek.applyername" value="${user.user_name }" placeholder="输入您的真实姓名">
									</div>												
									<label for="education" class="col-sm-2 control-label">学历</label>
									<div class="col-sm-6" style="width:200px">
										<input type="text" class="form-control" id="eduction" name="jobseek.appdegree" placeholder="输入您的学历，如本科" value="${jobseekload.appdegree}">
									</div>
								</div>
								<div class="form-group">	
									<label for="major" class="col-sm-2 control-label">专业</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="major" name="jobseek.appmajor" placeholder="如：农业生态管理" value="${jobseekload.appmajor}">
										</div>
								</div>
								<div class="form-group">
									<label for="college" class="col-sm-2 control-label">毕业院校</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="college" name="jobseek.appschool" placeholder="输入您的毕业院校" value="${jobseekload.appschool}">
									</div>
								</div>
								<div class="form-group">
									<label for="postion" class="col-sm-2 control-label">求职岗位</label>
									<div class="col-sm-6" style="width:200px">
										<input type="text" class="form-control" id="postion" name="jobseek.expjob" placeholder="输入您期望的岗位" value="${jobseekload.expjob}">
									</div>
									<label for="salary" class="col-sm-2 control-label">期待的待遇</label>
									<div class="col-sm-6 textsmall">
										<input type="text" class="form-control" id="salary" name="jobseek.expsalary" placeholder="输入您对薪资的期望值" value="${jobseekload.expsalary}">
									</div>
									<label class="col-sm-2 control-label tip-text">元（RMB）</label>
								</div>
								<div class="form-group">
									<label for="address" class="col-sm-2 control-label">现居地址</label>
									<div class="col-sm-6" style="width:520px">
										<input type="text" class="form-control" id="address" name="jobseek.appaddress" placeholder="输入您的住址" value="${jobseekload.appaddress}">
									</div>
								</div>
								<div class="form-group">
									<label for="postcode" class="col-sm-2 control-label">邮编</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="postcode" name="jobseek.apppostcode"  placeholder="输入您的住址邮编" value="${jobseekload.apppostcode}">
									</div>
									<label for="fixphone" class="col-sm-2 control-label">固定电话</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="fixphone" name="jobseek.appphone" placeholder="输入您的固定电话" value="${jobseekload.appphone}">
									</div>
								</div>
								<div class="form-group">
									<label for="mphone" class="col-sm-2 control-label">手机号</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="mphone" name="jobseek.appmobile" placeholder="输入您的手机号码" value="${jobseekload.appmobile}">
									</div>
									<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
									<div class="col-sm-6" style="width:200px;"> 
										<input type="text" class="form-control" id="linkmail" name="jobseek.appemail" placeholder="输入联系人邮箱" value="${jobseekload.appemail}">
									</div>
								</div>
								<div class="form-group" >
									<label for="remarks" class="col-sm-2 control-label">备注</label>
									<div class="col-sm-6" style="width:520px;">
										<textarea class="form-control" row="9" id="goodsinfo" name="jobseek.others" placeholder="可以输入您的个人补充信息，如技能、相关证书等" style="height:100px" >${jobseekload.others}</textarea>
									</div>
								</div>
								<div class="form-group">
									<label for="remarks" class="col-sm-2 control-label">简历</label>
									<div class="col-sm-6" style="width:300px;">
										<input type="file" name="reportFiles" class="form-control itemManagerInput"  id="resume" >
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
										<button type="submit" onclick="return checkJobseek(this);" class="btn btn-success col-sm-3" style="width:80px">发布</button>
										<button type="reset" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
									</div>
								</div>
							</form><!--form-horizontal-->
						</div>
					</div><!--panel panel-default-->
				</div><!--tab6-->
				<div class="tab-pane" id="tab7"><!--物流供应信息-->
					<div class="panel panel-default">
						<div class="panel-heading">发布物流供应信息</div>
						<div class="panel-body">
							<form class="form-horizontal" id="logisupform" role="form" action="logisupp-save.action" method="post">
								<div class="form-group">
									<label for="start" class="col-sm-2 control-label">出发地</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="start" name="logisupp.startPlace" placeholder="如：茂名市-电白">
									</div>
									<label for="end" class="col-sm-2 control-label" style="width:80px;">到达地</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="end" name="logisupp.arrivePlace" placeholder="如：广州-天河">
									</div>
								</div>							
								<div class="form-group">
									<label for="wayto" class="col-sm-2 control-label">途径地</label>
										<div class="col-sm-6" style="width:400px;">
											<input type="text" class="form-control" id="wayto" name="logisupp.wayPoint" placeholder="如：佛山-三水、江门-开平">
										</div>
								</div>
								<div class="form-group">
									<label for="starttime" class="col-sm-2 control-label" >发车时间</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="starttime" name="logisupp.departureTime" placeholder="如：2014年6月1日">
									</div>
									<label for="price" class="col-sm-2 control-label" style="width:80px;">价格</label>
									<div class="col-sm-6 textsmall">
										<input type="text" class="form-control" id="price" name="logisupp.lsPrice" placeholder="输入货运价格">
									</div>
									<label class="col-sm-2 control-label tip-text">元（RMB）</label>
								</div>
								<div class="form-group">
									<label for="lorrycode" class="col-sm-2 control-label">车辆识别代号</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="loorycode" name="logisupp.identiCode" placeholder="输入车辆代号">
									</div>
								</div>
								<div class="form-group" >
									<label for="remarks" class="col-sm-2 control-label">说明</label>
									<div class="col-sm-6" style="width:400px;">
										<textarea class="form-control" row="9" id="remarks" name="logisupp.explanation" placeholder="输入车辆档案资料、车牌号、车长、载重、车辆住址、车辆类型、车体状况等" style="height:100px"></textarea>
									</div>
								</div>
								<div class="form-group">
									<label for="linkman" class="col-sm-2 control-label">联系人</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkman" name="logisupp.lsContact" value="${user.user_name }" placeholder="输入产品的联系方式">
									</div>
									<label for="linkphone" class="col-sm-2 control-label" style="width:100px;">联系电话</label>
									<div class="col-sm-6" style="width:220px;">
										<input type="text" class="form-control" id="linkphone" name="logisupp.lsPhone" value="${user.person.mobile }" placeholder="输入联系电话">
									</div>
								</div>
								<div class="form-group">
									<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkaddress" name="logisupp.lsAddress" value="${user.person.address }" placeholder="输入联系地址">
									</div>
									<label for="postcode" class="col-sm-2 control-label" style="width:100px;">邮编</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="postcode" name="logisupp.lsPostcode" value="${user.person.postcode }" placeholder="输入联系地址对应的邮编">
									</div>
									
								</div>
								<div class="form-group">
									<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkmail" name="logisupp.lsEmail" value="${user.person.email }" placeholder="输入联系人邮箱">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
										<button type="submit" class="btn btn-success col-sm-3" style="width:80px">发布</button>
										<button type="reset" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
									</div>
								</div>
							</form><!--form-horizontal-->
						</div>
					</div><!--panel panel-default-->
				</div><!--tab7-->
				<div class="tab-pane" id="tab8"><!--物流需求信息-->
					<div class="panel panel-default">
						<div class="panel-heading">发布物流需求信息</div>
						<div class="panel-body">
							<form class="form-horizontal" id="logidemaform" role="form" action="logidema-save.action" method="post">
								<div class="form-group">
									<label for="start" class="col-sm-2 control-label">出发地</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="start" name="logidema.startPlace" placeholder="如：茂名市-电白">
									</div>
									<label for="end" class="col-sm-2 control-label" style="width:80px;">到达地</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="end" name="logidema.arrivePlace" placeholder="如：广州-天河">
									</div>
								</div>						
								<div class="form-group">
									<label for="goodsname" class="col-sm-2 control-label">货物名称</label>
										<div class="col-sm-6" style="width:400px;">
											<input type="text" class="form-control" id="goodsname" name="logidema.goodsName" placeholder="如：化肥，大米等">
										</div>
								</div>
								<div class="form-group">
									<label for="trantype" class="col-sm-2 control-label">运输类型</label>
									<div class="col-sm-10" style="width:100px;">
										<input type="hidden" class="form-control" id="trantype">
										<select id="ObjectCategorytype1" name="logidema.transType" class="form-control rightleg">
											<option value="" selected="selected">请选择</option>
											<option value="物流公司">物流公司</option>
											<option value="整车配货">整车配货</option>
											<option value="零担配货">零担配货</option>
										</select>
									</div>
									<label for="goodstype" class="col-sm-2 control-label">货物类型</label>
									<div class="col-sm-10" style="width:100px;">
										<input type="hidden" class="form-control" id="goodstype"  >
										<select id="ObjectCategorytype1" name="logidema.goodsType" class="form-control rightleg">
											<option value="" selected="selected">请选择</option>
											<option value="重货">重货</option>
											<option value="轻货">轻货</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="amount" class="col-sm-2 control-label">数量</label>
										<div class="col-sm-6 textsmall">
											<input type="text" class="form-control" id="amount" name="logidema.count" placeholder="输入运输数量">
										</div>
									<label class="col-sm-2 control-label tip-text" style="text-align:left;width:70px;">件</label>
									<label for="weight" class="col-sm-2 control-label" style="width:110px;">重量</label>
										<div class="col-sm-6 textsmall">
											<input type="text" class="form-control" id="weight" name="logidema.load">
										</div>
										<select id="ObjectCategorytype1" name="logidema.load" class="form-control rightleg">
												<option value="" selected="selected">选择单位</option>
												<option value="吨">吨</option>
												<option value="千克">千克</option>
												<option value="斤">斤</option>
												<option value="件">件</option>
											</select>
								</div>
								<div class="form-group">
									<label for="bulk" class="col-sm-2 control-label">体积</label>
										<div class="col-sm-6 textsmall">
											<input type="text" class="form-control" id="bulk" name="logidema.volume" placeholder="如：2立方米">
										</div>
									<label class="col-sm-2 control-label tip-text" style="text-align:left;width:70px;">立方米</label>
									<label for="price" class="col-sm-2 control-label" style="width:110px;">期望运价</label>
										<div class="col-sm-6 textsmall">
											<input type="text" class="form-control" id="price" name="logidema.price" placeholder="如：100元">
										</div>
										<label class="col-sm-2 control-label tip-text" style="text-align:left;">元（RMB）</label>
								</div>
								<div class="form-group">
									<label for="demand" class="col-sm-2 control-label">货物运输要求</label>
									<div class="col-sm-10" style="width:100px;">
										<input type="hidden" class="form-control" id="demand">
										<select id="ObjectCategorytype1" name="logidema.require" class="form-control rightleg">
											<option value="" selected="selected">请选择</option>
											<option value="向上">向上</option>
											<option value="防潮">防潮</option>
											<option value="易碎">易碎</option>
											<option value="危险品">危险品</option>
											<option value="冷链运输">冷链运输</option>
											<option value="其他">其他</option>
										</select>
									</div>
									<div style="margin-left:330px;">
										<label for="deadline" class="col-sm-2 control-label" >信息截止日期</label>
											<div class="col-sm-6" style="width:200px;">
												<input type="text" class="form-control" id="logdemend" name="logidema.ldExpDate" placeholder="如：2014年9月1日">
											</div>
									</div>
								</div>
								<div class="form-group" >
									<label for="remarks" class="col-sm-2 control-label">说明</label>
									<div class="col-sm-6" style="width:400px;">
										<textarea class="form-control" row="9" id="remarks" name="logidema.explanation" placeholder="求车" style="height:100px"></textarea>
									</div>
								</div>
								<div class="form-group">
									<label for="linkman" class="col-sm-2 control-label">联系人</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkman" name="logidema.ldContact" value="${user.user_name }" placeholder="输入产品的联系方式">
									</div>
									<label for="linkphone" class="col-sm-2 control-label" style="width:100px;">联系电话</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkphone" name="logidema.ldPhone" value="${user.person.mobile }" placeholder="输入联系电话">
									</div>
								</div>
								<div class="form-group">
									<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkaddress" name="logidema.ldAddress" value="${user.person.address }" placeholder="输入联系地址">
									</div>
									<label for="postcode" class="col-sm-2 control-label" style="width:100px;">邮编</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="postcode" name="logidema.ldPostcode" value="${user.person.postcode }" placeholder="输入联系地址对应的邮编">
									</div>
									
								</div>
								<div class="form-group">
									<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkmail" name="logidema.ldEmail" value="${user.person.email }" placeholder="输入联系人邮箱">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
										<button type="submit" class="btn btn-success col-sm-3" style="width:80px">发布</button>
										<button type="reset" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
									</div>
								</div>
							</form><!--form-horizontal-->
						</div>
					</div><!--panel panel-default-->
				</div><!--tab8-->
			</div><!--tab-content col-md-12-->
		</div><!--col-md-9 yy_contright-->
	
  </div><!--row  yy_content-->
</body>
</html>