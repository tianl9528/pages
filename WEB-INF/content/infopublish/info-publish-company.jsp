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
<title>用户空间 >>企业信息发布</title> 
<link href="<%=base_root%>/theme/css/user.css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/gettype.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/appjs/techinfotype/techinfotype.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery.validate.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/appjs/infopublish/validate.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/themes/default/default.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/plugins/code/prettify.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/kindeditor.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/lang/zh_CN.js"></script>
<script charset="utf-8" src="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/plugins/code/prettify.js"></script>

<style type="text/css">
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
#train label.error {
	margin-left: 2px;
	width: auto;
	display: inline;
	color:#F00;
}
#recruitform label.error {
	margin-left: 2px;
	width: auto;
	display: inline;
	color:#F00;
}
</style>

<script>
$(document).ready(function(){
$('.companypublish li >a ').click(function(e)
{
	e.preventDefault();
	var lis=$('li');
	lis.removeClass('active');
});

$('.panel-title > a ').click(function(e)
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



<script type="text/javascript">
	$(document).ready(function(){
		$( "#prosupend" ).datepicker();
		$( "#prodemend" ).datepicker();
		$( "#tecsupend" ).datepicker();
		$( "#tecdemend" ).datepicker();
		$( "#investend" ).datepicker();
		$( "#logdemend" ).datepicker();
		$( "#starttime" ).datepicker();
		$( "#emenddate" ).datepicker();
		$( "#tbegin").datepicker();
		$( "#tend").datepicker();
		
	});
</script>

<script>
	KindEditor.ready(function(K) { 
		var editor1 = K.create('textarea[name="companyNews.content"]', {
			cssPath : '<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/plugins/code/prettify.css',
			uploadJson : '<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/jsp/upload_json.jsp',
			fileManagerJson : '<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/jsp/file_manager_json.jsp',
			allowFileManager : true,
			items : [
					'source', '|', 'undo', 'redo', '|', 'preview', 'print', 'template', 'code', 'cut', 'copy', 'paste',
					'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
					'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
					'superscript', 'clearhtml', 'quickformat', 'selectall', '|', 'fullscreen', '/',
					'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
					'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 'image',
					'flash', 'media', 'insertfile', 'table', 'hr', 'emoticons', 'pagebreak',
					'anchor', 'link', 'unlink', 'about'
				    ],
			afterCreate : function() {
				var self = this;
				K.ctrl(document, 13, function() {
					self.sync();
					document.forms['myAction'].submit();
				});
				K.ctrl(self.edit.doc, 13, function() {
					self.sync();
					document.forms['myAction'].submit();
				});
			},
		    afterBlur: function(){this.sync();}
		});
		prettyPrint();
	});
</script>

</head>
<body>
	<div style="width:1007px;">
		<div class="col-lg-3 col-xs-3" style="padding-left:0">
			<div id="sidebar" class="companypublish">
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
								  <li class="active"><a href="#tab1" data-toggle="tab">农产品供应</a></li>
								  <li><a href="#tab2" data-toggle="tab">技术供应</a></li>
								  <li><a href="#tab3" data-toggle="tab">物流供应</a></li>
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
							  <li><a href="#tab4" data-toggle="tab">农产品需求</a></li>
							  <li><a href="#tab5" data-toggle="tab">技术需求</a></li>
							  <li><a href="#tab6" data-toggle="tab">物流需求</a></li>
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
							  <li><a href="#tab7" data-toggle="tab">招商代理</a></li>
							  <li><a href="#tab8" data-toggle="tab">培训</a></li>
							  <li><a href="#tab9" data-toggle="tab">招聘</a></li>
							  <li><a href="#tab10" data-toggle="tab">企业快讯</a></li>
							</ul>
						</div>						
				  </div>				  
			 </div> 
		</div>
		<div class="col-lg-9 col-xs-9" style="min-width:755px;padding:0;margin-left:-14px;">
			<div class="tab-content">
				<div class="tab-pane active in" id="tab1"><!--产品供应-->
					<div class="panel panel-default">
					<div class="panel-heading">发布农产品供应信息</div>
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
												<input type="text" class="form-control" id="goodsapprove" name="prosupp.spCertify" placeholder="输入产品认证信息">
											</div>
										</div>
										<div class="form-group">
											<label for="goodsquality" class="col-sm-2 control-label">产品质量信息</label>
											<div class="col-sm-6 input_width1">
												<input type="text" class="form-control" id="goodsquality" name="prosupp.spQuality" placeholder="输入产品质量信息">
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
										<input type="text" class="form-control" id="maker" name="prosupp.spFactory" placeholder="输入生产厂家">
									</div>
								</div>
								<div class="form-group">
									<label for="deadline" class="col-sm-2 control-label">供应截止时间</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="prosupend" name="prosupp.spExpDate" placeholder="输入截止时间">
									</div>
									<label for="logistics" class="col-sm-2 control-label">物流方式</label>
									<div class="col-sm-10" style=" width:100px;">
										<select id="spLogistics" name="prosupp.spLogistics" class="form-control rightleg">
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
										<input type="text" class="form-control" id="linkman" name="prosupp.spContact" value="${user.company.contact}" placeholder="输入联系人">
									</div>
									<label for="linkphone" class="col-sm-2 control-label">联系电话</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkphone" name="prosupp.spPhone" value="${user.company.phone }" placeholder="输入联系电话">
									</div>
								</div>
								<div class="form-group">
									<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkaddress" name="prosupp.spAddress" value="${user.company.address }" placeholder="输入联系地址">
									</div>
									<label for="postcode" class="col-sm-2 control-label">邮编</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="postcode" name="prosupp.spPostCode" value="${user.company.postcode }" placeholder="输入地址邮编">
									</div>
									
								</div>
								<div class="form-group">
									<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkmail" name="prosupp.spEmail" value="${user.company.email }" placeholder="输入联系人邮箱">
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
			
				<div class="tab-pane" id="tab2"><!--技术供应-->
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
										<input type="text" class="form-control" id="tecsupend" name="techsupp.tsExpDate" placeholder="输入截止时间">
									</div>
								</div>
								<div class="form-group">
									<label for="linkman" class="col-sm-2 control-label">联系人</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkman" name="techsupp.tsContact" value="${user.company.contact }" placeholder="输入联系方人">
									</div>
									<label for="linkphone" class="col-sm-2 control-label" style="width:100px;">联系电话</label>
									<div class="col-sm-6" style="width:220px;">
										<input type="text" class="form-control" id="linkphone" name="techsupp.tsPhone" value="${user.company.phone }"placeholder="输入联系电话">
									</div>
								</div>
								<div class="form-group">
									<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkaddress" name="techsupp.tsAddress" value="${user.company.address }"placeholder="输入联系地址">
									</div>
									<label for="postcode" class="col-sm-2 control-label" style="width:100px;">邮编</label>
									<div class="col-sm-6" style="width:220px;">
										<input type="text" class="form-control" id="postcode" name="techsupp.tsPostCode" value="${user.company.postcode }" placeholder="输入联系地址对应的邮编">
									</div>
									
								</div>
								<div class="form-group">
									<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkmail" name="techsupp.tsEmail" value="${user.company.email }" placeholder="输入联系人邮箱">
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
				</div><!--tab2-->
				
				<div class="tab-pane" id="tab3"><!--物流供应信息-->
					<div class="panel panel-default">
						<div class="panel-heading">发布物流供应信息</div>
						<div class="panel-body">
							<form class="form-horizontal" role="form" id="logisupform" action="logisupp-save.action" method="post">
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
										<textarea class="form-control" rows="9" id="remarks" name="logisupp.explanation" placeholder="输入车辆档案资料、车牌号、车长、载重、车辆住址、车辆类型、车体状况等" style="height:100px"></textarea>
									</div>
								</div>
								<div class="form-group">
									<label for="linkman" class="col-sm-2 control-label">联系人</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkman" name="logisupp.lsContact" value="${user.company.contact }" placeholder="输入产品的联系方式">
									</div>
									<label for="linkphone" class="col-sm-2 control-label" style="width:100px;">联系电话</label>
									<div class="col-sm-6" style="width:220px;">
										<input type="text" class="form-control" id="linkphone" name="logisupp.lsPhone" value="${user.company.phone }" placeholder="输入联系电话">
									</div>
								</div>
								<div class="form-group">
									<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkaddress" name="logisupp.lsAddress" value="${user.company.address }" placeholder="输入联系地址">
									</div>
									<label for="postcode" class="col-sm-2 control-label" style="width:100px;">邮编</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="postcode" name="logisupp.lsPostcode" value="${user.company.postcode }" placeholder="输入联系地址对应的邮编">
									</div>
									
								</div>
								<div class="form-group">
									<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkmail" name="logisupp.lsEmail" value="${user.company.email }" placeholder="输入联系人邮箱">
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
				
				<div class="tab-pane" id="tab4"><!--产品需求-->
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
											<input type="text" class="form-control" id="goodsquality" name="probuy.pbCertify" placeholder="输入相关的产品质量要求">
										</div>
									</div>
									<div class="form-group">
										<label for="maker" class="col-sm-2 control-label">生产厂家</label>
										<div class="col-sm-6" style="width:520px;">
											<input type="text" class="form-control" id="maker" name="probuy.pbFactory" placeholder="输入产品的生产厂家">
										</div>
									</div>
									<div class="form-group">
										<label for="deadline" class="col-sm-2 control-label">需求截止时间</label>
										<div class="col-sm-6" style="width:200px;">
											<input type="text" class="form-control" id="prodemend" name="probuy.pbExpDate" placeholder="输入该产品供应/需求的截止时间">
										</div>
										<label for="logistics" class="col-sm-2 control-label" style="width:100px;">物流方式</label>
										<div class="col-sm-10" style="width:100px;">
											<input type="hidden" class="form-control" id="logistics" placeholder="Password">
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
											<input type="text" class="form-control" id="linkman" name="probuy.pbContact" value="${user.company.contact }" placeholder="输入产品的联系方式">
										</div>
										<label for="linkphone" class="col-sm-2 control-label" style="width:100px;">联系电话</label>
										<div class="col-sm-6" style="width:220px;">
											<input type="text" class="form-control" id="linkphone" name="probuy.pbPhone" value="${user.company.phone }" placeholder="输入联系电话">
										</div>
									</div>
									<div class="form-group">
										<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
										<div class="col-sm-6" style="width:200px;">
											<input type="text" class="form-control" id="linkaddress" name="probuy.pbAddress" value="${user.company.address }" placeholder="输入联系地址">
										</div>
										<label for="postcode" class="col-sm-2 control-label" style="width:100px;">邮编</label>
										<div class="col-sm-6" style="width:220px;">
											<input type="text" class="form-control" id="postcode" name="probuy.pbPostCode" value="${user.company.postcode }" placeholder="输入联系地址对应的邮编">
										</div>
										
									</div>
									<div class="form-group">
										<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
										<div class="col-sm-6" style="width:200px;">
											<input type="text" class="form-control" id="linkmail" name="probuy.pbEmail" value="${user.company.email }" placeholder="输入联系人邮箱">
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
					</div><!--tab-pane tab4-->
							
				<div class="tab-pane" id="tab5"><!--技术需求-->
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
											<textarea class="form-control" rows="9" id="tecinfo" name="techdema.tdContent" placeholder="请输入您所需技术的描述，如技术用途、使用范围等" style="height:100px"></textarea>
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
											<input type="text" class="form-control" id="linkman" name="techdema.tdContact" value="${user.company.contact }" placeholder="输入产品的联系方式">
										</div>
										<label for="linkphone" class="col-sm-3 control-label" style="width:100px;">联系电话</label>
										<div class="col-sm-6" style="width:220px;">
											<input type="text" class="form-control" id="linkphone" name="techdema.tdPhone" value="${user.company.phone }" placeholder="输入联系电话">
										</div>
									</div>
									<div class="form-group">
										<label for="linkaddress" class="col-sm-3 control-label" >联系地址</label>
										<div class="col-sm-6" style="width:200px;">
											<input type="text" class="form-control" id="linkaddress" name="techdema.tdAddress" value="${user.company.address }" placeholder="输入联系地址">
										</div>
										<label for="postcode" class="col-sm-3 control-label" style="width:100px;">邮编</label>
										<div class="col-sm-6" style="width:220px;">
											<input type="text" class="form-control" id="postcode" name="techdema.tdPostCode" value="${user.company.postcode }" placeholder="输入联系地址对应的邮编">
										</div>
										
									</div>
									<div class="form-group">
										<label for="linkmail" class="col-sm-3 control-label">联系人邮箱</label>
										<div class="col-sm-6" style="width:200px;">
											<input type="text" class="form-control" id="linkmail" name="techdema.tdEmail" value="${user.company.email }" placeholder="输入联系人邮箱">
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
				
				<div class="tab-pane" id="tab6"><!--物流需求信息-->
					<div class="panel panel-default">
						<div class="panel-heading">发布物流需求信息</div>
						<div class="panel-body">
							<form class="form-horizontal" role="form" id="logidemaform" action="logidema-save.action" method="post">
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
										<textarea class="form-control" rows="9" id="remarks" name="logidema.explanation" placeholder="求车" style="height:100px"></textarea>
									</div>
								</div>
								<div class="form-group">
									<label for="linkman" class="col-sm-2 control-label">联系人</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkman" name="logidema.ldContact" value="${user.company.contact }" placeholder="输入产品的联系方式">
									</div>
									<label for="linkphone" class="col-sm-2 control-label" style="width:100px;">联系电话</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkphone" name="logidema.ldPhone" value="${user.company.phone }" placeholder="输入联系电话">
									</div>
								</div>
								<div class="form-group">
									<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkaddress" name="logidema.ldAddress" value="${user.company.address }" placeholder="输入联系地址">
									</div>
									<label for="postcode" class="col-sm-2 control-label" style="width:100px;">邮编</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="postcode" name="logidema.ldPostcode" value="${user.company.postcode }" placeholder="输入联系地址对应的邮编">
									</div>
									
								</div>
								<div class="form-group">
									<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkmail" name="logidema.ldEmail" value="${user.company.email }" placeholder="输入联系人邮箱">
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
					</div><!--panel-default-->
				</div><!--tab6-->
				
				<div class="tab-pane" id="tab7"><!--招商代理信息-->
					<div class="panel panel-default">
						<div class="panel-heading">发布招商代理信息</div>
						<div class="panel-body">
							<form class="form-horizontal" role="form" id="investform" action="invest-save.action" method="post" enctype="multipart/form-data">
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
												<input type="file" value="上传图片" id=""imgfile name="reportFiles" />
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
										<input type="text" class="form-control" id="linkman" name="invest.inContact" value="${user.company.contact }" placeholder="输入产品的联系方式">
									</div>
									<label for="linkphone" class="col-sm-2 control-label" style="width:100px;">联系电话</label>
									<div class="col-sm-6" style="width:220px;">
										<input type="text" class="form-control" id="linkphone" name="invest.inPhone" value="${user.company.phone}" placeholder="输入联系电话">
									</div>
								</div>
								<div class="form-group">
									<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkaddress" name="invest.inAddress" value="${user.company.address }" placeholder="输入联系地址">
									</div>
									<label for="postcode" class="col-sm-2 control-label" style="width:100px;">邮编</label>
									<div class="col-sm-6" style="width:300px;">
										<input type="text" class="form-control" id="postcode" name="invest.inPostCode" value="${user.company.postcode }" placeholder="输入联系地址对应的邮编">
									</div>
								</div>
								<div class="form-group">
									<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="linkmail" name="invest.inEmail" value="${user.company.email }" placeholder="输入联系人邮箱">
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
				
				<div class="tab-pane" id="tab8"><!--培训信息-->
					<div class="panel panel-default">
						<div class="panel-heading">发布培训信息</div>
						<div class="panel-body">
							<form class="form-horizontal" role="form" id="train" action="train-save.action" method="post">
								<div class="row" style="margin:0">
									<div class="form-group">
										<label for="training_institution" class="col-lg-2 col-xs-2 control-label" style="text-align:right">培训机构</label>
										<div class="col-lg-4 col-xs-4">
											<input type="text" class="form-control" id="orgname" placeholder="培训机构名称" name="train.orgname">
										</div>												
										<label for="training_tech_field" class="col-lg-2 col-xs-2 control-label" style="text-align:right">培训技术领域</label>
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
									</div>
								</div>
								
								<div class="row" style="margin:0">
									<div class="form-group">	
										<label for="aim_of_training" class="col-lg-2 col-xs-2 control-label" style="text-align:right">培训目的</label>
										<div class="col-lg-4 col-xs-4">
											<input type="text" class="form-control" id="target" placeholder="培训目的" name="train.target">
										</div>
										<label for="method_of_training" class="col-lg-2 col-xs-2 control-label" style="text-align:right">培训方式</label>
										<div class="col-lg-4 col-xs-4">
											<input type="text" class="form-control" id="ttype" placeholder="培训方式"  name="train.ttype">
										</div>
									</div>
								</div>
								
								<div class="row" style="margin:0">
									<div class="form-group">
										<label for="start_time" class="col-lg-2 col-xs-2 control-label" style="text-align:right">开始时间</label>
										<div class="col-lg-4 col-xs-4">
											<input type="text" class="form-control" id="tbegin" name="train.tbegin" placeholder="培训开始时间">
										</div>
										<label for="end_time" class="col-lg-2 col-xs-2 control-label" style="text-align:right">结束时间</label>
										<div class="col-lg-4 col-xs-4">
											<input type="text" class="form-control" id="tend" name="train.tend" placeholder="培训结束时间">
										</div>
									</div>
								</div>
								
								<div class="form-group" >
									<label for="training_content" class="col-lg-2 col-xs-2 control-label" style="text-align:right">培训内容</label>
									<div class="col-lg-8 col-xs-8">
										<textarea class="form-control" rows="9" id="tcontent" name="train.tcontent" placeholder="培训内容" style="height:150px"></textarea>
									</div>
								</div>
								
								<div class="row" style="margin:0">
								<div class="form-group">
									<label for="address" class="col-lg-2 col-xs-2 control-label" style="text-align:right">培训费用</label>
									<div class="col-lg-4 col-xs-4">
										<input type="text" class="form-control" id="tfee" name="train.tfee" placeholder="培训费用">
									</div>
									<label for="pid" class="col-lg-2 col-xs-2 control-label"  style="text-align:right">农产品类型</label>
									<div class="col-lg-4 col-xs-4">
										<input type="text" class="form-control" id="pid" name="train.pid" placeholder="农产品类型">
									</div>
								</div>
								</div>
								<div class="row" style="margin:0">
									<div class="form-group">
										<label for="linkman" class="col-lg-2 col-xs-2 control-label" style="text-align:right">联系人</label>
										<div class="col-lg-4 col-xs-4">
											<input type="text" class="form-control" id="linkman" name="train.tcontact" value="${user.company.contact }" placeholder="产品的联系方式">
										</div>
										<label for="linkphone" class="col-lg-2 col-xs-2 control-label" style="text-align:right">联系电话</label>
										<div class="col-lg-4 col-xs-4">
											<input type="text" class="form-control" id="linkphone" name="train.tphone" value="${user.company.phone }" placeholder="联系电话">
										</div>
									</div>
								</div>
								
								<div class="row" style="margin:0">
									<div class="form-group">
										<label for="linkaddress" class="col-lg-2 col-xs-2 control-label" style="text-align:right" >联系地址</label>
										<div class="col-lg-4 col-xs-4" >
											<input type="text" class="form-control" id="linkaddress" name="train.taddress" value="${user.company.address }" placeholder="联系地址">
										</div>
										<label for="postcode" class="col-lg-2 col-xs-2 control-label" style="text-align:right">邮编</label>
										<div class="col-lg-4 col-xs-4" >
											<input type="text" class="form-control" id="postcode" name="train.tpostcode" value="${user.company.postcode }" placeholder="联系地址对应的邮编">
										</div>
									</div>
								</div>
								
								<div class="form-group">
									<label for="linkmail" class="col-lg-2 col-xs-2 control-label" style="text-align:right">联系人邮箱</label>
									<div class="col-lg-4 col-xs-4">
										<input type="text" class="form-control" id="linkmail" name="train.temail" value="${user.company.email }" placeholder="联系人邮箱">
									</div>
								</div>
								
								
								<div class="form-group ">
									<div class="col-lg-8 col-lg-offset-4 col-xs-8 col-xs-offset-4">
										<button type="submit" class="btn btn-success col-lg-3 col-xs-3">发布</button>
										<button type="reset" class="btn btn-danger col-lg-3 col-lg-offset-1 col-xs-3 col-xs-offset-1">取消</button>
									</div>
								</div>
							</form><!--form-horizontal-->
						</div>
					</div><!--panel panel-default-->
				</div><!--tab8-->

				<div class="tab-pane" id="tab9"><!--招聘信息-->
					<div class="panel panel-default">
						<div class="panel-heading">发布招聘信息</div>
						<div class="panel-body">
							<form class="form-horizontal" role="form" id="recruitform" action="recruit-save.action" method="post">
								<div class="row" style="margin:0">
									<div class="form-group">
										<label for="position_name" class="col-lg-2 col-xs-2 control-label"  style="text-align:right">职位名称</label>
										<div class="col-lg-4 col-xs-4">
											<input type="text" class="form-control" id="job" name="recruit.job" placeholder="职位名称">
										</div>												
										<label for="position_property" class="col-lg-2 col-xs-2 control-label" style="text-align:right">工作性质</label>
										<div class="col-lg-4 col-xs-4">
											<select id="properties" name="recruit.properties" class="form-control rightleg">
											<option value="" selected="selected">请选择</option>
											<option value="兼职">兼职</option>
											<option value="全职">全职</option>
										</select>
										</div>
									</div>
								</div>								
								<div class="row" style="margin:0">
									<div class="form-group">	
										<label for="hiring_number" class="col-lg-2 col-xs-2 control-label" style="text-align:right">招聘人数</label>
										<div class="col-lg-4 col-xs-4">
											<input type="text" class="form-control" id="num" name="recruit.num" placeholder="招聘人数">
										</div>
										<label for="position_treatment" class="col-lg-2 col-xs-2 control-label" style="text-align:right">工作待遇</label>
										<div class="col-lg-4 col-xs-4">
											<input type="text" class="form-control" id="treatment" name="recruit.treatment" placeholder="工作待遇">
										</div>
									</div>
								</div>								
								<div class="form-group" >
									<label for="position_description" class="col-lg-2 col-xs-2 control-label" style="text-align:right">工作描述</label>
									<div class="col-lg-8 col-xs-8">
										<textarea class="form-control" rows="20" id="jobDetail" name="recruit.jobDetail" placeholder="工作描述" style="height:150px"></textarea>
									</div>
								</div>								
								<div class="form-group" >
									<label for="position_requirement" class="col-lg-2 col-xs-2 control-label" style="text-align:right">职位要求</label>
									<div class="col-lg-8 col-xs-8">
										<textarea class="form-control" rows="20" id="requirement" name="recruit.jobRequire" placeholder="职位要求" style="height:150px"></textarea>
									</div>
								</div>								
								<div class="row" style="margin:0">
									<div class="form-group">
										<label for="linkman" class="col-lg-2 col-xs-2 control-label" style="text-align:right">联系人</label>
										<div class="col-lg-4 col-xs-4">
											<input type="text" class="form-control" id="linkman" name="recruit.contact" value="${user.company.contact }" placeholder="联系人">
										</div>
										<label for="linkphone" class="col-lg-2 col-xs-2 control-label" style="text-align:right">联系电话</label>
										<div class="col-lg-4 col-xs-4">
											<input type="text" class="form-control" id="linkphone" name="recruit.phoneNumber" value="${user.company.phone }" placeholder="联系电话">
										</div>
									</div>
								</div>							
								<div class="row" style="margin:0">
									<div class="form-group">
										<label for="linkaddress" class="col-lg-2 col-xs-2 control-label" style="text-align:right" >联系地址</label>
										<div class="col-lg-4 col-xs-4" >
											<input type="text" class="form-control" id="linkaddress" name="recruit.address" value="${user.company.address }" placeholder="联系地址">
										</div>
										<label for="postcode" class="col-lg-2 col-xs-2 control-label" style="text-align:right">邮编</label>
										<div class="col-lg-4 col-xs-4" >
											<input type="text" class="form-control" id="postcode" name="recruit.postcode" value="${user.company.postcode }" placeholder="联系地址对应的邮编">
										</div>
									</div>
								</div>								
								<div class="form-group">
									<label for="linkmail" class="col-lg-2 col-xs-2 control-label" style="text-align:right">联系人邮箱</label>
									<div class="col-lg-4 col-xs-4">
										<input type="text" class="form-control" id="linkmail" name="recruit.email" value="${user.company.email }" placeholder="联系人邮箱">
									</div>
									<label for="date" class="col-lg-2 col-xs-2 control-label" style="text-align:right">截止日期</label>
									<div class="col-lg-4 col-xs-4">
										<input type="text" class="form-control" id="emenddate" name="recruit.enddate" placeholder="截止日期">
									</div>
								</div>								
								<div class="form-group" >
									<label for="remarks" class="col-lg-2 col-xs-2 control-label" style="text-align:right">备注</label>
									<div class="col-lg-8 col-xs-8">
										<textarea class="form-control" rows="20" id="remarks" name="recruit.remark" placeholder="" style="height:150px"></textarea>
									</div>
								</div>																
								<div class="form-group ">
									<div class="col-lg-8 col-lg-offset-4 col-xs-8 col-xs-offset-4">
										<button type="submit" class="btn btn-success col-lg-3 col-xs-3">发布</button>
										<button type="reset" class="btn btn-danger col-lg-3 col-lg-offset-1 col-xs-3 col-xs-offset-1">取消</button>
									</div>
								</div>
							</form><!--form-horizontal-->
						</div>
					</div><!--panel panel-default-->
				</div>
				
				<div class="tab-pane" id="tab10"><!--发布企业快讯-->
					<div class="panel panel-default">
						<div class="panel-heading">发布企业快讯</div>
						<div class="panel-body">
							<form class="form-horizontal" role="form" action="companyNews-save.action" method="post">								
								<div class="form-group">
									<label for="news_title" class="col-lg-2 col-xs-2 control-label" style="text-align:right">标题</label>
									<div class="col-lg-9 col-xs-9">
										<input type="text" class="form-control" id="news_title" name="companyNews.tittle" placeholder="新闻标题">
									</div>												
								</div>								
								<div class="form-group" >
									<label for="news_content" class="col-lg-2 col-xs-2 control-label" style="text-align:right">内容</label>
									<div class="col-lg-9 col-xs-9">
										<textarea class="form-control" rows="50" id="newscontent" name="companyNews.content" style="width:100%;"></textarea>
									</div>
								</div>								
								<div class="form-group ">
									<div class="col-lg-8 col-lg-offset-4 col-xs-8 col-xs-offset-4">
										<button type="submit" class="btn btn-success col-lg-3 col-xs-3">发布</button>
										<button type="reset" class="btn btn-danger col-lg-3 col-lg-offset-1 col-xs-3 col-xs-offset-1">取消</button>
									</div>
								</div>
							</form><!--form-horizontal-->
						</div>
					</div><!--panel panel-default-->				
				</div>			
			</div>
		</div>
	</div>
</body>
</html>