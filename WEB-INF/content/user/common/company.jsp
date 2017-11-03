<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <%

	String base_root = request.getContextPath();
	
 
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/dialog.js"></script>
<link href="<%=request.getContextPath()%>/theme/js/dialog.css" rel="stylesheet" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/appjs/userspace/enterprise.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/appjs/userspace/datalocation.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/theme/appjs/gmap3/gmap3.js"></script>
<script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script>

<link href="<%=base_root%>/theme/css/user.css" rel="stylesheet">

<link rel="stylesheet" href="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/themes/default/default.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/plugins/code/prettify.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/kindeditor.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/lang/zh_CN.js"></script>
<script charset="utf-8" src="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/plugins/code/prettify.js"></script>

<title>用户空间 >>企业信息修改与完善</title>
<style>

 .gmap3{
        margin: 20px auto;
        border: 1px dashed #C0C0C0;
        width:750px;
        height: 400px;
      }


table .title{
		color:#6E8B3D;
		font-weight:bold;
	}
	
.tooltip-inner{
		max-width:400px;
		background-color: #668B8B;
	}
#dlg, #mapdlg .close {
	font-size:14px;
	font-weight:normal;
	opacity: 1;
	color:white;
	text-shadow:none;
	line-height:1.3;
	
}
#dlg .content
{
  
}
</style>

<script>
	KindEditor.ready(function(K) { 
		var editor1 = K.create('textarea[name="user.company.introduction"]', {
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

  <div style="max-width:1007px;min-width:978px">
	<div class="">
		<div class="col-lg-3 col-xs-3">
			<div class="col-lg-12 col-xs-12">
			  <div class="panel-group" id="accordion">
				<div class="panel panel-default">
				  <div class="panel-heading">
					<h4 class="panel-title">
						企业信息修改与完善
					</h4>
				  </div>
					<div class="panel-body">
						<div class="tabbable">
							<ul class="nav bs-sidenav">
							  <li class="active"><a href="#tab1" data-toggle="tab">企业基本信息</a></li>
							  <li><a href="#tab2" data-toggle="tab">企业特色产品信息</a></li>
							  <li><a href="#tab3" data-toggle="tab">企业资质信息</a></li>
							</ul>
						 </div>
					</div>
				</div>
			  </div>
		  </div>
		</div>
		<div class="col-lg-9 col-xs-9">
			<div class="tab-content col-lg-12 col-xs-12" style="padding:0px 0 0 10px;">
				<div class="tab-pane  active" id="tab1"><!--企业基本信息-->
					<div class="panel panel-default">
					<div class="panel-heading">企业基本信息</div>
						<div class="panel-body">
							<form class="form-horizontal" role="form" id="form1" name="form1" method="post" action="user-save.action?id=${user.user_id }" onSubmit="return checkforminput()" enctype="multipart/form-data">	
								<div class="row">
									<div class="row" style="margin:0">
										<div class="form-group">
											  <label for="name" class="col-lg-2 col-xs-2 control-label">企业名称</label>
											  <div class="col-lg-5 col-xs-5">
												<input type="text" class="form-control" id="name"  placeholder="企业名称" name="user.company.companyname" value="${user.company.companyname}">
											  </div>
										</div>
									</div>
									
									<div class="row" style="margin:0">
										<div class="form-group">
											<label for="enterprise_property" class="col-lg-2 col-xs-2 control-label">企业性质</label>
											<div class="col-lg-5 col-xs-5" style="padding-top:7px">											
											<!-- 
											<s:select list="{'国有企业','集体所有制企业','联营企业','三资企业','私营企业','其他企业'}" theme="simple" 
										value="user.company.nature" name="user.company.nature"   ></s:select>	
											 -->
											 	<select name="user.company.nature" class="form-control">
												 	<option <c:if test="${user.company.nature == '国有企业' }">selected</c:if> value="国有企业">国有企业</option>
												 	<option <c:if test="${user.company.nature == '集体所有制企业'}">selected</c:if> value="集体所有制企业">集体所有制企业</option>  
              										<option <c:if test="${user.company.nature == '联营企业' }">selected</c:if> value="联营企业">联营企业</option>  
											        <option <c:if test="${user.company.nature == '三资企业' }">selected</c:if> value="三资企业">三资企业</option>
											        <option <c:if test="${user.company.nature == '私营企业' }">selected</c:if> value="私营企业">私营企业</option>
											        <option <c:if test="${user.company.nature == '其他企业' }">selected</c:if> value="其他企业">其他企业</option>  								
												 </select>	
											</div>
										 </div>
									 </div>
									 
									 <div class="row" style="margin:0">
										 <div class="form-group">
											<label for="industry_classification" class="col-lg-2 col-xs-2 control-label">行业分类</label>
											<div class="col-lg-5 col-xs-5" style="padding-top:7px">												
												<!-- 
												<s:select list="{'粮食','油料','棉麻丝','糖烟茶','蔬菜','水果及干果','园林花卉及牧草林产品','药材','副食及调味品','畜牧产品','水产品','农业生产资料','其他'}" theme="simple" 
												value="user.company.assortment" name="user.company.assortment"   ></s:select>	
												 -->
												 <select name="user.company.assortment" class="form-control">
												 	<option <c:if test="${user.company.assortment == '糖烟茶' }">selected</c:if> value="糖烟茶">糖烟茶</option>
												 	<option <c:if test="${user.company.assortment == '粮食'}">selected</c:if> value="粮食">粮食</option>  
              										<option <c:if test="${user.company.assortment == '油料' }">selected</c:if> value="油料">油料</option>  
											        <option <c:if test="${user.company.assortment == '棉麻丝' }">selected</c:if> value="棉麻丝">棉麻丝</option>  
											        <option <c:if test="${user.company.assortment == '蔬菜' }">selected</c:if> value="蔬菜">蔬菜</option>
											        <option <c:if test="${user.company.assortment == '棉麻丝' }">selected</c:if> value="棉麻丝">棉麻丝</option>
											        <option <c:if test="${user.company.assortment == '水果及干果' }">selected</c:if> value="水果及干果">水果及干果</option>
											        <option <c:if test="${user.company.assortment == '园林花卉及牧草林产品' }">selected</c:if> value="园林花卉及牧草林产品">园林花卉及牧草林产品</option>
											        <option <c:if test="${user.company.assortment == '药材' }">selected</c:if> value="药材">药材</option>
											        <option <c:if test="${user.company.assortment == '副食及调味品' }">selected</c:if> value="副食及调味品">副食及调味品</option>
											        <option <c:if test="${user.company.assortment == '畜牧产品' }">selected</c:if> value="畜牧产品">畜牧产品</option>
											        <option <c:if test="${user.company.assortment == '水产品' }">selected</c:if> value="水产品">水产品</option>
											        <option <c:if test="${user.company.assortment == '农业生产资料' }">selected</c:if> value="农业生产资料">农业生产资料</option>
											        <option <c:if test="${user.company.assortment == '其他' }">selected</c:if> value="其他">其他</option>								
												 </select>
											</div>
										</div>
									</div>
									
									<div class="row" style="margin:0">
									<div class="form-group ">
										  <label for="registered_capital" class="col-lg-2 col-xs-2 control-label">注册资本</label>
										  <div class="col-lg-5 col-xs-5">
											<input type="text" class="form-control " id="registered_capital" placeholder="注册资本" name="user.company.registercapital" value="${user.company.registercapital}">
										  </div>
									 </div>	
									 </div>
									 
									 <div class="row" style="margin:0">
										 <div class="form-group">
											<label for="town" class="col-lg-2 col-xs-2 control-label">所在专业镇</label>
											<div class="col-lg-5 col-xs-5">
											<input type="text" class="form-control" id="town" name="user.company.location" placeholder="所在专业镇" value="${user.company.location}">
											</div>
										 </div>
									 </div>
									
									<div class="col-lg-4 col-xs-4 col-lg-offset-8 col-xs-offset-8" style="margin-top:-240px">
										<div class="form-group" >
										<img class ="img-thumbnail" src="<%=request.getContextPath()%>${user.company.companyimage}" onerror="this.src='<%=request.getContextPath()%>/theme/images/de_user.gif'" style="height:180px" />
										<label for="exampleInputFile" >
											上传头像
											<input type="file"  name="reportFiles"  value="上传头像"/>
										</label>
										</div>
									</div>
									
									<div class="row" style="margin:0">										
										<div class="form-group" id="show1">
										  <label for="administrative_region" class="col-lg-2 col-xs-2 control-label " style="padding-left:-15px;">行政区域</label>
										  <div class="col-lg-6 col-xs-6" >
										  	<c:if test="${!empty user.company.dataLoc.fullname}">
												<label for="administrative_region" class="col-lg-10" style="margin-top:7px;">${user.company.dataLoc.fullname}</label>											  	
										  		<button type="button" class="btn btn-link col-lg-2" id="bt1" style="margin-left:0px;">修改</button>
										  	</c:if>
										  	<c:if test="${empty user.company.dataLoc.fullname}">
												<label for="administrative_region" style="margin-top:7px;">未选择</label>											  	
										  		<button type="button" class="btn btn-link" id="bt3" style="margin-left:10px;margin-top:-7px;">选择</button>
										  	</c:if>
										  </div>																		  
										</div>										
										<c:if test="${empty user.company.dataLoc.fullname}">																							  												  																			  																					
										</c:if>																			
										<div class="form-group" id="show2" style="display:none;">
											<label for="administrative_region" class="col-lg-2 col-xs-2 control-label " style="padding-left:-15px;">行政区域</label>
											
											<div class="col-lg-2 col-xs-2" style="">
												<select id="province" name="province"  class="form-control">
    												
												</select>
											</div>
											<div class="col-lg-2 col-xs-2" style="margin-left:-20px;">
												<select id="city" name="city"  class="form-control">
    												
												</select>
											</div>
											<div class="col-lg-2 col-xs-2" style="margin-left:-20px;">
												<select id="county" name="county"  class="form-control">
    												
												</select>																						
											</div>
											<div class="col-lg-2 col-xs-2" style="margin-left:-20px;">
												<select id="countyArea" name="countyArea"  class="form-control">
    												
												</select>																						
											</div>
											<button type="button" class="btn btn-link col-lg-1 col-xs-1" id="bt2">取消</button>											
										</div>										
									</div>
									
									<div class="row" style="margin:0">
										<div class="form-group" >
											  <label for="business_scope" class="col-lg-2 col-xs-2 control-label ">经营范围</label>
											  <div class="col-lg-4 col-xs-4" >
												<input type="text" class="form-control" id="business_scope" name="user.company.scope" value="${user.company.scope}"  placeholder="经营范围">
											  </div>
										</div>
									</div>
									
									<div class="row" style="margin:0">
										<div class="form-group" >
											  <label for="postcode" class="col-lg-2 col-xs-2 control-label " style="padding-left:-15px;">邮编</label>
											  <div class="col-lg-4 col-xs-4" >
												<input type="text" class="form-control" id="postcode" name="user.company.postcode" placeholder="邮政编码" value="${user.company.postcode}">
											  </div>
											  <!--  
											  <label for="address" class="col-lg-2 col-xs-2 control-label ">企业地址</label>
											  <div class="col-lg-4 col-xs-4" >
												<input type="text" class="form-control" id="address" name="user.company.address" placeholder="企业地址" value="${user.company.address}">
											  </div>
											  -->
											  
										</div>
									</div>
									
										
									<div class="row" style="margin:0">
										<div class="form-group" >
									  
											  <label for="address" class="col-lg-2 col-xs-2 control-label ">企业地址</label>
											  <div class="col-lg-4 col-xs-4" >
												<input type="text" class="form-control" id="address" name="user.company.address" placeholder="企业地址" value="${user.company.address}">
												<input  type="hidden" id="addressLat" name="user.company.lat"  value="">
												<input  type="hidden" id="addressLon" name="user.company.lon" value="">
											  </div>
											   	
											  <div class="col-lg-4 col-xs-4" >
												<img  class="mappop" rel="popover" src="<%=request.getContextPath()%>/theme/images/location.png" style="width:25px;height:31px" onclick="showMap()"/>
											  </div>													

											</div>
									</div>
									
									
									<div class="row" style="margin:0">
										<div class="form-group">
											<label for="enterprise_profile" class="col-lg-2 col-xs-2 control-label">企业简介</label>
											<div class="col-lg-10 col-xs-10">
												<textarea class="form-control" rows="20" style="width:99%" name="user.company.introduction" id="enterprise_profile" >${user.company.introduction}</textarea>
											</div>
											
										</div>
									</div>
									
									<div class="row" style="margin:0">
										<div class="form-group" >
											  <label for="corporation" class="col-lg-2 col-xs-2 control-label " style="padding-left:-15px;">企业法人</label>
											  <div class="col-lg-4 col-xs-4" >
												<input type="text" class="form-control" id="corporation" name="user.company.entity" placeholder="企业法人" value="${user.company.entity}">
											  </div>
											  <label for="phone" class="col-lg-2 col-xs-2 control-label ">联系电话</label>
											  <div class="col-lg-4 col-xs-4" >
												<input type="text" class="form-control" id="phone" name="user.company.entity_mobile" value="${user.company.entity_mobile}" placeholder="联系电话">
											  </div>
										</div>
									</div>
									
									<div class="row" style="margin:0">
										<div class="form-group" >
											  <label for="email" class="col-lg-2 col-xs-2 control-label " style="padding-left:-15px;">邮箱</label>
											  <div class="col-lg-4 col-xs-4" >
												<input type="email" class="form-control" id="email" name="user.company.email" value="${user.company.email}" placeholder="邮箱">
											  </div>
											  <label for="enterprise_website" class="col-lg-2 col-xs-2 control-label ">企业网站</label>
											  <div class="col-lg-4 col-xs-4" >
												<input type="text" class="form-control" id="enterprise_website" name="user.company.companysite" value="${user.company.companysite}" placeholder="企业网站">
											  </div>
										</div>
									</div>
									
									<div class="row" style="margin:0">
										<div class="form-group" >
											  <label for="contacts" class="col-lg-2 col-xs-2 control-label " style="padding-left:-15px;">联系人</label>
											  <div class="col-lg-4 col-xs-4" >
												<input type="text" class="form-control" id="contacts" name="user.company.contact" value="${user.company.contact}" placeholder="联系人">
											  </div>
											  <label for="contacts_position" class="col-lg-2 col-xs-2 control-label ">职务</label>
											  <div class="col-lg-4 col-xs-4" >
												<input type="text" class="form-control" id="contacts_position" name="user.company.contact_job" value="${user.company.contact_job}"  placeholder="职务">
											  </div>
										</div>
									</div>
									
									<div class="row" style="margin:0">
										<div class="form-group" >
											  <label for="contacts_office_phone" class="col-lg-2 col-xs-2 control-label " style="padding-left:-15px;">办公电话</label>
											  <div class="col-lg-4 col-xs-4" >
												<input type="text" class="form-control" id="contacts_office_phone"  name="user.company.phone" value="${user.company.phone}" placeholder="办公电话">
											  </div>
											  <label for="contacts_phone" class="col-lg-2 col-xs-2 control-label ">手机</label>
											  <div class="col-lg-4 col-xs-4" >
												<input type="text" class="form-control" id="contacts_phone"  name="user.company.mobile" value="${user.company.mobile}" placeholder="手机">
											  </div>
										</div>
									</div>
									
									<div class="row" style="margin:0">
										<div class="form-group" >
											  <label for="contacts_office_phone" class="col-lg-2 col-xs-2 control-label " style="padding-left:-15px;">QQ</label>
											  <div class="col-lg-4 col-xs-4" >
												<input type="text" class="form-control" id="qq"  name="user.qq" value="${user.qq}" >
											  </div>										  
										</div>
									</div>
									
									<div class="row" style="margin:0">
										<div class="form-group">											
											<label for="enterprise_publicity_material" class="col-lg-2 col-xs-2 control-label" >
												企业宣传资料
											</label>
											<input type="file" name="adreportFiles"  style="margin-left:134px;padding-top:7px"/>
										</div>
									</div>
									
									
									<div class="row" style="margin:0">
										<div class="row" style="margin:0">
										<div class="form-group">
												  <label for="loginname" class="col-lg-2 col-xs-2 control-label">登录名</label>
												  <div class="col-lg-4 col-xs-4">
													<input type="text" class="form-control" id="loginname" name="user.log_name" disabled="true" value="${user.log_name }" placeholder="登录名">
												  </div>
										</div>
										</div>
										
										
										<div class="row" style="margin:0">
										<div class="form-group">
											  <label for="pwd" class="col-lg-2 col-xs-2 control-label">密码</label>
											  <div class="col-lg-4 col-xs-4">
												<input type="password" class="form-control" id="pwd" name="user.password" value="${user.password }" placeholder="密码">
											  </div>
											  <label for="ensurepwd" class="col-lg-2 col-xs-2 control-label">确认密码</label>
											  <div class="col-lg-4 col-xs-4">
												<input type="password" class="form-control" id="ensurepwd" value="${user.password }" placeholder="确认密码">
											  </div>
										 </div>
										</div>
										<div class="form-group ">
											<div class="col-lg-6 col-lg-offset-5 col-xs-6 col-xs-offset-5">
												<button type="submit" class="btn btn-success col-lg-2 col-xs-2">保存</button>
												<button type="reset" class="btn btn-danger col-lg-2 col-lg-offset-1 col-xs-2 col-xs-offset-1">取消</button>
											</div>
										</div>
									</div>
								</div>
							</form><!--form-horizontal-->
							<iframe id="id_iframe" name="id_iframe" style="display:none;"></iframe> 
						</div>
					</div><!--panel panel-default-->
				</div><!--tab-pane tab1-->
				<div class="tab-pane" id="tab2"><!--企业特色产品信息-->
					<div class="panel panel-default">
						<div class="panel-heading">企业特色产品信息</div>
							<div class="panel-body">
								<form class="form-horizontal" role="form" method="post"  action="featuredprod-save.action" enctype="multipart/form-data">
										
									<div class="row" style="margin:0">
										<div class="form-group ">
											  <label for="featured_product_name" class="col-lg-2 col-xs-2 control-label">产品名称</label>
											  <div class="col-lg-8 col-xs-8">
												<input type="text" class="form-control " id="featured_product_name" name="featuredprod.prodname" placeholder="特色产品名称">
											  </div>
										 </div>	
									 </div>
									 
									 <div class="row" style="margin:0">
										<div class="form-group ">
											  <label for="annual_output" class="col-lg-2 col-xs-2 control-label">年产量</label>
											  <div class="col-lg-8 col-xs-8">
												<input type="text" class="form-control " id="annual_output" name="featuredprod.annual" placeholder="年产量">
											  </div>
										 </div>	
									 </div>
									 
									<div class="row" style="margin:0">
										<div class="form-group">
											<label for="product_description" class="col-lg-2 col-xs-2 control-label">产品描述</label>
											<div class="col-lg-8 col-xs-8">
												<textarea class="form-control" rows="8" id="product_description" style="width:99%" name="featuredprod.proddescri"></textarea>
											</div>
											
										</div>
									</div>
									 
									 <div class="row" style="margin:0">
										<div class="form-group">											
											<label for="product_publicity_material" class="col-lg-2 col-xs-2 control-label" >
												产品图片
											</label>
											<input type="file" name="fpFiles"  value="" style="margin-left:134px;padding-top:7px"/>
										</div>
									</div>
									 
									 <div class="row" style="margin:0">
										<div class="form-group">											
											<label for="product_publicity_material" class="col-lg-2 col-xs-2 control-label" >
												宣传资料
											</label>
											<input type="file" name="adfpFiles"  value="" style="margin-left:134px;padding-top:7px"/>
										</div>
									</div>									 
									<div class="form-group ">
											<div class="col-lg-6 col-lg-offset-4 col-xs-6 col-xs-offset-4">
												<button type="submit" class="btn btn-success col-lg-2 col-xs-2">添加</button>
												<button type="reset" class="btn btn-danger col-lg-2 col-lg-offset-1 col-xs-2 col-xs-offset-1">取消</button>
											</div>
									</div>											
								</form><!--form-horizontal-->
								<table class="table">
									<tr>
										<th class="col-lg-3 col-xs-3" style="max-width:252px;">
											特色产品名称
										</th>
										<th class="col-lg-2 col-xs-2">
											年产量
										</th>										
										<th class="col-lg-3 col-xs-3">
											操作
										</th>
									</tr>
									<c:if test="${!empty feaprodlist}">
										<c:forEach var="fpl" items="${feaprodlist}">
											<tr>
												<td class="col-lg-2 col-xs-2" style="max-width: 252px;">
													${fpl.prodname}</td>
												<td class="col-lg-2 col-xs-2">${fpl.annual}吨</td>
												<td class="col-lg-3 col-xs-3 trainFunction">
													<div>
														<a href="featuredprod-edit.action?prodid=${fpl.id}" class="edit">编辑</a>
														<a href="featuredprod-delect.action?prodid=${fpl.id}"  class="delete" onClick="return confirm('确定删除此记录吗？')" >删除</a>
													</div>
												</td>
											</tr>

										</c:forEach>
									</c:if>
								</table>																
							</div>
						</div><!--panel panel-default-->
					</div><!--tab-pane tab2-->
				<div class="tab-pane" id="tab3"><!--企业资产信息-->
					<div class="panel panel-default">
						<div class="panel-heading">企业资质信息</div>
						<div class="panel-body">
							<form class="form-horizontal" role="form">
							<div class="row" style="margin:0">
								<div class="form-group ">
									  <label for="qualification_name" class="col-lg-3 col-xs-3 control-label" style="text-align:center;">资质名称</label>
									  <div class="col-lg-8 col-xs-8">
										<input type="text" class="form-control " id="qualification_name" placeholder="资质名称">
									  </div>
								 </div>	
							 </div>
									 
							 <div class="row" style="margin:0">
								<div class="form-group ">
									  <label for="qualification_level" class="col-lg-3 col-xs-3 control-label" style="text-align:center;">资质等级</label>
									  <div class="col-lg-8 col-xs-8">
										<input type="text" class="form-control " id="qualification_level" placeholder="资质等级">
									  </div>
								 </div>	
							 </div>
									 
								<div class="row" style="margin:0">
									<div class="form-group">
										<label for="qualification_number" class="col-lg-3 col-xs-3 control-label" style="text-align:center;">资质序列号</label>
										<div class="col-lg-8 col-xs-8">
											<input type="text" class="form-control " id="qualification_number" placeholder="资质序列号">
										</div>
									</div>
								</div>
									
									<div class="row" style="margin:0">
										<div class="form-group">
											<label for="time_of_getqualification" class="col-lg-3 col-xs-3 control-label" style="text-align:center;">资质获得时间</label>
											<div class="col-lg-8 col-xs-8" style="text-align:left;">
												<input type="text" class="form-control " id="get_of_getqualification" placeholder="资质获得时间">
											</div>
										</div>
									</div>
									
									<div class="row" style="margin:0">
										<div class="form-group">
											<label for="distributing_department" class="col-lg-3 col-xs-3 control-label" style="text-align:center;">资质派发单位</label>
											<div class="col-lg-8 col-xs-8">
												<input type="text" class="form-control " id="distributing_department" placeholder="资质派发单位">
											</div>
										</div>
									</div>
									 
									 <div class="row" style="margin:0">
										<div class="form-group">											
											<label for="product_publicity_material" class="col-lg-3 col-xs-3 control-label" style="text-align:center;">
												资质图片
											</label>
											<div class="col-lg-8 col-xs-8">
												<input type="file" value="" style="margin-left:134px;padding-top:7px"/>
												<img class ="img-thumbnail col-lg-offset-2 col-xs-offset-2" src="#" style="margin-top:7px;height:180px"/>
											</div>
										</div>
									</div>
									 
									<div class="form-group ">
											<div class="col-lg-6 col-lg-offset-4 col-xs-6 col-xs-offset-4">
												<button type="submit" class="btn btn-success col-lg-2 col-xs-2">添加</button>
												<button type="reset" class="btn btn-danger col-lg-2 col-lg-offset-1 col-xs-2 col-xs-offset-1">取消</button>
											</div>
									</div>
											
								</form><!--form-horizontal-->
								
								 <!-- Table -->
								 
							<table class="table">
								<thead>
									<tr>
										<th>资质名称</th>
										<th>资质等级</th>										
										<th>资质序列号</th>										
										<th>资质获得时间</th>										
										<th>资质派发单位</th>										
										<th>资质图片</th>										
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>名称</td>										
										<td>A级</td>										
										<td>6273551971</td>										
										<td>2014年4月19日</td>										
										<td>XX质检局</td>										
										<td >
											<img class ="img-thumbnail" src="#" style="height:90px" />
										</td>										
										<td>
											<div>
												<a href="#">编辑</a>
												<a href="#">删除</a>
											</div>
										</td>
									</tr>																		
								</tbody>
							</table>
						</div>
					</div><!--panel panel-default-->
				</div><!--tab3-->
			</div><!--tab-content col-md-12-->
		</div><!--col-md-9 yy_contright-->
	</div>
  </div><!--row  yy_content-->
</body>
</html>