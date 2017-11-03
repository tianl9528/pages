<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

 <% String base_root = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>信息服务 >> 人力资源</title>
<style type="text/css">
	.nav
	{
		background-color:#669999;
	}
	.nav-tabs {
	border-bottom: 1px solid #424242;
	}
	.nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus {
		color: #FFF;
		background-color: #669999;
		border: 1px solid #424242;
		border-bottom-color: rgba(0, 0, 0, 0);

	}
	.nav-tabs > li > a, .nav-tabs > li > a:hover, .nav-tabs > li > a:focus 
	{
		border-color:rgba(0, 0, 0 , 0);
		/* border-bottom: 1px solid #424242; */
		background-color:#669999;
	}
	.table > tbody > tr > th,.table > tbody > tr > td
	{
		border-top: 0px;
		border-bottom:1px solid #BEEC94;
	}
	.btn-success {
		background-color:#90B82A;
	}
	.btn-success:hover,btn-success:focus
	{
		background-color:#86AA29;
	}
	.hr a, .hr a:hover{
	color:#000;
	font-weight:bold;
	}
	#search{
		background-color:#669999;
	}
	#tip{
		padding:15px 30px;
		font-weight:500;
		background-color:#94C282;
	}
	#result{
		
	}

	</style>
</head>
    <body style="background-color:white"> 
	<div style="max-width:1007px;min-width:970px;margin:0 auto" class="hr">	
		
		<ul class="nav nav-tabs col-lg-3 col-xs-3">
			<li><div style="width:15px">&nbsp;</div></li>
			<li class="active"><a href="#tab1" data-toggle="tab">招聘信息</a></li>
			<li><a href="#tab2" data-toggle="tab">求职信息</a></li>
		</ul>
		<div class="col-lg-10 col-xs-10" style="padding:5px;">
			&nbsp;
		</div>
		
		<div class="tab-content">
			<div class="tab-pane active" id="tab1">
				<div id="search">
				<form class="form-horizontal" role="form">
					


					<div class="input-group col-lg-5 col-xs-5" style="padding:15px 15px 15px 30px;">						
						<span class="input-group-addon " style="background:url(<%=base_root%>/theme/images/infoservices/book.png) no-repeat center;background-color:#fff;width:30px"></span>
						<select class="form-control" style="border-left: 0;">
							<option>选择岗位</option>
							<option>收货员</option>
							<option>文员</option>
							<option>采购员</option>
							<option>基地生产主管</option>
							<option>行政专员</option>
							<option>木工</option>
							<option>销售员</option>
							<option>销售代表</option>
							<option>饲养员</option>
							<option>种植销售工程师</option>
							<option>瓦工</option>
							<option>水工</option>
							<option>电工</option>
						</select>

					</div>
					<div class="input-group col-lg-offset-6 col-xs-offset-6 col-lg-5 col-xs-5" style="margin-top:-50px">
						<span class="input-group-addon " style="background:url(<%=base_root%>/theme/images/infoservices/location.png) no-repeat center;background-color:#fff;width:30px"></span>
							<select class="form-control" style="border-left: 0;">
								<option>广州</option>
								<option>深圳</option>
								<option>韶关</option>
								<option>珠海</option>
								<option>汕头</option>
								<option>佛山</option>
								<option>江门</option>
								<option>湛江</option>
								<option>茂名</option>
								<option>肇庆</option>
								<option>惠州</option>
								<option>梅州</option>
								<option>汕尾</option>
								<option>河源</option>
								<option>阳江</option>
								<option>清远</option>
								<option>东莞</option>
								<option>中山</option>
								<option>潮州</option>
								<option>揭阳</option>
								<option>云浮</option>
								<option>南海区</option>

							</select>
					</div>
					
					<div class="form-group" style="padding:15px;margin:0">
						<div  class="col-lg-9 col-xs-9">
							<input type="text" class="form-control" placeholder="输入关键字">
						</div>
						<div class="col-lg-3 col-xs-3">
							<button type="sumbit" class="btn col-lg-3 col-xs-3" style="width:88px;font-weight:bold;box-shadow: 0 5px 10px rgba(0, 0, 0, 0.7);">搜索</button>
						</div>
					</div>
					
				</form>
				</div>
				<div id="result">
					<div id="tip">
						<span>共找到</span><span id="number">1000<span><span>个职位&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<span>地区</span><span id="address">广东广州</span>
					</div>
					<table class="table table-hover" style="padding-top:15px">
						<tr>
							<th>职位名称</th>
							<th>公司名称</th>
							<th>工作地区</th>
							<th>性别</th>
							<th>学历</th>
							<th>经验</th>
							<th>月薪</th>
							<th>更新时间</th>
						</tr>
						
						<tr>
							<td>收货员</td>
							<td>广州壹号厨房农业发展有限公司</td>
							<td>广州</td>
							<td>不限</td>
							<td>不限</td>
							<td>1年以上</td>
							<td>面议</td>
							<td>2014-05-04</td>							
						</tr>
						
						<tr>
							<td>招商总监</td>
							<td>利海农业科技</td>
							<td>广州</td>
							<td>不限</td>
							<td>本科</td>
							<td>5-10年</td>
							<td>面议</td>
							<td>2014-05-04</td>							
						</tr>
						
						<tr>
							<td>大客户销售代表</td>
							<td>广州新果农业科技有限公司</td>
							<td>广州</td>
							<td>女</td>
							<td>中专</td>
							<td>1-3年</td>
							<td>4001-6000</td>
							<td>2014-05-04</td>							
						</tr>
						
						<tr>
							<td>销售代表</td>
							<td>广州新果农业科技有限公司</td>
							<td>广州</td>
							<td>女</td>
							<td>中专</td>
							<td>不限</td>
							<td>2001-4000</td>
							<td>2014-05-04</td>							
						</tr>
						
						<tr>
							<td>基地生产总管</td>
							<td>江西安义从玉农业发展有限公司</td>
							<td>广州从化</td>
							<td>不限</td>
							<td>大专</td>
							<td>3年</td>
							<td>面议</td>
							<td>2014-05-05</td>							
						</tr>
						
						<tr>
							<td>行政专员</td>
							<td>茂名钜园农业有限公司</td>
							<td>茂名市</td>
							<td>不限</td>
							<td>高中</td>
							<td>不限</td>
							<td>面议</td>
							<td>2014-05-05</td>							
						</tr>
						
						<tr>
							<td>种植销售工程师</td>
							<td>深圳市幸福和庄农业科技发展有限公司</td>
							<td>广东省</td>
							<td>不限</td>
							<td>大专</td>
							<td>2年以上</td>
							<td>面议</td>
							<td>2014-05-05</td>							
						</tr>
					</table>
					
					<ul class="pagination pull-right">
						<li class="disabled"><a href="" style="cursor:pointer">&laquo;</a></li>
						<li class="active"><a href="">1 <span class="sr-only">(current)</span></a></li>
						<li><a href="">2</a></li>
						<li><a href="">3</a></li>
						<li><a href="">4</a></li>
						<li><a href="">5</a></li>
						<li><a href="">6</a></li>
						<li><a href="">7</a></li>
						<li><a href="">8</a></li>
						<li><a href="">&raquo;</a></li>
					</ul>
				
				</div>
			</div>
			
			<!-- 求职 -->
			<div class="tab-pane" id="tab2">
				<div id="search">
				<form class="form-horizontal" role="form">
					<div class="form-group" style="padding:15px;margin:0">
						<div  class="col-lg-9 col-xs-9">
							<input name="searchInput"  type="text" class="form-control" placeholder="输入关键字">
						</div>
						<div class="col-lg-3 col-xs-3">
							<button type="sumbit" class="btn col-lg-3 col-xs-3" style="width:88px;font-weight:bold;box-shadow: 0 5px 10px rgba(0, 0, 0, 0.7);">搜索</button>
						</div>
					</div>


					<div class="input-group col-lg-5 col-xs-5" style="padding:15px 15px 15px 30px;">						
						<span class="input-group-addon " style="background:url(<%=base_root%>/theme/images/infoservices/book.png) no-repeat center;background-color:#fff;width:30px"></span>
						<select class="form-control" style="border-left: 0;">
							<option>选择岗位</option>
							<option>收货员</option>
							<option>文员</option>
							<option>采购员</option>
							<option>基地生产主管</option>
							<option>行政专员</option>
							<option>木工</option>
							<option>销售员</option>
							<option>销售代表</option>
							<option>饲养员</option>
							<option>种植销售工程师</option>
							<option>瓦工</option>
							<option>水工</option>
							<option>电工</option>
						</select>

					</div>
					<div class="input-group col-lg-offset-6 col-xs-offset-6 col-lg-5 col-xs-5" style="margin-top:-50px">
						<span class="input-group-addon " style="background:url(<%=base_root%>/theme/images/infoservices/location.png) no-repeat center;background-color:#fff;width:30px"></span>
							<select class="form-control" style="border-left: 0;">
								<option>广州</option>
								<option>深圳</option>
								<option>韶关</option>
								<option>珠海</option>
								<option>汕头</option>
								<option>佛山</option>
								<option>江门</option>
								<option>湛江</option>
								<option>茂名</option>
								<option>肇庆</option>
								<option>惠州</option>
								<option>梅州</option>
								<option>汕尾</option>
								<option>河源</option>
								<option>阳江</option>
								<option>清远</option>
								<option>东莞</option>
								<option>中山</option>
								<option>潮州</option>
								<option>揭阳</option>
								<option>云浮</option>
								<option>南海区</option>

							</select>
					</div>
					
					
					<div class="input-group col-lg-5 col-xs-5" style="padding:30px 15px 15px 30px;">						
						<span class="input-group-addon " style="background:url(<%=base_root%>/theme/images/infoservices/link.png) no-repeat center;background-color:#fff;width:30px"></span>
						<select class="form-control" style="border-left: 0;">
							<option>工作年限</option>
							<option>不限</option>
							<option>无经验</option>
							<option>在读学生</option>
							<option>应届毕业生</option>
							<option>1年以内</option>
							<option>1-2年</option>
							<option>2-3年</option>
							<option>3-5年</option>
						</select>

					</div>
					<div class="input-group col-lg-offset-6 col-xs-offset-6 col-lg-5 col-xs-5" style="margin-top:-50px">
						<span class="input-group-addon " style="background:url(<%=base_root%>/theme/images/infoservices/options.png) no-repeat center;background-color:#fff;width:30px"></span>
							<select class="form-control" style="border-left: 0;">
								<option>年龄区间</option>
								<option>16-20</option>
								<option>21-25</option>
								<option>26-30</option>
								<option>31-40</option>
								<option>41-50</option>
								<option>51岁以上</option>

							</select>
					</div>
					
				</form>
				</div>
				<div id="result">
					<div id="tip">
						<span>共找到</span><span id="number">1000<span><span>个职位&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<span>地区</span><span id="address">广东广州</span>
					</div>
					
					
					<div class="listBox">
        
        <div class="list" style="width:957px;">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr>
              <td width="150">求职职位</td>
              
              <td width="80">姓名</td>
              <td width="50">性别</td>
               <td width="100">工作地区</td>
              
              <td width="100">学历</td>
              <td width="170">期望月薪</td>
              <td width="170">更新时间</td>
              <td width="170">联系电话</td>
            </tr>
          </table>
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
          <c:if test="${!empty page.result}">
 			<c:forEach items="${page.result}" var="sjl" varStatus="stat"> 
            <tr class="<c:if test="${stat.count%2==1}">colorGrey</c:if><c:if test="${stat.count%2==0}">colorwhite</c:if>">
           
           <td  width="150">${sjl.expjob}</td>
           <td  width="80">${sjl.user.user_name}</td> 	
          
           <td  width="50">${sjl.user.sex}</td>
           
           <td  width="100" >广东</td>
           <td width="170">${sjl.appdegree}</td>
           <td  width="170">${sjl.expsalary}</td>
           <td  width="170"><fmt:formatDate value='${sjl.apppubdate }'
										pattern='yyyy-MM-dd'></fmt:formatDate></td>
			<td width="170">${sjl.appmobile}</td>
            </tr>
            </c:forEach>
		 </c:if>     
          </table>
        
        <c:if test="${empty page.result}">
        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr><td>没有数据！！！</td></tr>
        </table>
        </c:if>
  </div>

<!--分页-->         
        <div class="page">
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
  </body>
</html>