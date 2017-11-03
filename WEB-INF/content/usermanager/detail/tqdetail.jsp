<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String base_root = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>技术提问>>详细</title>

<style>
.delete {
	display: block;
	float: left;
	background-image: url(<%=request.getContextPath()%>/theme/images/icon_function_3.png);
	background-repeat: no-repeat;
	background-position: 0px 8px;
	height: 40px;
	margin-left: 3px;
	text-indent: 22px;
	line-height: 40px;
	font-size: 14px;
	color: red;
	text-decoration: none;
}
</style>
</head>
<body> 
	<div style="padding:20px 10px 0 10px">
		<div class="panel panel-default" style="border:none;">
			<div class="panel-heading"
					style="background: #99CC00; padding: 5px 5px 5px 10px; font-size: 20px; color: white; height: 30px">
					<div class="row">
						<div class="col-xs-10 xol-lg-10">
							
						</div>
						<div class="col-xs-2 col-lg-2">
							
						</div>
					</div>						
			</div>
			<div class="panel-body">															
				<div class="panel panel-default" style="">
					<div class="panel-heading" style="text-align:left">
					<img src="<%=request.getContextPath()%>/theme/images/question/question.jpg" style="width:25px;height:25px;" alt="..." class=""/>
						问题详细
					</div>
					<div class="panel-body" style="height:120px;">	
						<c:if test="${!empty opq}">	
						<div class="row">
							<div class="col-xs-12 xol-lg-12" style="text-align:left;">
							<img src="<%=request.getContextPath()%>/theme/images/question/question.jpg" style="width:30px;height:30px;" alt="..." class=""/>
								问题：${opq.question}
							</div>									
						</div>
						<div class="row" style="height:15px;margin-top:10px;">
							<div class="col-xs-12 xol-lg-12" style="margin-left:15px;width:900px; border-bottom:1px dashed #ccc;"></div>
						</div>
						<div class="row" style="margin-top:0px;">
							<div class="col-xs-4 xol-lg-4" style="text-align:right;color:#618FC0">
							问题分类：${opq.questionTitle}
							</div>
							<div class="col-xs-4 xol-lg-4" style="text-align:right;color:#618FC0">
							提问者：${opq.user.user_name}
							</div>
							<div class="col-xs-4 xol-lg-4" style="text-align:right;color:#618FC0">
							发布时间：<fmt:formatDate value="${opq.quesdate}"></fmt:formatDate>	
							</div>
						</div>																																																																																																																																						
						</c:if>																											
						<c:if test="${empty opq}">没有数据！</c:if>
					</div>
				</div>
				<div class="panel panel-default" style="">
					<div class="panel-heading" style="text-align:left">
					<img src="<%=request.getContextPath()%>/theme/images/question/ans1.jpg" style="width:30px;height:30px;" alt="..." class=""/>
						回答
					</div>
					<div class="panel-body" style="">
						<c:if test="${!empty page.result}">
						<c:forEach items="${page.result}" var="tqr">						
						<div class="row">
							<div class="col-xs-10 xol-lg-10" style="text-align:left;">
							<img src="<%=request.getContextPath()%>/theme/images/question/ans1.jpg" style="width:30px;height:30px;" alt="..." class=""/>
								${tqr.content }
							</div>
							<div class="col-xs-2 xol-lg-2" style="text-align:right;">
								<a href="<%=request.getContextPath()%>/infoExchange/tqrdelete.action?id=${tqr.id}" onClick="return confirm('确定删除此条记录吗？')" class="delete">删除</a>
							</div>									
						</div>
						
						<div class="row" style="margin-top:5px;">
							<div class="col-xs-4 xol-lg-4"></div>
							<div class="col-xs-4 xol-lg-4" style="text-align:right;color:#618FC0">
							回答者：${tqr.user.user_name }
							<c:if test="${fn:trim(tqr.isexpre) eq '1'}">(专家)</c:if>
							<c:if test="${fn:trim(tqr.isexpre) eq '0'}">(非专家)</c:if>
							</div>
							<div class="col-xs-4 xol-lg-4" style="text-align:right;color:#618FC0">
							回答时间：<fmt:formatDate value="${tqr.redate}"></fmt:formatDate>	
							</div>
						</div>
						<div class="row" style="height:15px;margin-top:10px;">
							<div class="col-xs-12 xol-lg-12" style="margin-left:15px;width:900px; border-bottom:1px dashed #ccc;"></div>
						</div>
						</c:forEach>
						</c:if>
						<c:if test="${empty page.result}">没有数据！</c:if>
						<!--分页-->
			       		 <div class="listBox">         
					        <div class="page" style="background:none;">
					          <div class="pageBox">
					          <table border="0" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
					            <tr><td><c:if test="${!empty page.result}">${controlTable}</c:if></td></tr>
					          </table>
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