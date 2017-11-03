<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String base_root = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<%=request.getContextPath()%>/theme/css/base/jquery.ui.all.css" rel="stylesheet">
<title>特色农产品</title>

</head>
<body> 
	<div style="max-width:1007px;min-width:970px;margin:0 auto">
    	<div class="panel panel-success">
        	<div class="panel-heading" id="head">
            	<div class="row">
					<div class="col-xs-10 xol-lg-10" style="text-align:left;">
						特色农产品列表
					</div>
					<div class="col-xs-2 xol-lg-2">
						<span class="label label-info"><a href="chagpradd.action">新增</a></span>
					</div>
				</div>	
            </div>
            <div class="panel-body">
				<div class="tab-content" style="margin-top:5px;">
				<c:if test="${!empty page_chagpr.result}">
	            	<table class="table table-striped">
	                	<thead>  
	        				<tr>  
	          					<th>名称</th>
	          					<th>专业镇</th>                        
	          					<th>类型</th>
	          					<th>操作</th> 
	        				</tr>  
	      				</thead>
	                    <tbody class="">
	 						<c:forEach items="${page_chagpr.result}" var="chagpr" varStatus="stat"> 
	            			<tr>
	           					<td width="10%"><a href="chagprdetail.action?chagpr_id=${chagpr.id}" class="active">${chagpr.agriname}</a></td>           			
	           					<td width="10%">${chagpr.agritown}</td>
	           					<td width="10%">${chagpr.agritype }</td>
	           					<td width="30%">编辑</td>     					
	            			</tr>
	            			</c:forEach>
			 				     
	                    </tbody>  
	                </table>
	                </c:if>
	                <c:if test="${empty page_chagpr.result}">
	        		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
	            		<tr><td>没有数据！！！</td></tr>
	        		</table>
	        		</c:if>
	        		<!--分页-->
	        		 <div class="listBox">         
				        <div class="page" style="background:none;">
				          <div class="pageBox">
				          <table border="0" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
				            <tr><td><c:if test="${!empty page_chagpr.result}">${ct_chagpr}</c:if></td></tr>
				          </table>
				          </div>
				        </div>
				     </div><!-- 分页结束 -->   	
	          </div>
            </div>            
        </div>    
   </div>
</body>
</html>