<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html> 
<html lang="en"> 
<head> 
<meta charset="utf-8"> 
<title>农业要闻</title>
</head>
<body>
<div style="width:1000px;">
	<div class="row">
		<div class="col-lg-10 col-xs-10">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="panel-body">
						<c:if test="${!empty page_nyyw.result}">
							<table class="table table-striped">
			                    <tbody class="">
			 						<c:forEach items="${page_nyyw.result}" var="nyyw" varStatus="stat"> 
			            			<tr>
			           					<td><a href="aidetail.action?id=${nyyw.id}" class="active">${nyyw.aititle}</a></td>           			
			           					<td><fmt:formatDate value="${nyyw.aidate}"></fmt:formatDate></td>
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
				</div>
			</div>
		</div>
		<!-- 
		<div class="col-lg-3 col-xs-3" style="margin-left:-14px;">
			<div class="panel panel-default">
				<div class="panel-body">
				
				</div>
			</div>
		</div>
		 -->
	</div>
</div>
</body>
</html>