<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html> 
<html lang="en"> 
<head> 
<meta charset="utf-8"> 
<title>用户空间 >>农业信息管理</title>
<%
	String base_root = request.getContextPath();	
%>
<link href="<%=base_root%>/theme/css/user.css" rel="stylesheet">

<style type="text/css">
.nav-pills > li >a{
	border-radius:0;
	text-align:left;
	width:150px;
}
.nav-pills > li.active > a,
.nav-pills > li.active > a:hover,
.nav-pills > li.active > a:focus {
  color: #ffffff;
  background-color:#A8CBF2;
}
</style> 
</head>
<body>
<div style="width:1000px;">
	<!-- <h4><a href="aginfograsp.action">抓取数据</a></h4> -->
	<div class="row">
	<div class="col-lg-3 col-xs-3" style="padding-left:0">
		<div id="sidebar" style="margin-left:15px;">
			<div class="panel panel-default" style="margin-bottom:2px">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a style="cursor:pointer">
						信息管理
						</a>
					</h4>
				</div>
				<div class="panel-body">																	
					<ul class="nav nav-pills">
						<li class="active"><a href="#tab1" data-toggle="tab">农业要闻</a>
						<li><a href="#tab2" data-toggle="tab">农业气象</a>
						<li><a href="#tab3" data-toggle="tab">病虫害预报</a>
						<li><a href="#tab4" data-toggle="tab">实用技术</a>
						<li><a href="#tab5" data-toggle="tab">政策法规</a>
						<li><a href="#tab6" data-toggle="tab">价格行情</a>
						<li><a href="#tab7" data-toggle="tab">科技要闻</a>
						<li><a href="#tab8" data-toggle="tab">专家论坛</a>
						<li><a href="#tab9" data-toggle="tab">市场动态</a>
						<li><a href="#tab10" data-toggle="tab">分析报告</a>
						<li><a href="#tab11" data-toggle="tab">致富经验</a>
					</ul>									 
				</div>
			</div>
		 </div> 
	</div>
	<div class="col-lg-9 col-xs-9" style="min-width:755px;padding:0;margin-left:-14px;">
		<div class="tab-content">
			<div class="tab-pane active" id="tab1">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-10 xol-lg-10" style="text-align:center">
								农业要闻
							</div>
							<div class="col-xs-2 xol-lg-2">
								<span class="label label-info"><a href="nyywadd.action">新增</a></span>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<c:if test="${!empty page_nyyw.result}">
							<table class="table table-striped">
			                	<thead>  
			        				<tr>  
			          					<th width="60%">标题</th>
			          					<th width="10%">来源</th>                        
			          					<th width="20%">时间</th>
			          					<th width="10%">操作</th> 
			        				</tr>  
			      				</thead>
			                    <tbody class="">
			 						<c:forEach items="${page_nyyw.result}" var="nyyw" varStatus="stat"> 
			            			<tr>
			           					<td><a href="#" class="active">${nyyw.aititle}</a></td>           			
			           					<td>${nyyw.airesource}</td>
			           					<td><fmt:formatDate value="${nyyw.aidate}"></fmt:formatDate></td>
			           					<td>编辑</td>           					
			            			</tr>
			            			</c:forEach>	     
			                    </tbody>  
			                </table>
		                </c:if>
		                <c:if test="${empty page_nyyw.result}">
			        		<span>没有数据！！！</span>
		        		</c:if>
		        		 <div class="listBox"><!--分页-->         
					        <div class="page" style="background:none;">
					          <div class="pageBox">
					          <table border="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
					            <tr><td><c:if test="${!empty page_nyyw.result}">${ct_nyyw}</c:if></td></tr>
					          </table>
					          </div>
					        </div>
					     </div><!-- 分页结束 -->
					</div>
				</div><!--panel panel-default-->
			</div><!--tab-pane tab1-->
			<div class="tab-pane" id="tab2">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-10 xol-lg-10" style="text-align:center">
								农业气象
							</div>
							<div class="col-xs-2 xol-lg-2">
								<span class="label label-info"><a href="nyqxadd.action">新增</a></span>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<c:if test="${!empty page_nyqx.result}">
							<table class="table table-striped">
			                	<thead>  
			        				<tr>  
			          					<th width="60%">标题</th>
			          					<th width="10%">来源</th>                        
			          					<th width="20%">时间</th>
			          					<th width="10%">操作</th> 
			        				</tr>  
			      				</thead>
			                    <tbody class="">
			 						<c:forEach items="${page_nyqx.result}" var="nyqx" varStatus="stat"> 
			            			<tr>
			           					<td><a href="#" class="active">${nyqx.aititle}</a></td>           			
			           					<td>${nyqx.airesource}</td>
			           					<td><fmt:formatDate value="${nyqx.aidate}"></fmt:formatDate></td>
			           					<td>编辑</td>           					
			            			</tr>
			            			</c:forEach>	     
			                    </tbody>  
			                </table>
		                </c:if>
		                <c:if test="${empty page_nyqx.result}">
			        		<span>没有数据！！！</span>
		        		</c:if>
		        		 <div class="listBox"><!--分页-->         
					        <div class="page" style="background:none;">
					          <div class="pageBox">
					          <table border="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
					            <tr><td><c:if test="${!empty page_nyqx.result}">${ct_nyqx}</c:if></td></tr>
					          </table>
					          </div>
					        </div>
					     </div><!-- 分页结束 -->
					</div>
				</div><!--panel panel-default-->
			</div><!--tab-pane tab2-->
			<div class="tab-pane" id="tab3">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-10 xol-lg-10" style="text-align:center">
								病虫害预报
							</div>
							<div class="col-xs-2 xol-lg-2">
								<span class="label label-info"><a href="bchybadd.action">新增</a></span>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<c:if test="${!empty page_bchyb.result}">
							<table class="table table-striped">
			                	<thead>  
			        				<tr>  
			          					<th width="50%">标题</th>
			          					<th width="20%">来源</th>                        
			          					<th width="20%">时间</th>
			          					<th width="10%">操作</th> 
			        				</tr>  
			      				</thead>
			                    <tbody class="">
			 						<c:forEach items="${page_bchyb.result}" var="bchyb" varStatus="stat"> 
			            			<tr>
			           					<td><a href="#" class="active">${bchyb.aititle}</a></td>           			
			           					<td>${bchyb.airesource}</td>
			           					<td><fmt:formatDate value="${bchyb.aidate}"></fmt:formatDate></td>
			           					<td>编辑</td>           					
			            			</tr>
			            			</c:forEach>	     
			                    </tbody>  
			                </table>
		                </c:if>
		                <c:if test="${empty page_bchyb.result}">
			        		<span>没有数据！！！</span>
		        		</c:if>
		        		 <div class="listBox"><!--分页-->         
					        <div class="page" style="background:none;">
					          <div class="pageBox">
					          <table border="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
					            <tr><td><c:if test="${!empty page_bchyb.result}">${ct_bchyb}</c:if></td></tr>
					          </table>
					          </div>
					        </div>
					     </div><!-- 分页结束 -->
					</div>
				</div><!--panel panel-default-->
			</div><!--tab-pane tab3-->
			<div class="tab-pane" id="tab4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-10 xol-lg-10" style="text-align:center">
								实用技术
							</div>
							<div class="col-xs-2 xol-lg-2">
								<span class="label label-info"><a href="syjsadd.action">新增</a></span>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<c:if test="${!empty page_syjs.result}">
							<table class="table table-striped">
			                	<thead>  
			        				<tr>  
			          					<th width="50%">标题</th>
			          					<th width="20%">来源</th>                        
			          					<th width="20%">时间</th>
			          					<th width="10%">操作</th> 
			        				</tr>  
			      				</thead>
			                    <tbody class="">
			 						<c:forEach items="${page_syjs.result}" var="syjs" varStatus="stat"> 
			            			<tr>
			           					<td><a href="#" class="active">${syjs.aititle}</a></td>           			
			           					<td>${syjs.airesource}</td>
			           					<td><fmt:formatDate value="${syjs.aidate}"></fmt:formatDate></td>
			           					<td>编辑</td>           					
			            			</tr>
			            			</c:forEach>	     
			                    </tbody>  
			                </table>
		                </c:if>
		                <c:if test="${empty page_syjs.result}">
			        		<span>没有数据！！！</span>
		        		</c:if>
		        		 <div class="listBox"><!--分页-->         
					        <div class="page" style="background:none;">
					          <div class="pageBox">
					          <table border="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
					            <tr><td><c:if test="${!empty page_syjs.result}">${ct_syjs}</c:if></td></tr>
					          </table>
					          </div>
					        </div>
					     </div><!-- 分页结束 -->
					</div>
				</div><!--panel panel-default-->
			</div><!--tab-pane tab4-->
			<div class="tab-pane" id="tab5">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-10 xol-lg-10" style="text-align:center">
								政策法规
							</div>
							<div class="col-xs-2 xol-lg-2">
								<span class="label label-info"><a href="zcfgadd.action">新增</a></span>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<c:if test="${!empty page_zcfg.result}">
							<table class="table table-striped">
			                	<thead>  
			        				<tr>  
			          					<th width="50%">标题</th>
			          					<th width="20%">来源</th>                        
			          					<th width="20%">时间</th>
			          					<th width="10%">操作</th> 
			        				</tr>  
			      				</thead>
			                    <tbody class="">
			 						<c:forEach items="${page_zcfg.result}" var="zcfg" varStatus="stat"> 
			            			<tr>
			           					<td><a href="#" class="active">${zcfg.aititle}</a></td>           			
			           					<td>${zcfg.airesource}</td>
			           					<td><fmt:formatDate value="${zcfg.aidate}"></fmt:formatDate></td>
			           					<td>编辑</td>           					
			            			</tr>
			            			</c:forEach>	     
			                    </tbody>  
			                </table>
		                </c:if>
		                <c:if test="${empty page_zcfg.result}">
			        		<span>没有数据！！！</span>
		        		</c:if>
		        		 <div class="listBox"><!--分页-->         
					        <div class="page" style="background:none;">
					          <div class="pageBox">
					          <table border="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
					            <tr><td><c:if test="${!empty page_zcfg.result}">${ct_zcfg}</c:if></td></tr>
					          </table>
					          </div>
					        </div>
					     </div><!-- 分页结束 -->
					</div>
				</div><!--panel panel-default-->
			</div><!--tab-pane tab5-->
			<div class="tab-pane" id="tab6">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-10 xol-lg-10" style="text-align:center">
								价格行情
							</div>
							<div class="col-xs-2 xol-lg-2">
								<span class="label label-info"><a href="jghqadd.action">新增</a></span>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<c:if test="${!empty page_jghq.result}">
							<table class="table table-striped">
			                	<thead>  
			        				<tr>  
			          					<th width="50%">标题</th>
			          					<th width="20%">来源</th>                        
			          					<th width="20%">时间</th>
			          					<th width="10%">操作</th> 
			        				</tr>  
			      				</thead>
			                    <tbody class="">
			 						<c:forEach items="${page_jghq.result}" var="jghq" varStatus="stat"> 
			            			<tr>
			           					<td><a href="#" class="active">${jghq.aititle}</a></td>           			
			           					<td>${jghq.airesource}</td>
			           					<td><fmt:formatDate value="${jghq.aidate}"></fmt:formatDate></td>
			           					<td>编辑</td>           					
			            			</tr>
			            			</c:forEach>	     
			                    </tbody>  
			                </table>
		                </c:if>
		                <c:if test="${empty page_jghq.result}">
			        		<span>没有数据！！！</span>
		        		</c:if>
		        		 <div class="listBox"><!--分页-->         
					        <div class="page" style="background:none;">
					          <div class="pageBox">
					          <table border="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
					            <tr><td><c:if test="${!empty page_jghq.result}">${ct_jghq}</c:if></td></tr>
					          </table>
					          </div>
					        </div>
					     </div><!-- 分页结束 -->
					</div>
				</div><!--panel panel-default-->
			</div><!--tab-pane tab6-->
			<div class="tab-pane" id="tab7">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-10 xol-lg-10" style="text-align:center">
								科技要闻
							</div>
							<div class="col-xs-2 xol-lg-2">
								<span class="label label-info"><a href="kjywadd.action">新增</a></span>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<c:if test="${!empty page_kjyw.result}">
							<table class="table table-striped">
			                	<thead>  
			        				<tr>  
			          					<th width="50%">标题</th>
			          					<th width="20%">来源</th>                        
			          					<th width="20%">时间</th>
			          					<th width="10%">操作</th> 
			        				</tr>  
			      				</thead>
			                    <tbody class="">
			 						<c:forEach items="${page_kjyw.result}" var="kjyw" varStatus="stat"> 
			            			<tr>
			           					<td><a href="#" class="active">${kjyw.aititle}</a></td>           			
			           					<td>${kjyw.airesource}</td>
			           					<td><fmt:formatDate value="${kjyw.aidate}"></fmt:formatDate></td>
			           					<td>编辑</td>           					
			            			</tr>
			            			</c:forEach>	     
			                    </tbody>  
			                </table>
		                </c:if>
		                <c:if test="${empty page_kjyw.result}">
			        		<span>没有数据！！！</span>
		        		</c:if>
		        		 <div class="listBox"><!--分页-->         
					        <div class="page" style="background:none;">
					          <div class="pageBox">
					          <table border="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
					            <tr><td><c:if test="${!empty page_kjyw.result}">${ct_kjyw}</c:if></td></tr>
					          </table>
					          </div>
					        </div>
					     </div><!-- 分页结束 -->
					</div>
				</div><!--panel panel-default-->
			</div><!--tab-pane tab7-->
			<div class="tab-pane" id="tab8">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-10 xol-lg-10" style="text-align:center">
								专家论坛
							</div>
							<div class="col-xs-2 xol-lg-2">
								<span class="label label-info"><a href="zjltadd.action">新增</a></span>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<c:if test="${!empty page_zjlt.result}">
							<table class="table table-striped">
			                	<thead>  
			        				<tr>  
			          					<th width="50%">标题</th>
			          					<th width="20%">来源</th>                        
			          					<th width="20%">时间</th>
			          					<th width="10%">操作</th> 
			        				</tr>  
			      				</thead>
			                    <tbody class="">
			 						<c:forEach items="${page_zjlt.result}" var="zjlt" varStatus="stat"> 
			            			<tr>
			           					<td><a href="#" class="active">${zjlt.aititle}</a></td>           			
			           					<td>${zjlt.airesource}</td>
			           					<td><fmt:formatDate value="${zjlt.aidate}"></fmt:formatDate></td>
			           					<td>编辑</td>           					
			            			</tr>
			            			</c:forEach>	     
			                    </tbody>  
			                </table>
		                </c:if>
		                <c:if test="${empty page_zjlt.result}">
			        		<span>没有数据！！！</span>
		        		</c:if>
		        		 <div class="listBox"><!--分页-->         
					        <div class="page" style="background:none;">
					          <div class="pageBox">
					          <table border="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
					            <tr><td><c:if test="${!empty page_zjlt.result}">${ct_zjlt}</c:if></td></tr>
					          </table>
					          </div>
					        </div>
					     </div><!-- 分页结束 -->
					</div>
				</div><!--panel panel-default-->
			</div><!--tab-pane tab8-->
			<div class="tab-pane" id="tab9">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-10 xol-lg-10" style="text-align:center">
								市场动态
							</div>
							<div class="col-xs-2 xol-lg-2">
								<span class="label label-info"><a href="scdtadd.action">新增</a></span>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<c:if test="${!empty page_scdt.result}">
							<table class="table table-striped">
			                	<thead>  
			        				<tr>  
			          					<th width="50%">标题</th>
			          					<th width="20%">来源</th>                        
			          					<th width="20%">时间</th>
			          					<th width="10%">操作</th> 
			        				</tr>  
			      				</thead>
			                    <tbody class="">
			 						<c:forEach items="${page_scdt.result}" var="scdt" varStatus="stat"> 
			            			<tr>
			           					<td><a href="#" class="active">${scdt.aititle}</a></td>           			
			           					<td>${scdt.airesource}</td>
			           					<td><fmt:formatDate value="${scdt.aidate}"></fmt:formatDate></td>
			           					<td>编辑</td>           					
			            			</tr>
			            			</c:forEach>	     
			                    </tbody>  
			                </table>
		                </c:if>
		                <c:if test="${empty page_scdt.result}">
			        		<span>没有数据！！！</span>
		        		</c:if>
		        		 <div class="listBox"><!--分页-->         
					        <div class="page" style="background:none;">
					          <div class="pageBox">
					          <table border="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
					            <tr><td><c:if test="${!empty page_scdt.result}">${ct_scdt}</c:if></td></tr>
					          </table>
					          </div>
					        </div>
					     </div><!-- 分页结束 -->
					</div>
				</div><!--panel panel-default-->
			</div><!--tab-pane tab9-->
			<div class="tab-pane" id="tab10">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-10 xol-lg-10" style="text-align:center">
								分析报告
							</div>
							<div class="col-xs-2 xol-lg-2">
								<span class="label label-info"><a href="fxbgadd.action">新增</a></span>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<c:if test="${!empty page_fxbg.result}">
							<table class="table table-striped">
			                	<thead>  
			        				<tr>  
			          					<th width="50%">标题</th>
			          					<th width="20%">来源</th>                        
			          					<th width="20%">时间</th>
			          					<th width="10%">操作</th> 
			        				</tr>  
			      				</thead>
			                    <tbody class="">
			 						<c:forEach items="${page_fxbg.result}" var="fxbg" varStatus="stat"> 
			            			<tr>
			           					<td><a href="#" class="active">${fxbg.aititle}</a></td>           			
			           					<td>${fxbg.airesource}</td>
			           					<td><fmt:formatDate value="${fxbg.aidate}"></fmt:formatDate></td>
			           					<td>编辑</td>           					
			            			</tr>
			            			</c:forEach>	     
			                    </tbody>  
			                </table>
		                </c:if>
		                <c:if test="${empty page_fxbg.result}">
			        		<span>没有数据！！！</span>
		        		</c:if>
		        		 <div class="listBox"><!--分页-->         
					        <div class="page" style="background:none;">
					          <div class="pageBox">
					          <table border="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
					            <tr><td><c:if test="${!empty page_fxbg.result}">${ct_fxbg}</c:if></td></tr>
					          </table>
					          </div>
					        </div>
					     </div><!-- 分页结束 -->
					</div>
				</div><!--panel panel-default-->
			</div><!--tab-pane tab10-->
			<div class="tab-pane" id="tab11">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-10 xol-lg-10" style="text-align:center">
								致富经验
							</div>
							<div class="col-xs-2 xol-lg-2">
								<span class="label label-info"><a href="zfjyadd.action">新增</a></span>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<c:if test="${!empty page_zfjy.result}">
							<table class="table table-striped">
			                	<thead>  
			        				<tr>  
			          					<th width="50%">标题</th>
			          					<th width="20%">来源</th>                        
			          					<th width="20%">时间</th>
			          					<th width="10%">操作</th> 
			        				</tr>  
			      				</thead>
			                    <tbody class="">
			 						<c:forEach items="${page_zfjy.result}" var="zfjy" varStatus="stat"> 
			            			<tr>
			           					<td><a href="#" class="active">${zfjy.aititle}</a></td>           			
			           					<td>${zfjy.airesource}</td>
			           					<td><fmt:formatDate value="${zfjy.aidate}"></fmt:formatDate></td>
			           					<td>编辑</td>           					
			            			</tr>
			            			</c:forEach>	     
			                    </tbody>  
			                </table>
		                </c:if>
		                <c:if test="${empty page_zfjy.result}">
			        		<span>没有数据！！！</span>
		        		</c:if>
		        		 <div class="listBox"><!--分页-->         
					        <div class="page" style="background:none;">
					          <div class="pageBox">
					          <table border="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
					            <tr><td><c:if test="${!empty page_zfjy.result}">${ct_zfjy}</c:if></td></tr>
					          </table>
					          </div>
					        </div>
					     </div><!-- 分页结束 -->
					</div>
				</div><!--panel panel-default-->
			</div><!--tab-pane tab11-->			
		</div><!--tab-content col-md-12-->
	</div><!--col-md-9 yy_contright-->
	</div>
</div>
</body>
</html>