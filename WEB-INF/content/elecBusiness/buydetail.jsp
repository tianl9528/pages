<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>求购信息>>求购详细信息</title>
<meta name="description" content="Creating Modal Window with Bootstrap">

<link href="<%=request.getContextPath()%>/theme/css/base/jquery.ui.all.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/theme/css/supplychild.css" rel="stylesheet">

<style>
.ui-dialog .ui-dialog-buttonpane .ui-dialog-buttonset button{ width:100px; height:30px; }
.text{
	width:220px;
}	
</style>
<script type="text/javascript">
$(document).ready(function(){
	//alert("abc");
	$( "#dialog-form" ).dialog({
		autoOpen: false,
		height: 460,
		width: 600,
		modal: true,
		buttons: {
			"报价": function() {							
				var phone=$("#phone").val();
				//var email=$("#email").val();
				if(phone==""){
					alert("请输入联系电话或者邮箱");
				}
				else {
					var params=$("#myform").serialize(); 
					params = decodeURIComponent(params,true); 
					//alert(params);
					$.ajax({
						async:true,
						url:"quotedprice.action",
						type:"post",
						dateType:"json",
						data:params,
						success:function(result){
							alert(result);
							$("#dialog-form").dialog( "close" );
						},
						error:function(XmlHttpRequest,textStatus, errorThrown){
							alert(XmlHttpRequest.responseText);
						}
					});
				}
			},
			"取消": function() {
				$( this ).dialog( "close" );
			}
		},
		close: function() {
			//allFields.val( "" ).removeClass( "ui-state-error" );
			
		}
	});
	$("#quotedprice").click(function(){
		var role = "${user_role}"
			
		if(role == "游客"||role=="待审核用户"){
			$( "#tip" ).dialog({
				autoOpen: false,
				height: 180,
				width: 300,
				modal: true,
				buttons: {
					"登录": function() {							
						window.location.href="/gdzyzmm/login.action";
					},
					"取消": function() {
						$( this ).dialog( "close" );
					}
				},
				close: function() {
					
				}
			});
			
			$( "#tip" ).dialog( "open" );
		}
		else{
			$( "#dialog-form" ).dialog( "open" );
		}
	});
});
</script>

</head>
<body>
	<div style="padding: 20px 20px 0 20px;">
		<div id="tip" title="提示" style="display:none;">
			<p>您当前的身份是${user_role}，权限不足，请登录</p>
		</div>
		<div class="row" style="padding: 0 0 0 10px;">
			<!--第一行，信息检索-->
			<div class="col-xs-6 col-lg-6"></div>
			<!--向右偏移-->
			<div class="col-xs-4 col-lg-4">
				<div class="form-group">
					<input type="text" class="form-control" name="searchInput"
						style="padding-left: 35px; background: url(images/search.png) no-repeat center left;"
						placeholder="搜索企业">
				</div>
			</div>
			<div class="col-xs-1 col-lg-1" style="padding: 0;">
				<button type="submit" class="btn btn-success col-sm-10">
					<b>搜索</b>
				</button>
			</div>
		</div>
		<!--第一行，搜索-->
		<div class="row">
			<!--第二行-->
			<div class="panel panel-default">
				<div class="panel-heading"
					style="background: #A8CBF2; padding: 5px 5px 5px 10px; font-size: 20px; color: white;">
					<div class="row">
						<div class="col-xs-10 xol-lg-10">
							
						</div>
						<div class="col-xs-2 col-lg-2">
							<a href="<%=request.getContextPath()%>/infopublish/publish.action"><small>发布信息</small></a>
						</div>
					</div>
				</div>
				<div class="panel-body" style="padding: 10px;">
					<div class="col-xs-4 col-lg-4" style="padding: 0 10px 0 0;">
						<img
								src="<%=request.getContextPath()%>/theme/image/default/default.png"
								alt="..." class="img-thumbnail img-box" />
						<!-- 暂无图片
						<c:if test="${empty probuy}">
							<img
								src="<%=request.getContextPath()%>/theme/image/default/default.png"
								alt="..." class="img-thumbnail img-box" />
						</c:if>
						<c:if test="${!empty probuy}">
							<img src="<%=request.getContextPath()%>${probuy}"
								alt="..." class="img-thumbnail img-box" />
						</c:if>
						 -->
					</div>
					<div class="col-xs-8 col-lg-8 deletepad">
						<div class="col-xs-7 col-lg-7" style="padding: 0 10px 0 0;">
							<table class="table">
								<tbody>
									<tr>
										<td class="td-width">品牌：</td>
										<td>${probuy.pbName}</td>
									</tr>
									<tr>
										<td>类型：</td>
										<td>${probuy.agriculturethirdtype.agttypename}</td>
									</tr>
									<tr>
										<td>单价：</td>
										<td style="color: green;">${probuy.pbPrice}元</td>
									</tr>
									<tr>
										<td>求购数量：</td>
										<td style="color: green;">${fn:replace(probuy.pbNum,',','')}</td>
									</tr>
									<tr>
										<td>生产厂家：</td>
										<td>${probuy.pbFactory}</td>
									</tr>
									<tr>
										<td>截止时间：</td>
										<td><fmt:formatDate value="${probuy.pbExpDate}"
												pattern="yyyy-MM-dd" /></td>
									</tr>
								</tbody>
							</table>
							<center>
								<button type="button" class="btn btn-success" id="quotedprice">我要报价</button>
							</center>
							<div id="dialog-form" title="报价">
								<form id="myform">
									<fieldset>
										<table class="table">
											<tbody>
												<tr>
													<td><label id="spname">产品</label></td>
													<td><label id="pname">${probuy.pbName}</label></td>
												</tr>
												<tr>
													<td><label id="stitle">报价标题</label></td>
													<td><input type="text" name="title" id="title" class="text" value="我对你发布的求购${probuy.pbName}感兴趣" /></td>
												</tr>
												<tr>
													<td width="15%"><label id="sknow">我想了解</label></td>
													<td width="85%">
													<input name="know" type="checkbox" id="know" value="单价" />单价
													<input name="know" type="checkbox" id="know" value="需求量" />需求量
													<input type="hidden" name="pbid" id="pbid" value="${probuy.id}" />
													</td>
												</tr>
												<tr>
													<td><label for="scontact">联系人</label></td>
													<td><input type="text" name="contact" id="contact" class="text" value="${curUser.user_name}" /></td>
												</tr>
												<tr>
													<td><label for="sphone">联系电话</label></td>
													<td>
														<input type="text" name="phone" id="phone" class="text" value="${curUser.mobile}" />
														<span id="message"></span>
													</td>
												</tr>
												<tr>
													<td><label for="semail">联系邮箱</label></td>
													<td><input type="text" name="email" id="email" class="text" value="${curUser.email}" /></td>
												</tr>
												<tr>
													<td><label for="semail">详细说明</label></td>
													<td>
														<textarea class="form-control" rows="12" id="detail" name="detail" placeholder="如可提供量" style="height:100px"></textarea>
													</td>
												</tr>
											</tbody>
										</table>	
									</fieldset>
								</form>
							</div>
						</div>
						<div class="col-xs-5 col-lg-5" style="padding: 0;">
							<div class="panel panel-default">
								<c:if test="${buyer_role=='个人用户' }">
									<div class="panel-heading">个人基本信息</div>
									<div class="panel-body" style="padding: 10px;">
										<table class="table table-striped">
											<tbody>
												<tr>
													<th colspan="2">【个人档案】</th>
												</tr>
												<tr>
													<td class="td-width">联系人</td>
													<td>${buyer.user_name}</td>
												</tr>
												<tr>
													<td>职业</td>
													<td>${buyer.person.occupation}</td>
												</tr>
												<tr>
													<td>邮箱</td>
													<td>${buyer.person.email}</td>
												</tr>
												<tr>
													<td>手机</td>
													<td>${buyer.person.mobile}</td>
												</tr>
												<tr>
													<td>工作地</td>
													<td>${buyer.person.workplace}</td>
												</tr>
												<tr>
													<td>地址</td>
													<td>${buyer.person.address}</td>
												</tr>
											</tbody>
										</table>
									</div>
								</c:if>								
								<c:if test="${buyer_role=='企业用户' }">
									<div class="panel-heading">企业基本信息</div>
									<div class="panel-body" style="padding: 10px;">
										<table class="table table-striped">
											<tbody>
												<tr>
													<th colspan="2">【企业档案】</th>
												</tr>
												<tr>
													<td>联系人</td>
													<td>${buyer.user_name }</td>
												</tr>
												<tr>
													<td>邮箱</td>
													<td>${buyer.company.email }</td>
												</tr>
												<tr>
													<td>电话</td>
													<td>${buyer.company.phone }</td>
												</tr>
												<tr>
													<td>手机</td>
													<td>${buyer.company.mobile }</td>
												</tr>
												<tr>
													<td>地区</td>
													<td>${buyer.company.location }</td>
												</tr>
												<tr>
													<td>地址</td>
													<td>${buyer.company.address }</td>
												</tr>
											</tbody>
										</table>
										<div class="col-xs-6 col-lg-6"></div>
										<c:if test="${!empty buyer.company.companysite }">
											<button type="button" class="btn btn-info">
												<a href="#">进入公司网站</a>
											</button>
										</c:if>
									</div>
								</c:if>								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--第二行-->
		<div class="row">
			<!--第三行-->
			<div class="panel panel-default">
				<div class="panel-heading"
					style="background: #A8CBF2; padding: 5px 5px 5px 10px; font-size: 20px; color: white;">
					<b>产品详细说明</b>
				</div>
				<div class="panel-body" style="padding: 10px;">
					${probuy.pbContent}</div>
			</div>
		</div>
		<!--第三行-->
	</div>
</body>
</html>