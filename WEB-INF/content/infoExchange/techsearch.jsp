<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String base_root = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>技术供应</title>
<style type="text/css">	
	.btnNew {
		float:left;
	}
	.btn-default{
		width:200px;
		height:35px;
		background:#F9F9F9;
	}	
</style>

</head>
<body> 
	<div style="max-width:1007px;min-width:970px;margin:0 auto">
    	<div class="panel panel-success">
        	<div class="panel-heading" id="head">
            	<div class="row">
					<div class="col-xs-10 xol-lg-10" style="text-align:left;">
						技术供应列表
					</div>
					<div class="col-xs-2 col-lg-2">
						<a href="techsupplist.action">返回上一级</a>
					</div>
				</div>	
            </div>
            <div class="panel-body">           			          	
            	<div class="tab-content" style="margin-top:5px;">
				  <div class="" id="default">
				  	<table class="table table-striped">
	                	<thead>  
	        				<tr>  
	          					<th>主题</th>
	          					<th>发布人</th>                        
	          					<th>发布时间</th>
	          					<th>回复</th>
	        				</tr>  
	      				</thead>
	                    <tbody class="">
	                    	<c:if test="${!empty page.result}">
	 						<c:forEach items="${page.result}" var="techsupp" varStatus="stat"> 
	            			<tr>
	           					<td width="70%"><a href="techsuppdetail.action?id=${techsupp.id}&supplyerid=${techsupp.user.user_id}" class="active">提供&nbsp;${techsupp.tsName}技术</a></td>           			
	           					<td width="10%">${techsupp.user.user_name}</td>
	           					<td width="10%"><fmt:formatDate value="${techsupp.tsPubDate}"></fmt:formatDate></td>
	           					<td width="10%">${techsupp.recount}</td>           					
	            			</tr>
	            			</c:forEach>
			 				</c:if>
	                    </tbody>  
                	</table>
                	<c:if test="${empty page.result}">
		        		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
		            		<tr><td>没有数据！！！</td></tr>
		        		</table>
        			</c:if>
	        		<!--分页-->
	        		 <div class="listBox">         
				        <div class="page" style="background:none;">
				          <div class="pageBox">
				          <table border="0" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
				            <tr><td><c:if test="${!empty page.result}">${controlTable}</c:if></td></tr>
				          </table>
				          </div>
				        </div>
				     </div><!-- 分页结束 -->
				  </div>								 				  				 
				</div>
            </div>            
        </div>    
   		<div class="btnNew">
   			<button class="btn btn-default"><a href="<%=request.getContextPath()%>/infopublish/publish.action">发布信息,去个人空间</a></button>
   		</div>  
   </div>
</body>
</html>