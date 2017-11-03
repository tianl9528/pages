<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%String base_root = request.getContextPath(); %>

<title>信息交流</title>
<style>	
.example1 {
   background: -moz-linear-gradient( top,#ccc,#000);
}
</style>
</head>
<body>
	<div style="padding: 20px 20px 0 20px;">
    	<div class="row">
      		<div class="col-xs-4 col-lg-4">
            	<div class="thumbnail" style="background: -webkit-linear-gradient(top,#6BC793,#fff);">
                	<h3 style="text-align:center;color:#428BCA;">农业技术服务</h3> 
                    <img src="<%=request.getContextPath()%>/theme/images/question/nyjs.png" alt="...." style="width:267px;height:220px;" class="img-thumbnail"/>     	
  					<div class="caption">
  						<strong><a href="techsupplist.action">技术供应&nbsp;&nbsp;主题数：${tscount}</a></strong><br/>
                   	 	<strong><a href="techdemalist.action">技术需求&nbsp;&nbsp;主题数：${tdcount}</a></strong>
                    </div>
                </div>
            </div>
      		<div class="col-xs-4 col-lg-4">
            	<div class="thumbnail" style="background: -webkit-linear-gradient(top,#29EA7C,#fff);">                	
                    <h3 style="text-align:center;color:#428BCA;">农产品交易</h3>
                    <img src="<%=request.getContextPath()%>/theme/images/question/ncpjy.png" alt="...." style="width:267px;height:220px;" class="img-thumbnail"/>                                      
  					<div class="caption">
  						<strong><a href="prosuplist.action" >产品供应&nbsp;&nbsp;主题数：${pscount}</a></strong><br/>
                    	<strong><a href="probuylist.action">产品需求&nbsp;&nbsp;主题数：${pbcount}</a>	</strong>
                    </div>					
                </div>
            </div>
            <div class="col-xs-4 col-lg-4">
            	<div class="thumbnail" style="background: -webkit-linear-gradient(top,#B4FACB,#fff);">
                    <h3 style="text-align:center;color:#428BCA;">招聘求职</h3>
                    <img src="<%=request.getContextPath()%>/theme/images/question/qzzp.jpg" alt="...." style="width:267px;height:220px;" class="img-thumbnail"/> 
					<div class="caption">
						<strong><a href="jobseeklist.action">个人求职&nbsp;&nbsp;主题数：${jscount}</a></strong><br/>
                  		<strong><a href="recruitlist.action" >企业招聘&nbsp;&nbsp;主题数：${crcount}</a></strong>
                  	</div>
                </div>
            </div>
    	</div>
        <div class="row"><!-- 第二行 -->	
            <div class="col-xs-4 col-lg-4">
            	<div class="thumbnail" style="background: -webkit-linear-gradient(top,#A7CEC6,#fff);">
                    <h3 style="text-align:center;color:#428BCA;">物流信息</h3>
                    <img src="<%=request.getContextPath()%>/theme/images/question/wl.png" alt="...." style="width:267px;height:220px;" class="img-thumbnail"/> 
  					<div class="caption">
  						<strong><a href="logisupplist.action">物流供应&nbsp;&nbsp;主题数：${lscount}</a></strong><br/>
                   		<strong><a href="logidemalist.action" >物流需求&nbsp;&nbsp;主题数：${ldcount}</a></strong>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 col-lg-4">
            	<div class="thumbnail" style="background: -webkit-linear-gradient(top,#71FAE0,#fff);">
                    <h3 style="text-align:center;color:#428BCA;">招商代理</h3>
                    <img src="<%=request.getContextPath()%>/theme/images/question/zs.png" alt="...." style="width:267px;height:220px;" class="img-thumbnail"/> 
  					<div class="caption">
  						<strong><a href="investlist.action">招商代理&nbsp;&nbsp;主题数：${incount}</a></strong>
  					</div>
                </div>
            </div>
            <div class="col-xs-4 col-lg-4">
            	<div class="thumbnail" style="background: -webkit-linear-gradient(top,#A5FAC1,#fff);">
                    <h3 style="text-align:center;color:#428BCA;">技术提问</h3>
                    <img src="<%=request.getContextPath()%>/theme/images/question/js.jpg" alt="...." style="width:267px;height:220px;" class="img-thumbnail"/> 
  					<div class="caption">
  						<strong><a href="queslist.action">技术提问&nbsp;&nbsp;主题数：${tqcount}</a></strong>
  					</div>		
                </div>
            </div>    		
    	</div><!-- 结束 第二行 -->
    </div>
</body>
</html>