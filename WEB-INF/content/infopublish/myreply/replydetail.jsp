<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String base_root = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>回复>>详细</title>

</head>
<body> 
	<div style="padding:20px 10px 0 10px">
		<div class="panel panel-default" style="">
			<div class="panel-heading"
					style="background: #A8CBF2; padding: 5px 5px 5px 10px; font-size: 20px; color: white; height: 30px">
					<div class="row">
						<div class="col-xs-10 xol-lg-10">
							
						</div>
						<div class="col-xs-2 col-lg-2">
							<a href="personpublished.action" >返回上一级</a>
						</div>
					</div>						
			</div>
			<div class="panel-body">
				<div class="row">					
					<div class="col-xs-12 col-lg-12" style="">												
						<div class="panel panel-default" style="">
							<div class="panel-heading" style="text-align:left">
							<img src="<%=request.getContextPath()%>/theme/images/question/qz.png" style="width:30px;height:30px;" alt="..." class=""/>
								回复主题信息
							</div>
							<div class="panel-body">
								<!-- 技术供应  开始-->	
								<c:if test="${!empty ts}">	
								<div class="row">
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>技术名称</td><td>${ts.tsName}</td>
												</tr>
												<tr>
													<td>发布人</td><td>${ts.user.user_name}</td>
												</tr>
												<tr>
													<td>技术领域</td><td>${ts.tsArea}</td>
												</tr>
												<tr>
													<td>农产品类型</td><td>${ts.proType}</td>
												</tr>
												<tr>
													<td>技术来源</td><td>${ts.tsSource}</td>
												</tr>
												
											</tbody>										
										</table>																																																											
									</div>
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tr>
												<td>相关技术</td><td>${ts.tsRelated}</td>
											</tr>
											<tr>
												<td>获取渠道</td><td>${ts.tsGetway}</td>
											</tr>
											<tr>
												<td>联系邮箱</td><td>${ts.tsEmail}</td>
											</tr>
											<tr>
												<td>联系电话</td><td>${ts.tsPhone}</td>
											</tr>
											<tr>
												<td>截止时间</td><td><fmt:formatDate value='${ts.tsExpDate}' pattern='yyyy-MM-dd'></fmt:formatDate></td>
											</tr>
										</table>
									</div>																	
								</div>
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										<fieldset>
											<legend style="font-size:15px;">技术信息描述</legend>
											<p style="text-indent:2em;">${ts.tsContent}</p>
										</fieldset>
									</div>
								</div>																																																																																																																																																				
								</c:if>																											
								<!-- 技术供应  结束-->	
								
								<!-- 技术需求  开始-->	
								<c:if test="${!empty td}">	
								<div class="row">
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>技术名称</td><td>${td.tName }</td>
												</tr>
												<tr>
													<td>发布人</td><td>${td.user.user_name }</td>
												</tr>
												<tr>
													<td>技术领域</td><td>${td.tdArea }</td>
												</tr>
												<tr>
													<td>农产品类型</td><td>${td.proType }</td>
												</tr>												
											</tbody>
										</table>																																																											
									</div>
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>截止时间</td><td><fmt:formatDate value='${td.tdExpDate}' pattern='yyyy-MM-dd'></fmt:formatDate></td>
												</tr>
												<tr>
													<td>联系邮箱</td><td>${td.tdEmail }</td>
												</tr>
												<tr>
													<td>联系电话</td><td>${td.tdPhone }</td>
												</tr>
											</tbody>
										</table>																																																											
									</div>									
								</div>
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										<fieldset>
											<legend style="font-size:15px;">技术信息描述</legend>
											<p style="text-indent:2em;">${td.tdContent}</p>
										</fieldset>
									</div>
								</div>																																																																																																																																													
								</c:if>																											
								<!-- 技术需求  结束-->
								
								<!-- 农产品供应  开始-->	
								<c:if test="${!empty ps}">	
								<div class="row">
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>农产品名称</td><td>${ps.spName }</td>
												</tr>
												<tr>
													<td>发布人</td><td>${ps.user.user_name }</td>
												</tr>
												<tr>
													<td>价格</td><td>${ps.spPrice}￥</td>
												</tr>
												<tr>
													<td>供应量</td><td>${fn:replace(ps.spNum,',','')}</td>
												</tr>
												<tr>
													<td>产品认证</td><td>${ps.spCertify }</td>
												</tr>
											</tbody>
										</table>																																																											
									</div>
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>产品质量</td><td>${ps.spQuality }</td>
												</tr>
												<tr>
													<td>生产厂家</td><td>${ps.spFactory }</td>
												</tr>
												<tr>
													<td>物流方式</td><td>${ps.spLogistics}</td>
												</tr>
												<tr>
													<td>截止时间</td><td><fmt:formatDate value='${ps.spExpDate}' pattern='yyyy-MM-dd'></fmt:formatDate></td>
												</tr>
												<tr>
													<td>联系电话</td><td>${ps.spPhone }</td>
												</tr>
											</tbody>
										</table>																																																											
									</div>									
								</div>
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										<fieldset>
											<legend style="font-size:15px;">产品描述</legend>
											<p style="text-indent:2em;">${ps.spContent}</p>
										</fieldset>
									</div>
								</div>																																																																																																																																													
								</c:if>																											
								<!-- 农产品供应  结束-->
								
								<!-- 农产品需求  开始-->	
								<c:if test="${!empty pb}">	
								<div class="row">
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>农产品名称</td><td>${pb.pbName }</td>
												</tr>
												<tr>
													<td>发布人</td><td>${pb.user.user_name }</td>
												</tr>
												<tr>
													<td>价格</td><td>${pb.pbPrice }￥</td>
												</tr>
												<tr>
													<td>需求量</td><td>${fn:replace(pb.pbNum,',','')}</td>
												</tr>
												<tr>
													<td>联系电话</td><td>${pb.pbPhone }</td>
												</tr>
											</tbody>
										</table>																																																											
									</div>
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>产品质量要求</td><td>${pb.pbCertify }</td>
												</tr>
												<tr>
													<td>物流方式</td><td>${pb.pbLogistics}</td>
												</tr>
												<tr>
													<td>生产厂家</td><td>${pb.pbFactory}</td>
												</tr>
												<tr>
													<td>联系邮箱</td><td>${pb.pbEmail}</td>
												</tr>
												<tr>
													<td>联系电话</td><td>${pb.pbPhone }</td>
												</tr>
											</tbody>
										</table>																																																											
									</div>									
								</div>
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										<fieldset>
											<legend style="font-size:15px;">产品描述</legend>
											<p style="text-indent:2em;">${pb.pbContent}</p>
										</fieldset>
									</div>
								</div>																																																																																																																																														
								</c:if>																											
								<!-- 农产品需求  结束-->
								
								<!-- 物流供应  开始-->	
								<c:if test="${!empty ls}">	
								<div class="row">
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>出发地</td><td>${ls.startPlace }</td>
												</tr>
												<tr>
													<td>到达地</td><td>${ls.arrivePlace }</td>													
												</tr>
												<tr>
													<td>发布人</td><td>${ls.user.user_name }</td>
												</tr>
												<tr>
													<td>途经地</td><td>${ls.wayPoint }</td>
												</tr>
												<tr>
													<td>发车时间</td><td><fmt:formatDate value='${ls.departureTime}' pattern='yyyy-MM-dd'></fmt:formatDate></td>
												</tr>
											</tbody>
										</table>																																																											
									</div>
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>价格</td><td>${ls.lsPrice }￥</td>
												</tr>
												<tr>
													<td>车辆识别码</td><td>${ls.identiCode }</td>													
												</tr>
												<tr>
													<td>联系邮箱</td><td>${ls.lsEmail }</td>
												</tr>												
												<tr>
													<td>联系电话</td><td>${ls.lsPhone }</td>
												</tr>
											</tbody>
										</table>																																																											
									</div>									
								</div>
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										<fieldset>
											<legend style="font-size:15px;">说明</legend>
											<p style="text-indent:2em;">${ls.explanation}</p>
										</fieldset>
									</div>
								</div>																																																																																																																																													
								</c:if>																											
								<!-- 物流供应  结束-->
								
								<!-- 物流需求  开始-->	
								<c:if test="${!empty ld}">	
								<div class="row">
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>出发地</td><td>${ld.startPlace }</td>
												</tr>
												<tr>
													<td>到达地</td><td>${ld.arrivePlace }</td>
												</tr>
												<tr>
													<td>货物名称</td><td>${ld.goodsName }</td>
												</tr>
												<tr>
													<td>要求</td><td>${ld.require }</td>
												</tr>
												<tr>
													<td>发布人</td><td>${ld.user.user_name }</td>
												</tr>												
											</tbody>
										</table>																			
									</div>
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>运输类型</td><td>${ld.transType }</td>
												</tr>
												<tr>
													<td>货物类型</td><td>${ld.goodsType }</td>
												</tr>
												<tr>
													<td>价格</td><td>${ld.price }$</td>
												</tr>
												<tr>
													<td>联系邮箱</td><td>${ld.ldEmail }</td>
												</tr>
												<tr>
													<td>联系电话</td><td>${ld.ldPhone }</td>
												</tr>
											</tbody>
										</table>																			
									</div>									
								</div>
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										<fieldset>
											<legend style="font-size:15px;">说明</legend>
											<p style="text-indent:2em;">${ld.explanation}</p>
										</fieldset>
									</div>
								</div>																																																																																																																																													
								</c:if>																											
								<!-- 物流需求  结束-->
								
								<!-- 个人求职  开始-->	
								<c:if test="${!empty js}">	
								<div class="row">
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>期望职位</td><td>${js.expjob }</td>
												</tr>
												<tr>
													<td>求职者姓名</td><td>${js.applyername }</td>
												</tr>
												<tr>
													<td>期望薪水</td><td>${js.expsalary}</td>
												</tr>
												<tr>
													<td>学历</td><td>${js.appdegree }</td>
												</tr>												
											</tbody>
										</table>																																																
									</div>
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>专业</td><td>${js.appmajor }</td>
												</tr>
												<tr>
													<td>毕业院校</td><td>${js.appschool }</td>
												</tr>
												<tr>
													<td>联系邮箱</td><td>${js.appemail}</td>
												</tr>
												<tr>
													<td>联系电话</td><td>${js.appphone }</td>
												</tr>												
											</tbody>
										</table>																																																
									</div>									
								</div>
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										<fieldset>
											<legend style="font-size:15px;">备注</legend>
											<p style="text-indent:2em;">${js.others}</p>
										</fieldset>
									</div>
								</div>																																																																																																																																													
								</c:if>																											
								<!-- 个人求职  结束-->
								
								<!-- 企业招聘  开始-->	
								<c:if test="${!empty rt}">	
								<div class="row">
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>职位</td><td>${rt.job }</td>
												</tr>
												<tr>
													<td>发布人</td><td>${rt.user.user_name }</td>
												</tr>
												<tr>
													<td>数量</td><td>${rt.num}人</td>
												</tr>
												<tr>
													<td>工作性质</td><td>${rt.properties }</td>
												</tr>												
											</tbody>
										</table>																																																	
									</div>
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>工作性质</td><td>${rt.properties }</td>
												</tr>											
												<tr>
													<td>联系邮箱</td><td>${rt.email}</td>
												</tr>
												<tr>
													<td>联系电话</td><td>${rt.phoneNumber }</td>
												</tr>												
											</tbody>
										</table>																																																	
									</div>									
								</div>
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										<fieldset>
											<legend style="font-size:15px;">待遇:</legend>
											<p style="text-indent:2em;">${rt.treatment}</p>
										</fieldset>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										<fieldset>
											<legend style="font-size:15px;">工作要求:</legend>
											<p style="text-indent:2em;">${rt.jobRequire}</p>
										</fieldset>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										<fieldset>
											<legend style="font-size:15px;">工作描述:</legend>
											<p style="text-indent:2em;">${rt.jobDetail}</p>
										</fieldset>
									</div>
								</div>																																																																																																																																													
								</c:if>																											
								<!-- 企业招聘  结束-->
								
								<!-- 招商代理  开始-->	
								<c:if test="${!empty it}">	
								<div class="row">
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>农产品名称</td><td>${it.inName }</td>
												</tr>
												<tr>
													<td>发布人</td><td>${it.user.user_name }</td>
												</tr>
												<tr>
													<td>价格</td><td>${it.inPrice}￥</td>
												</tr>
												<tr>
													<td>储量</td><td>${fn:replace(it.inNum,',','')}</td>
												</tr>												
											</tbody>
										</table>																																																	
									</div>
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>生产厂家</td><td>${it.inFactory }</td>
												</tr>
												<tr>
													<td>产品认证</td><td>${it.inCertify }</td>
												</tr>
												<tr>
													<td>产品质量</td><td>${it.inQuality}</td>
												</tr>
												<tr>
													<td>联系电话</td><td>${it.inPhone}</td>
												</tr>												
											</tbody>
										</table>																																																	
									</div>									
								</div>
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										<fieldset>
											<legend style="font-size:15px;">产品描述:</legend>
											<p style="text-indent:2em;">${it.inContent}</p>
										</fieldset>
									</div>
								</div>																																																																																																																																													
								</c:if>																											
								<!-- 招商代理  结束-->
								
								<!-- 询价  开始-->	
								<c:if test="${!empty inquiry}">	
								<div class="row">
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>农产品名称</td><td>${inquiry.spName }</td>
												</tr>
												<tr>
													<td>发布人</td><td>${inquiry.user.user_name }</td>
												</tr>
												<tr>
													<td>价格</td><td>${inquiry.spPrice}￥</td>
												</tr>
												<tr>
													<td>供应量</td><td>${fn:replace(inquiry.spNum,',','')}</td>
												</tr>
												<tr>
													<td>产品认证</td><td>${inquiry.spCertify }</td>
												</tr>
											</tbody>
										</table>																																																											
									</div>
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>产品质量</td><td>${inquiry.spQuality }</td>
												</tr>
												<tr>
													<td>生产厂家</td><td>${inquiry.spFactory }</td>
												</tr>
												<tr>
													<td>物流方式</td><td>${inquiry.spLogistics}</td>
												</tr>
												<tr>
													<td>截止时间</td><td><fmt:formatDate value='${inquiry.spExpDate}' pattern='yyyy-MM-dd'></fmt:formatDate></td>
												</tr>
												<tr>
													<td>联系电话</td><td>${inquiry.spPhone }</td>
												</tr>
											</tbody>
										</table>																																																											
									</div>									
								</div>
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										<fieldset>
											<legend style="font-size:15px;">产品描述</legend>
											<p style="text-indent:2em;">${inquiry.spContent}</p>
										</fieldset>
									</div>
								</div>																																																																																																																																												
								</c:if>																											
								<!-- 询价  结束-->
								
								<!-- 报价  开始-->	
								<c:if test="${!empty qouteprice}">	
								<div class="row">
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>农产品名称</td><td>${qouteprice.pbName }</td>
												</tr>
												<tr>
													<td>发布人</td><td>${qouteprice.user.user_name }</td>
												</tr>
												<tr>
													<td>价格</td><td>${qouteprice.pbPrice }￥</td>
												</tr>
												<tr>
													<td>需求量</td><td>${fn:replace(qouteprice.pbNum,',','')}</td>
												</tr>
												<tr>
													<td>联系电话</td><td>${qouteprice.pbPhone }</td>
												</tr>
											</tbody>
										</table>																																																											
									</div>
									<div class="col-xs-6 xol-lg-6" style="text-align:left;">
										<table class="table table-hover">
											<tbody>
												<tr>
													<td>产品质量要求</td><td>${qouteprice.pbCertify }</td>
												</tr>
												<tr>
													<td>物流方式</td><td>${qouteprice.pbLogistics}</td>
												</tr>
												<tr>
													<td>生产厂家</td><td>${qouteprice.pbFactory}</td>
												</tr>
												<tr>
													<td>联系邮箱</td><td>${qouteprice.pbEmail}</td>
												</tr>
												<tr>
													<td>联系电话</td><td>${qouteprice.pbPhone }</td>
												</tr>
											</tbody>
										</table>																																																											
									</div>									
								</div>
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										<fieldset>
											<legend style="font-size:15px;">产品描述</legend>
											<p style="text-indent:2em;">${qouteprice.pbContent}</p>
										</fieldset>
									</div>
								</div>																																																																																																																																														
								</c:if>																											
								<!-- 报价  结束-->
								
							</div>
						</div>
						<div class="panel panel-default" style="">
							<div class="panel-heading" style="text-align:left">
							<img src="<%=request.getContextPath()%>/theme/images/question/ans1.jpg" style="width:30px;height:30px;" alt="..." class=""/>
								我的回复
							</div>
							<div class="panel-body" style="">
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										&nbsp;&nbsp;&nbsp;${ir.reContent }
									</div>
								</div>
								<div class="row" style="height:15px;margin-top:10px;">
									<div class="col-xs-12 xol-lg-12" style="margin-left:15px;width:900px; border-bottom:1px dashed #ccc;"></div>
								</div>
								<div class="row" style="margin-top:0px;">
									<div class="col-xs-3 xol-lg-3" style=""></div>
									<div class="col-xs-3 xol-lg-3" style="color:#618FC0;text-align:right;">
									
									</div>
									<div class="col-xs-3 xol-lg-3" style="color:#618FC0;text-align:right;">
									
									</div>
									<div class="col-xs-3 xol-lg-3" style="text-align:left;color:#618FC0">
										回复时间：<fmt:formatDate value='${ir.reDate}' pattern='yyyy-MM-dd HH:mm'></fmt:formatDate>							
									</div>
								</div>
																
							</div>
						</div>														
					</div>				
				</div>				
			</div>
		</div>
	</div>
</body>
</html>