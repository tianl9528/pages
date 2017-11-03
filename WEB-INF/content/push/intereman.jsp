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
<title>兴趣标签管理</title>

</head>
<body> 
	<div style="max-width:1000px;min-width:970px;margin:0 auto">
    	<div class="panel panel-success">
        	<div class="panel-heading" id="head">
            	<div class="row">
					<div class="col-xs-10 xol-lg-10" style="text-align:left;">
						全部兴趣标签
					</div>
					<div class="col-xs-2 xol-lg-2">
						<span class="label label-info"><a href="intereadd.action">新增</a></span>
					</div>
				</div>	
            </div>
            <div class="panel-body">
				<div class="tab-content" style="margin-top:5px;">
				<c:if test="${!empty intereList}">
	            	<table class="table table-striped">
	                	<thead>  
	        				<tr>  
	          					<th>名称</th>                      
	          					<th>描述</th>
	          					<th>操作</th> 
	        				</tr>  
	      				</thead>
	                    <tbody class="">
	 						<c:forEach items="${intereList}" var="intere" varStatus="stat"> 
	            			<tr>
	           					<td width="10%">${intere.name}</td>           			
	           					<td width="80%">${intere.descri}</td>
	           					<td width="10%"><a href="#">编辑</a></td>     					
	            			</tr>
	            			</c:forEach>
	                    </tbody>  
	                </table>
	                </c:if>
	                <c:if test="${empty intereList}">
	        		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
	            		<tr><td>没有数据！！！</td></tr>
	        		</table>
	        		</c:if>	
	          </div>
            </div>            
        </div>    
   </div>
</body>
</html>