<%@ page contentType="text/html; charset=utf-8" %>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
String base_root = request.getContextPath();
%>
<title>人才培训 >> 学习资源</title>

<script>
$(document).ready(function(){
$(' .resource li >a ').click(function(e)
{
	e.preventDefault();
	var lis=$('.resource li');
	lis.removeClass('active');
});
});
</script>
<style type="text/css">
.panel-body > .table > tbody > tr > td
{
border-top:0px;border-bottom:1px solid #BEEC94;
}
.btn-success {
	background-color:#90B82A;
}
.btn-success:hover,btn-success:focus
{
	background-color:#86AA29;
}
.resource .typemenu a{
color:#000;

}
.resource .typemenu a:hover {
color: #ff8127;
}
.resource .tab-content a{
color:#4e5b2c;
font-weight:bold;
}

.resource li{
	 list-style-type:disc;
}
</style>
</head>
<body>
  <div class="row" style="max-width:1007px;min-width:820px;margin:15px 7px">
<!-- 
	<div class="input-group col-lg-5 col-xs-5 col-lg-offset-7 col-xs-offset-7" style="margin-bottom:15px">
		<input type="text" class="form-control">
		<span class="input-group-btn">
			<button type="button" class="btn btn-success" style="width:88px">搜索</button>
		</span>
	</div>
	 -->
	<div class="col-lg-3 col-xs-3 resource" style="padding-left:0">
		<div class="panel panel-default">
			<div class="panel-heading myFont15" >
				课件分类
			</div>
			<div class="panel-body typemenu" style="padding: 0;">
				
				<ul class="col-lg-7 col-xs-7 " style="padding:7px;padding-left:30px;">
					<li><a href="#tab1" data-toggle="tab">粮食作物</a></li>
					<li><a href="#tab2" data-toggle="tab">经济作物</a></li>
					<li><a href="#tab3" data-toggle="tab">蔬菜栽培</a></li>
					<li><a href="#tab4" data-toggle="tab">果树栽培</a></li>
					<li><a href="#tab5" data-toggle="tab">花卉园艺</a></li>
					<li><a href="#tab6" data-toggle="tab">水产养殖</a></li>
					
					<li><a href="#tab14" data-toggle="tab">中草药栽培</a></li>
					<li><a href="#tab15" data-toggle="tab">食用菌栽培</a></li>
					<li><a href="#tab16" data-toggle="tab">特种动物养殖</a></li>
					<li><a href="#tab17" data-toggle="tab">土肥水管理</a></li>
					<li><a href="#tab18" data-toggle="tab">食品加工</a></li>
					<li><a href="#tab19" data-toggle="tab">服装制作</a></li>
					<li><a href="#tab20" data-toggle="tab">工艺品制作</a></li>
					<li><a href="#tab21" data-toggle="tab">建筑装修</a></li>
					<li><a href="#tab22" data-toggle="tab">家政社区服务</a></li>
					<li><a href="#tab23" data-toggle="tab">家电维修</a></li>
					
					<li><a href="#tab25" data-toggle="tab">餐饮宾馆服务</a></li>
					<li><a href="#tab26" data-toggle="tab">美容美发保健</a></li>
					<li><a href="#tab27" data-toggle="tab">计算机技术</a></li>
					
					<li><a href="#tab34" data-toggle="tab">中等职业教育</a></li>
					<li><a href="#tab35" data-toggle="tab">中专继续教育</a></li>
					<li><a href="#tab36" data-toggle="tab">农科讲堂</a></li>
					
				</ul>
				<ul class="col-lg-5 col-xs-5" style="padding:7px;padding-left:15px;">
					<li><a href="#tab7" data-toggle="tab">家畜养殖</a></li>
					<li><a href="#tab8" data-toggle="tab">家禽饲养</a></li>
					<li><a href="#tab9" data-toggle="tab">畜牧兽医</a></li>
					<li><a href="#tab10" data-toggle="tab">储藏加工</a></li>
					<li><a href="#tab11" data-toggle="tab">防灾减灾</a></li>
					<li><a href="#tab12" data-toggle="tab">农业机械</a></li>
					<li><a href="#tab13" data-toggle="tab">能源生态</a></li>
					
					<li><a href="#tab28" data-toggle="tab">风味小吃</a></li>
					<li><a href="#tab29" data-toggle="tab">卫生健康</a></li>
					<li><a href="#tab30" data-toggle="tab">家居生活</a></li>
					<li><a href="#tab31" data-toggle="tab">宠物饲养</a></li>
					<li><a href="#tab32" data-toggle="tab">经营管理</a></li>
					<li><a href="#tab33" data-toggle="tab">政策法规</a></li>
				</ul>
				
			</div>
		</div>
	</div>
	
	<div class="col-lg-9 col-xs-9 resource" style="padding:0">
		<div class="tab-content">
			<div class="tab-pane active" id="tab1"><!--粮食作物-->	
				<div class="panel panel-default" style="padding:0;">
				<!--  						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
				-->
				<div class="panel panel-heading" >
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11 myFont15" >
										粮食作物
								</td>								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
						<tr>
							<td class="col-lg-6 col-xs-6">
								<div class="col-lg-6 col-xs-6" style="padding:0;">
									<img src="<%=base_root%>/theme/images/trainimg/1.jpg" style="height:120px;"/>
								</div>
								<div class="col-lg-6 col-xs-6" style="padding:0;">
				
									<a href="http://1.202.195.201/Resources/coursewares/822/content.htm" target="_blank" style="font-weight:bold;">马铃薯、玉米、芸豆三种三收栽培技术</a><br/>
									<span class="text-muted">分类：</span><span>粮食作物</span><br/>
									<span class="text-muted">节目来源：</span><span>中央农广校</span><br/>
									<span class="text-muted">制作时间：</span><span>2013-08-01</span><br/>
									<a class="btn btn-success" href="http://1.202.195.201/Resources/coursewares/822/content.htm" target="_blank" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
								</div>
							</td>
							<td class="col-lg-6 col-xs-6">
								<div class="col-lg-6 col-xs-6" style="padding:0;">
									<img src="<%=base_root%>/theme/images/trainimg/2.jpg" style="height:120px;"/>
								</div>
								<div class="col-lg-6 col-xs-6" style="padding:0;">
									<div style="hegiht:36px;"><a href="http://1.202.195.201/Resources/coursewares/743/content.htm"  target="_blank" style="font-weight:bold;">夏红薯栽培技术</a></div><br/>
									<span class="text-muted">分类：</span><span>粮食作物</span><br/>
									<span class="text-muted">节目来源：</span><span>农广校</span><br/>
									<span class="text-muted">制作时间：</span><span>2013-04-03</span><br/>
									<a class="btn btn-success" href="http://1.202.195.201/Resources/coursewares/743/content.htm"  target="_blank" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
								</div>
							</td>
						</tr>
						
						<tr>
							<td class="col-lg-6 col-xs-6">
								<div class="col-lg-6 col-xs-6" style="padding:0;">
									<img src="<%=base_root%>/theme/images/trainimg/3.jpg" style="height:120px;"/>
								</div>
								<div class="col-lg-6 col-xs-6" style="padding:0;">
									<div style="hegiht:36px;"><a href="http://1.202.195.201/Resources/coursewares/673/content.htm"  target="_blank"  style="font-weight:bold">脱毒甘薯栽培技术</a></div><br/>
									<span class="text-muted">分类：</span><span>粮食作物</span><br/>
									<span class="text-muted">节目来源：</span><span>中央农广校</span><br/>
									<span class="text-muted">制作时间：</span><span>2012-07-03</span><br/>
									<a class="btn btn-success" href="http://1.202.195.201/Resources/coursewares/673/content.htm"  target="_blank"  style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
								</div>
							</td>
							<td class="col-lg-6 col-xs-6">
								<div class="col-lg-6 col-xs-6" style="padding:0;">
									<img src="<%=base_root%>/theme/images/trainimg/4.jpg" style="height:120px;"/>
								</div>
								<div class="col-lg-6 col-xs-6" style="padding:0;">
									<div style="hegiht:36px;"><a href="http://1.202.195.201/Resources/coursewares/649/content.htm"  target="_blank"  style="font-weight:bold">蒙金谷一号种植技术</a></div><br/>
									<span class="text-muted">分类：</span><span>粮食作物</span><br/>
									<span class="text-muted">节目来源：</span><span>中央农广校</span><br/>
									<span class="text-muted">制作时间：</span><span>2012-06-11</span><br/>
									<a class="btn btn-success" href="http://1.202.195.201/Resources/coursewares/649/content.htm"  target="_blank"  style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
								</div>
							</td>
						</tr>
						
						<tr>
							<td class="col-lg-6 col-xs-6">
								<div class="col-lg-6 col-xs-6" style="padding:0;">
									<img src="<%=base_root%>/theme/images/trainimg/5.jpg" style="height:120px;"/>
								</div>
								<div class="col-lg-6 col-xs-6" style="padding:0;">
									<a href="http://1.202.195.201/Resources/coursewares/1001/content.htm"  target="_blank"  style="font-weight:bold">夏玉米“一穴三株”高产栽培技术</a><br/>
									<span class="text-muted">分类：</span><span>粮食作物</span><br/>
									<span class="text-muted">节目来源：</span><span>中央农广校</span><br/>
									<span class="text-muted">制作时间：</span><span>2014-03-19</span><br/>
									<a class="btn btn-success" href="http://1.202.195.201/Resources/coursewares/1001/content.htm"  target="_blank"  style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
								</div>
							</td>
							<td class="col-lg-6 col-xs-6">
								<div class="col-lg-6 col-xs-6" style="padding:0;">
									<img src="<%=base_root%>/theme/images/trainimg/6.jpg" style="height:120px;"/>
								</div>
								<div class="col-lg-6 col-xs-6" style="padding:0;">
									<div style="hegiht:36px;"><a href="http://1.202.195.201/Resources/coursewares/1005/content.htm"  target="_blank"  style="font-weight:bold">杂交水稻制种技术</a></div><br/>
									<span class="text-muted">分类：</span><span>粮食作物</span><br/>
									<span class="text-muted">节目来源：</span><span>中央农广校</span><br/>
									<span class="text-muted">制作时间：</span><span>2014-03-19</span><br/>
									<a class="btn btn-success" href="http://1.202.195.201/Resources/coursewares/1005/content.htm"  target="_blank"  style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
								</div>
							</td>
						</tr>
						
						
						
					
						
						</table>
						<div>提示:请在兼容模式下观看视频！！！</div>
						
					</div>
				
				</div>
				
			</div><!--粮食作物-->
		
			<div class="tab-pane" id="tab2"><!--经济作物-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>经济作物</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--经济作物-->
		
			<div class="tab-pane" id="tab3"><!--蔬菜栽培-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>蔬菜栽培</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--蔬菜栽培-->
		
			<div class="tab-pane" id="tab4"><!--果树栽培-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>果树栽培</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--果树栽培-->
		
			<div class="tab-pane" id="tab5"><!--花卉园艺-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>花卉园艺</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--花卉园艺-->
		
			<div class="tab-pane" id="tab6"><!--水产养殖-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>水产养殖</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--水产养殖-->	
		
			<div class="tab-pane" id="tab7"><!--家畜养殖-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>家畜养殖</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--家畜养殖-->
		
			<div class="tab-pane" id="tab8"><!--家禽饲养-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>家禽饲养</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--家禽饲养-->
		
			<div class="tab-pane" id="tab9"><!--畜牧兽医-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>畜牧兽医</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--畜牧兽医-->
		
			<div class="tab-pane" id="tab10"><!--储藏加工-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>储藏加工</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--储藏加工-->
		
			<div class="tab-pane" id="tab11"><!--防灾减灾-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>防灾减灾</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--防灾减灾-->
		
			<div class="tab-pane" id="tab12"><!--农业机械-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>农业机械</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--农业机械-->
		
			<div class="tab-pane" id="tab13"><!--能源生态-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>能源生态</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--能源生态-->
		
			<div class="tab-pane" id="tab14"><!--中草药栽培-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>中草药栽培</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--中草药栽培-->
		
			<div class="tab-pane" id="tab15"><!--食用菌栽培-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>食用菌栽培</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--食用菌栽培-->
		
			<div class="tab-pane" id="tab16"><!--特种动物养殖-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>特种动物养殖</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--特种动物养殖-->
		
			<div class="tab-pane" id="tab17"><!--土肥水管理-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>土肥水管理</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--土肥水管理-->
		
			<div class="tab-pane" id="tab18"><!--食品加工-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>食品加工</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--食品加工-->
		
			<div class="tab-pane" id="tab19"><!--服装制作-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>服装制作</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--服装制作-->
		
			<div class="tab-pane" id="tab20"><!--工艺品制作-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>工艺品制作</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--工艺品制作-->
		
			<div class="tab-pane" id="tab21"><!--建筑装修-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>建筑装修</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--建筑装修-->
		
			<div class="tab-pane" id="tab22"><!--家政社区服务-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>家政社区服务</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--家政社区服务-->
		
			<div class="tab-pane" id="tab23"><!--机电、家电维修-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>机电、家电维修</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--机电、家电维修-->
		
			<div class="tab-pane" id="tab24"><!--机动车维修保养-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>机动车维修保养</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--机动车维修保养-->
		
			<div class="tab-pane" id="tab25"><!--餐饮宾馆服务-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>餐饮宾馆服务</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--餐饮宾馆服务-->
		
			<div class="tab-pane" id="tab26"><!--美容美发保健-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>美容美发保健</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--美容美发保健-->
		
			<div class="tab-pane" id="tab27"><!--计算机、数码技术-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>计算机、数码技术</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--计算机、数码技术-->
		
			<div class="tab-pane" id="tab28"><!--风味小吃-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>风味小吃</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--风味小吃-->
		
			<div class="tab-pane" id="tab29"><!--卫生健康-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>卫生健康</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--卫生健康-->
		
			<div class="tab-pane" id="tab30"><!--家居生活-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>家居生活</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--家居生活-->
		
			<div class="tab-pane" id="tab31"><!--宠物饲养-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>宠物饲养</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--宠物饲养-->
		
			<div class="tab-pane" id="tab32"><!--经营管理-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>经营管理</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--经营管理-->
		
			<div class="tab-pane" id="tab33"><!--政策法规-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>政策法规</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--政策法规-->
		
			<div class="tab-pane" id="tab34"><!--中等职业教育-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>中等职业教育</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--中等职业教育-->
		
			<div class="tab-pane" id="tab35"><!--中专后继续教育-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>中专后继续教育</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--中专后继续教育-->
		
			<div class="tab-pane" id="tab36"><!--农科讲堂-->	
				<div class="panel panel-default" style="padding:0;">						
					<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
						<table class="table" style="margin:0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top:0;">
									<div style="padding-left:15px;">
										<b>农科讲堂</b>
									</div>
								</td>
								
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding:5px 15px">
						<table class="table " style="margin:0">
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
							
							<tr>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
								<td class="col-lg-6 col-xs-6">
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<img src="" style="height:120px;"/>
									</div>
									<div class="col-lg-6 col-xs-6" style="padding:0;">
										<div style="hegiht:36px;"><a href="" style="font-weight:bold">&nbsp;</a></div><br/>
										<span class="text-muted">分类：</span><span>&nbsp;</span><br/>
										<span class="text-muted">节目来源：</span><span>&nbsp;</span><br/>
										<span class="text-muted">制作时间：</span><span>&nbsp;</span><br/>
										<a class="btn btn-success" href="" style="padding:1px 7px;margin:0 2px"><img src="<%=base_root%>/theme/images/trainimg/study.png"/><span style="margin-left:7px;color:white">学习</span></a>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
				</div>
			</div><!--农科讲堂-->
		
			
		</div>
  </div>
</body>
</html>
