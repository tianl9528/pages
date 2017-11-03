<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String base_root = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>农产品供应回复>>详细</title>

<script type="text/javascript" src="<%=request.getContextPath()%>/theme/appjs/userspace/mark.js"></script>
</head>
<body> 
	<div style="padding:20px 10px 0 10px">
		<div class="panel panel-default" style="">
			<div class="panel-heading"
					style="background: #99CC00; padding: 5px 5px 5px 10px; font-size: 20px; color: white; height: 30px">
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
								农产品供应信息
							</div>
							<div class="panel-body" style="height:100px;">	
								<c:if test="${!empty ps}">	
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">									
										供应：${ps.spName}&nbsp;储量：${ps.spNum}&nbsp;截止日期：<fmt:formatDate value="${ps.spExpDate}"></fmt:formatDate>
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
										发布时间：<fmt:formatDate value="${ps.spPubDate}"></fmt:formatDate>	
									</div>
								</div>																																																																																																																																						
								</c:if>																											
								<c:if test="${empty ps}">没有数据！</c:if>
							</div>
						</div>
						<div class="panel panel-default" style="">
							<div class="panel-heading" style="text-align:left">
							<img src="<%=request.getContextPath()%>/theme/images/question/ans1.jpg" style="width:30px;height:30px;" alt="..." class=""/>
								回复
							</div>
							<div class="panel-body" style="">
								<c:if test="${!empty reList}">
								<c:forEach items="${reList}" var="rl">								
								<div class="row">
									<div class="col-xs-10 xol-lg-10" style="text-align:left;">
										<c:if test="${fn:trim(rl.isread) eq '0'}">
											<img src="<%=request.getContextPath()%>/theme/images/question/mark.gif" style="width:30px;height:30px;" alt="..." class="mark"/>
										</c:if>										
										${rl.reContent }
									</div>
									<div class="col-xs-2 xol-lg-2" style="">
										<c:if test="${fn:trim(rl.isread) eq '0'}">
										<input type="hidden" class="identi" value="${rl.id}"/>
											<a href="javascript:void(0)" onclick="mark(this);" style="color:red;">请标记已读</a>
										</c:if>	
									</div>									
								</div>								
								<div class="row" style="margin-top:0px;">
									<div class="col-xs-3 xol-lg-3" style=""></div>
									<div class="col-xs-3 xol-lg-3" style=""></div>
									<div class="col-xs-3 xol-lg-3" style="text-align:right;color:#618FC0">
									${rl.user.user_name }									
									</div>
									<div class="col-xs-3 xol-lg-3" style="text-align:right;color:#618FC0">
									<fmt:formatDate value="${rl.reDate}"></fmt:formatDate>	
									</div>
								</div>
								<div class="row" style="height:15px;margin-top:10px;">
									<div class="col-xs-12 xol-lg-12" style="margin-left:15px;width:900px; border-bottom:1px dashed #ccc;"></div>
								</div>
								</c:forEach>
								</c:if>
								<c:if test="${empty reList}">没有回复！</c:if>
							</div>
						</div>														
					</div>				
				</div>				
			</div>
		</div>
	</div>
</body>
</html>