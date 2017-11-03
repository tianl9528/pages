<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String base_root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript"
	src="<%=base_root%>/theme/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/validform/Validform_v5.3.2.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/validform/Validform_v5.3.2_ncr_min.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/validform/Validform_v5.3.2_min.js"></script>
<link href="<%=base_root%>/theme/css/bootstrap.min.css" rel="stylesheet" />
<script type="text/javascript" src="<%=base_root%>/theme/js/dialog.js"></script>
<link href="<%=base_root%>/theme/js/dialog.css" rel="stylesheet" />
<link href="<%=base_root%>/theme/css/index.css" rel="stylesheet"
	type="text/css" />
<title>用户空间 >>企业信息修改与完善</title>
<style>
.gmap3 {
	margin: 20px auto;
	border: 1px dashed #C0C0C0;
	width: 750px;
	height: 400px;
}

table .title {
	color: #6E8B3D;
	font-weight: bold;
}

.tooltip-inner {
	max-width: 400px;
	background-color: #668B8B;
}

#dlg,#mapdlg .close {
	font-size: 14px;
	font-weight: normal;
	opacity: 1;
	color: white;
	text-shadow: none;
	line-height: 1.3;
}

#dlg .content {
	
}

.tipmessage {
	text-align: right;
	padding: 2px;
	margin-top: 5px;
	margin-left: 70px;
	color: red;
	font-size: 14px;
	color: red;
}

.Validform_checktip {
	/* margin-left: 8px; */
	line-height: 20px;
	height: 20px;
	overflow: hidden;
	color: #999;
	font-size: 15px;
}

.Validform_right {
	color: #71b83d;
	padding-left: 20px;
	background: url(../images/right.png) no-repeat left center;
}

.Validform_wrong {
	color: red;
	/* padding-left: 20px; */
	white-space: nowrap;
	background: url(../images/error.png) no-repeat left center;
}

.Validform_loading {
	padding-left: 20px;
	background: url(../images/onLoad.gif) no-repeat left center;
}

.Validform_error {
	background-color: #ffe7e7;
}

#Validform_msg {
	color: #7d8289;
	font: 12px/1.5 tahoma, arial, \5b8b\4f53, sans-serif;
	width: 280px;
	-webkit-box-shadow: 2px 2px 3px #aaa;
	-moz-box-shadow: 2px 2px 3px #aaa;
	background: #fff;
	position: absolute;
	top: 0px;
	right: 50px;
	z-index: 99999;
	display: none;
	filter: progid:DXImageTransform.Microsoft.Shadow(Strength=3, Direction=135,
		Color='#999999');
}

#Validform_msg .iframe {
	position: absolute;
	left: 0px;
	top: -1px;
	z-index: -1;
}

#Validform_msg .Validform_title {
	line-height: 25px;
	height: 25px;
	text-align: left;
	font-weight: bold;
	padding: 0 8px;
	color: #fff;
	position: relative;
	background-color: #000;
}

#Validform_msg a.Validform_close:link,#Validform_msg a.Validform_close:visited
	{
	line-height: 22px;
	position: absolute;
	right: 8px;
	top: 0px;
	color: #fff;
	text-decoration: none;
}

#Validform_msg a.Validform_close:hover {
	color: #cc0;
}

#Validform_msg .Validform_info {
	padding: 8px;
	border: 1px solid #000;
	border-top: none;
	text-align: left;
}
</style>

<script>
	KindEditor.ready(function(K) { 
		var editor1 = K.create('textarea[name="company.introduction"]', {
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
		
		var editor2 = K.create('textarea[name="featuredprod.proddescri"]', {
			cssPath : '<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/plugins/code/prettify.css',
			uploadJson : '<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/jsp/upload_json.jsp',
			fileManagerJson : '<%=request.getContextPath()%>
	/scripts/kindeditor-4.1.7/jsp/file_manager_json.jsp',
									allowFileManager : true,
									items : [ 'source', '|', 'undo', 'redo',
											'|', 'preview', 'print',
											'template', 'code', 'cut', 'copy',
											'paste', 'plainpaste', 'wordpaste',
											'|', 'justifyleft',
											'justifycenter', 'justifyright',
											'justifyfull', 'insertorderedlist',
											'insertunorderedlist', 'indent',
											'outdent', 'subscript',
											'superscript', 'clearhtml',
											'quickformat', 'selectall', '|',
											'fullscreen', '/', 'formatblock',
											'fontname', 'fontsize', '|',
											'forecolor', 'hilitecolor', 'bold',
											'italic', 'underline',
											'strikethrough', 'lineheight',
											'removeformat', '|', 'image',
											'flash', 'media', 'insertfile',
											'table', 'hr', 'emoticons',
											'pagebreak', 'anchor', 'link',
											'unlink', 'about' ],
									afterCreate : function() {
										var self = this;
										K.ctrl(document, 13,
												function() {
													self.sync();
													document.forms['myAction']
															.submit();
												});
										K.ctrl(self.edit.doc, 13,
												function() {
													self.sync();
													document.forms['myAction']
															.submit();
												});
									},
									afterBlur : function() {
										this.sync();
									}
								});

				prettyPrint();
			});
</script>

<script type="text/javascript">
$(function(){
	$(".form-horizontal").Validform({
		tiptype:2,
        label:".label",
        showAllError:true
	});
})
</script>
</head>
<body>
	<center>
		<div style="max-width: 1007px; min-width: 978px">
			<div class="tab-content col-lg-12 col-xs-12"
				style="padding: 0px 15px 0 15px;">
				<!--企业基本信息-->
				<div class="panel panel-default">
					<div class="panel-heading" style="font-size: 15px;">企业基本信息-企业审核信息输入</div>
					<div class="panel-body">
						<div class="col-lg-9 col-xs-9">
							<%-- <script type="text/javascript">alert("${id}");</script> --%>
							<form class="form-horizontal" role="form" id="form1" name="form1"
								method="post"
								action="companyIdentifysave.action?id=${company.id }"
								onSubmit="return checkforminput()" enctype="multipart/form-data">
								<div class="row">
									<div class="row" style="margin: 0">
										<div class="form-group">
											<label class="tipmessage col-lg-1 col-xs-1 text-left">(*必填)</label>
											<label for="name" class="col-lg-2 col-xs-2 control-label">企业名称</label>
											<div class="col-lg-4 col-xs-4">
												<input type="text" class="form-control" id="name"
													placeholder="企业名称" name="company.companyname"
													value="${company.companyname}" datatype="*" />
											</div>
											<div class="Validform_checktip"></div>
										</div>
									</div>
									<div class="row" style="margin: 0">
										<div class="form-group">
											<label class="tipmessage col-lg-1 col-xs-1 ">(*必填)</label> <label
												for="town" class="col-lg-2 col-xs-2 control-label">所在专业镇</label>
											<div class="col-lg-4 col-xs-4">
												<input type="text" class="form-control" id="town"
													name="company.location" placeholder="所在专业镇"
													value="${company.location}" datatype="*">
											</div>
											<div class="Validform_checktip"></div>
										</div>
									</div>
									<div class="row" style="margin: 0">
										<div class="form-group">
											<label class="tipmessage col-lg-1 col-xs-1 ">(*必填)</label> <label
												for="postcode" class="col-lg-2 col-xs-2 control-label "
												style="padding-left: -15px;">企业地址</label>
											<div class="col-lg-4 col-xs-4">
												<input type="text" class="form-control" id="postcode"
													name="company.address" placeholder="企业地址"
													value="${company.address}" datatype="*">
											</div>
											<div class="Validform_checktip"></div>
										</div>
									</div>
									<div class="row" style="margin: 0">
										<div class="form-group">
											<label class="tipmessage col-lg-1 col-xs-1 "></label> <label
												for="enterprise_property"
												class="col-lg-2 col-xs-2 control-label">企业性质</label>
											<div class="col-lg-4 col-xs-4" style="padding-top: 7px">
												<!-- 
											<s:select list="{'国有企业','集体所有制企业','联营企业','三资企业','私营企业','其他企业'}" theme="simple" 
										value="user.company.nature" name="user.company.nature"   ></s:select>	
											 -->
												<select name="company.nature" class="form-control">
													<option
														<c:if test="${company.nature == '国有企业' }">selected</c:if>
														value="国有企业">国有企业</option>
													<option
														<c:if test="${company.nature == '集体所有制企业'}">selected</c:if>
														value="集体所有制企业">集体所有制企业</option>
													<option
														<c:if test="${company.nature == '联营企业' }">selected</c:if>
														value="联营企业">联营企业</option>
													<option
														<c:if test="${company.nature == '三资企业' }">selected</c:if>
														value="三资企业">三资企业</option>
													<option
														<c:if test="${company.nature == '私营企业' }">selected</c:if>
														value="私营企业">私营企业</option>
													<option
														<c:if test="${company.nature == '其他企业' }">selected</c:if>
														value="其他企业">其他企业</option>
												</select>
											</div>
										</div>
									</div>
									<div class="row" style="margin: 0">
										<div class="form-group">
											<label class="tipmessage col-lg-1 col-xs-1 "></label> <label
												for="industry_classification"
												class="col-lg-2 col-xs-2 control-label">行业分类</label>
											<div class="col-lg-4 col-xs-4" style="padding-top: 7px">
												<!-- 
												<s:select list="{'粮食','油料','棉麻丝','糖烟茶','蔬菜','水果及干果','园林花卉及牧草林产品','药材','副食及调味品','畜牧产品','水产品','农业生产资料','其他'}" theme="simple" 
												value="user.company.assortment" name="user.company.assortment"   ></s:select>	
												 -->
												<select name="company.assortment" class="form-control">
													<option
														<c:if test="${company.assortment == '糖烟茶' }">selected</c:if>
														value="糖烟茶">糖烟茶</option>
													<option
														<c:if test="${company.assortment == '粮食'}">selected</c:if>
														value="粮食">粮食</option>
													<option
														<c:if test="${company.assortment == '油料' }">selected</c:if>
														value="油料">油料</option>
													<option
														<c:if test="${company.assortment == '棉麻丝' }">selected</c:if>
														value="棉麻丝">棉麻丝</option>
													<option
														<c:if test="${company.assortment == '蔬菜' }">selected</c:if>
														value="蔬菜">蔬菜</option>
													<option
														<c:if test="${company.assortment == '棉麻丝' }">selected</c:if>
														value="棉麻丝">棉麻丝</option>
													<option
														<c:if test="${company.assortment == '水果及干果' }">selected</c:if>
														value="水果及干果">水果及干果</option>
													<option
														<c:if test="${company.assortment == '园林花卉及牧草林产品' }">selected</c:if>
														value="园林花卉及牧草林产品">园林花卉及牧草林产品</option>
													<option
														<c:if test="${company.assortment == '药材' }">selected</c:if>
														value="药材">药材</option>
													<option
														<c:if test="${company.assortment == '副食及调味品' }">selected</c:if>
														value="副食及调味品">副食及调味品</option>
													<option
														<c:if test="${company.assortment == '畜牧产品' }">selected</c:if>
														value="畜牧产品">畜牧产品</option>
													<option
														<c:if test="${company.assortment == '水产品' }">selected</c:if>
														value="水产品">水产品</option>
													<option
														<c:if test="${company.assortment == '农业生产资料' }">selected</c:if>
														value="农业生产资料">农业生产资料</option>
													<option
														<c:if test="${company.assortment == '其他' }">selected</c:if>
														value="其他">其他</option>
												</select>
											</div>
										</div>
									</div>
									<div class="row" style="margin: 0">
										<div class="form-group ">
											<label class="tipmessage col-lg-1 col-xs-1 "></label> <label
												for="registered_capital"
												class="col-lg-2 col-xs-2 control-label">注册资本</label>
											<div class="col-lg-4 col-xs-4">
												<input type="text" class="form-control "
													id="registered_capital" placeholder="注册资本"
													name="company.registercapital"
													value="${company.registercapital}">
											</div>
										</div>
									</div>
									<div class="row" style="margin: 0">
										<div class="form-group">
											<label class="tipmessage col-lg-1 col-xs-1 "></label> <label
												for="business_scope"
												class="col-lg-2 col-xs-2 control-label ">经营范围</label>
											<div class="col-lg-4 col-xs-4">
												<input type="text" class="form-control" id="business_scope"
													name="company.scope" value="${company.scope}"
													placeholder="经营范围">
											</div>
										</div>
									</div>
									<input type="hidden" class="form-control "
										name="company.changed" value="已修改未查看">
									<div class="row" style="margin: 0">
										<div class="form-group ">
											<div
												class="col-lg-6 col-lg-offset-5 col-xs-6 col-xs-offset-5">
												<div>
													<button type="submit"
														class="btn btn-success col-lg-2 col-xs-2">保存</button>
												</div>
												<div>
													<button type="reset"
														class="btn btn-danger col-lg-2 col-lg-offset-1 col-xs-2 col-xs-offset-1">取消</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</form>
							<!--form-horizontal-->
						</div>
						<div class="col-lg-3 col-xs-3"
							style="border-left: 1px solid #ccc; height: 400px;">
							<div
								style="height: 100px; border-bottom: 1px solid #ccc; line-height: 100px; font-size: 15px;">
								企业当前审核状态</div>
							<div style="margin-top: 100px; color: red;">
								<b style="font-size: 20px;">${user.identify}</b>
							</div>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-content col-md-12-->
			</div>
			<!--col-md-9 yy_contright-->
		</div>
		<!--row  yy_content-->
	</center>
</body>
</html>