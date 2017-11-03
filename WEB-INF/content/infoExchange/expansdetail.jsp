<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String base_root = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>我的解答>>详细</title>
<style>
	
</style>
<script type="text/javascript">
	
</script>
</head>
<body> 
	<div style="padding:20px 10px 0 10px">
		<div class="panel panel-default" style="border:none;">
			<div class="panel-heading"
					style="background: #A8CBF2; padding: 5px 5px 5px 10px; font-size: 20px; color: white; height: 30px">
					<div class="row">
						<div class="col-xs-10 xol-lg-10">
							
						</div>
						<div class="col-xs-2 col-lg-2">
							<a href="expquestion.action">返回上一级</a>
						</div>
					</div>						
			</div>
			<div class="panel-body">
				<div class="row">					
					<div class="col-xs-12 col-lg-12" style="">												
						<div class="panel panel-default" style="">
							<div class="panel-heading" style="text-align:left">
								<img src="<%=request.getContextPath()%>/theme/images/question/question.jpg" style="width:25px;height:25px;" alt="..." class=""/>
								问题详细
							</div>
							<div class="panel-body" style="height:115px;">	
								<c:if test="${!empty opq}">	
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										<img src="<%=request.getContextPath()%>/theme/images/question/question.jpg" style="width:50px;height:50px;" alt="..." class=""/>
										问题：${opq.question}
									</div>									
								</div>
								<div class="row" style="height:15px;margin-top:5px;">
									<div class="col-xs-12 xol-lg-12" style="margin-left:15px;width:900px; border-bottom:1px dashed #ccc;"></div>
								</div>
								<div class="row" style="margin-top:0px;">
									<div class="col-xs-3 xol-lg-3" style=""></div>
									<div class="col-xs-3 xol-lg-3" style="color:#618FC0;text-align:right;">
									问题分类：${opq.questionTitle}
									</div>
									<div class="col-xs-3 xol-lg-3" style="color:#618FC0;text-align:right;">
									提问者：${opq.user.user_name}
									</div>
									<div class="col-xs-3 xol-lg-3" style="text-align:right;color:#618FC0">
									发布时间：<fmt:formatDate value="${opq.quesdate}"></fmt:formatDate>	
									</div>
								</div>																																																																																																																																						
								</c:if>																											
								<c:if test="${empty opq}">没有数据！</c:if>
							</div>
						</div>
						<div class="panel panel-default" style="">
							<div class="panel-heading" style="text-align:left">
							<img src="<%=request.getContextPath()%>/theme/images/question/ans1.jpg" style="width:25px;height:25px;" alt="..." class=""/>
								回答
							</div>
							<div class="panel-body" style="">
								<c:if test="${!empty expquesre}">																
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										<img src="<%=request.getContextPath()%>/theme/images/question/ans1.jpg" style="width:40px;height:40px;" alt="..." class=""/>
										${expquesre.content }
									</div>									
								</div>							
								<div class="row" style="margin-top:0px;">
									<div class="col-xs-3 xol-lg-3" style=""></div>
									<div class="col-xs-3 xol-lg-3" style=""></div>
									<div class="col-xs-3 xol-lg-3" style="">
									
									</div>
									<div class="col-xs-3 xol-lg-3" style="text-align:right;color:#618FC0">
									回答时间：<fmt:formatDate value="${expquesre.redate}"></fmt:formatDate>	
									</div>
								</div>															
								</c:if>
								<c:if test="${empty expquesre}">没有数据！</c:if>
							</div>
						</div>														
					</div>				
				</div>				
			</div>
		</div>
	</div>
</body>
</html>