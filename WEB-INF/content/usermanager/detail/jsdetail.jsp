<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String base_root = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>发布信息管理>>个人求职-详细</title>

</head>
<body> 
	<div style="max-width:1007px;min-width:970px;margin:0 auto">
		<div class="panel panel-default">
			<div class="panel-heading"
				style="background: #99CC00; padding: 5px 5px 5px 10px; font-size: 20px; color: white; height: 30px">				
				<div class="row">
					<div class="col-xs-10 xol-lg-10" style="text-align:left;">
						个人求职>>详细
					</div>
					<div class="col-xs-2 col-lg-2">
						
					</div>
				</div>	
			</div>
			<div class="panel-body" style="padding: 10px;">
				<div class="col-xs-8 col-lg-8" style="margin-top:5px;">
					<table class="table">
						<tbody>
							<tr>
								<td>姓名</td><td>${jobseek.applyername}</td>				
							</tr>
							<tr>
								<td>学历</td><td>${jobseek.appdegree}</td>
							</tr>
							<tr>
								<td>专业</td><td>${jobseek.appmajor}</td>
							</tr>
							<tr>
								<td>毕业院校</td><td>${jobseek.appschool}</td>
							</tr>
							<tr>
								<td>求职岗位</td><td>${jobseek.expjob}</td>
							</tr>
							<tr>
								<td>期待的待遇</td><td>${jobseek.expsalary}</td>
							</tr>
							<tr>
								<td>现居地址</td><td>${jobseek.appaddress}</td>
							</tr>
							<tr>
								<td>手机号</td><td>${jobseek.appmobile}</td>
							</tr>
							<tr>
								<td>联系人邮箱</td><td>${jobseek.appemail}</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-xs-4 col-lg-4">
					<img src="<%=request.getContextPath()%>/theme/image/default/person.png"
						alt="..." class="img-thumbnail img-box">
				</div>
			</div>
		</div><!--panel panel-default-->
		<div class="panel panel-default">
			<div class="panel-heading" style="height: 30px; background: #99CC00;"><h5 style="margin-top:1px; text-align:left;">回复</h5></div>
			<div class="panel-body">
				<table class="table table-striped">
                	<thead>  
        				<tr>  
          					<th>内容</th>
          					<th>回复人</th>                        
          					<th>回复时间</th>
          					<th>操作</th>          					 
        				</tr>  
      				</thead>
                    <tbody class="">
                    	<c:if test="${!empty page.result}">
 						<c:forEach items="${page.result}" var="infore" varStatus="stat"> 
            			<tr>
           					<td width="80%">${infore.reContent }</td>           			
           					<td width="10%">${infore.user.user_name}</td>
           					<td width="10%"><fmt:formatDate value="${infore.reDate}"></fmt:formatDate></td>
           					<td width="10%"><a href="<%=base_root%>/infopublish/inforedel.action?id=${infore.id}" onClick="return confirm('确定删除此条记录吗？')">删除</a></td>           					
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
</body>
</html>