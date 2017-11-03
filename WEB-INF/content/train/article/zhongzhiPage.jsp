<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<% String base_root = request.getContextPath() ;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>人才培训 >> 技术培训 >> 种植技术</title>
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
.post-image
{
	margin:7px;
}
.zhongzhi a{
color:#4e5b2c;
font-weight:bold;
}
</style>
</head>
<body>
  <div class="row zhongzhi" style="max-width:1007px;min-width:820px;margin:15px">

	<div class="input-group col-lg-5 col-xs-5 col-lg-offset-7 col-xs-offset-7" style="margin-bottom:15px">
		<input type="text" class="form-control">
		<span class="input-group-btn">
			<button type="button" class="btn btn-success" style="width:88px">搜索</button>
		</span>
	</div>
	
	<div class="col-lg-4 col-xs-4" style="padding-left:0;" >
		<div class="panel panel-default" >
			<div class="panel-heading" style="text-align:center;background-color:white">
				<img src="<%=base_root %>/theme/images/trainimg/zhongzhi0_1.jpg" style="width:285px"/>
				<p style="font-weight:bold;margin:15px 0 4px;">水稻种植专题</p>
			</div>
			<div class="panel-body">
				<p>&nbsp;&nbsp;&nbsp;&nbsp;水稻是我国最主要的粮食作物之一，全国65%以上人口以稻米为主食，本专题围绕水稻的高产栽培、病虫害防治、以及贮藏加工等技术，为广大农业生产者提供科学技术支持。</p>
			</div>
		</div>
	</div>
	
	<div class="col-lg-8 col-xs-8" style="padding:0" >
		<div class="panel panel-default" >
		<!--  
			<div class="panel-heading" style="background:url(<%=base_root %>/theme/images/detectimg/bar.png);">
		-->		
			<div class="panel-heading" style="background-color:#A8CBF2">
				<span style="font-weight:bold">实用技术</span>
			</div>
			<div class="panel-body">
				<div class="col-lg-4 col-xs-4">
					<img src="<%=base_root %>/theme/images/trainimg/zhongzhi9_1.jpg" style="width:140px;"/>
					<p style="text-align:center;width:140px;">水稻插秧机的选购、使用与维护</p>
					<img src="<%=base_root %>/theme/images/trainimg/zhongzhi10_1.jpg" style="width:140px;"/>
					<p style="text-align:center;width:140px;">我国有哪些水稻种植季节？</p>
					<img src="<%=base_root %>/theme/images/trainimg/zhongzhi11_1.jpg" style="width:140px;"/>
					<p style="text-align:center;width:140px;">绿色水稻生产要求</p>
				</div>
				<div class="col-lg-7 col-xs-7">
					<ul style="padding-left:0;">
						<li style="padding:0 0 7px "><a href="tectPage1.action" target="_blank">超级水稻播种盖膜</a></li>
						<li style="padding:0 0 7px"><a href="tectPage2.action" target="_blank">如何防治水稻烂秧</a></li>
						<li style="padding:0 0 7px"><a href="tectPage3.action" target="_blank">水稻黑条矮缩病</a></li>
						<li style="padding:0 0 7px"><a href="tectPage4.action" target="_blank">如何育出高产水稻苗</a></li>
						<li style="padding:0 0 7px"><a href="tectPage5.action" target="_blank">水稻受灾后的补救措施</a></li>
						<li style="padding:0 0 7px"><a href="tectPage6.action" target="_blank">水稻小矮棵怎样防治？</a></li>
						<li style="padding:0 0 7px"><a href="tectPage7.action" target="_blank">水稻颖壳出现褐斑的原因</a></li>
						<li style="padding:0 0 7px"><a href="tectPage8.action" target="_blank">水稻机械化插秧关键技术</a></li>
						<li style="padding:0 0 7px"><a href="" target="_blank">无公害水稻生产具体要求</a></li>
						<li style="padding:0 0 7px"><a href="" target="_blank">水稻安全生产中管理技术</a></li>
						<li style="padding:0 0 7px"><a href="" target="_blank">水稻种植机械化技术的内容</a></li>
						<li style="padding:0 0 7px"><a href="" target="_blank">水稻稻壳育秧技术</a></li>
						<li style="padding:0 0 7px"><a href="" target="_blank">绿色优质水稻生产的环境要求</a></li>
						<li style="padding:0 0 7px"><a href="" target="_blank">水稻安全生产中壮苗育秧技术</a></li>
						<li style="padding:0 0 7px"><a href="" target="_blank">无公害水稻生产的具体要求</a></li>
						
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-12 col-xs-12" style="padding:0;" >
		<div id="carousel-captions" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="item active">
					<div class="row" style="padding:0 15px 0 20px;"><!--第一组图片-->
						<div class="col-xs-3 col-lg-3" style="padding:0 5px 0 0;"><!--第一张图片-->
							 <div class="panel" style="padding:0;margin:5px 0 5px 0; ">
								<div class="subfeature">
									<div class="thumbnail" style="margin:7px;">
										<a href="tectPage1.action" target="_blank"><img src="<%=base_root %>/theme/images/trainimg/zhongzhi1_1.jpg"  class="post-image"  /></a>
										<p class="text-center"  style="margin:5px;">
											<a href="tectPage1.action" target="_blank">超级水稻播种盖膜</a>
										</p>
									</div>
								</div>
							</div>
						</div><!--第一张图片-->
						<div class="col-xs-3 col-lg-3" style="padding:0 5px 0 0;"><!--第二张图片-->
							 <div class="panel" style="padding:0;margin:5px 0 5px 0; ">
								<div class="subfeature">
									<div class="thumbnail" style="margin:7px;">
										<a href="tectPage2.action" target="_blank"><img src="<%=base_root %>/theme/images/trainimg/zhongzhi2_1.jpg"  class="post-image"  /></a>
										<p class="text-center"  style="margin:5px;">
											<a href="tectPage2.action" target="_blank">如何防治水稻烂秧</a>
										</p>
									</div>
								</div>
							</div>
						</div><!--第二张图片-->
						<div class="col-xs-3 col-lg-3" style="padding:0 5px 0 0;"><!--第三张图片-->
							 <div class="panel" style="padding:0;margin:5px 0 5px 0; ">
								<div class="subfeature">
									<div class="thumbnail" style="margin:7px;">
										<a href="tectPage3.action" target="_blank"><img src="<%=base_root %>/theme/images/trainimg/zhongzhi3_1.jpg"  class="post-image"  /></a>
										<p class="text-center"  style="margin:5px;">
											<a href="tectPage3.action" target="_blank">水稻黑条矮缩病</a>
										</p>
									</div>
								</div>
							</div>
						</div><!--第三张图片-->
						<div class="col-xs-3 col-lg-3" style="padding:0 5px 0 0;"><!--第四张图片-->
							 <div class="panel" style="padding:0;margin:5px 0 5px 0; ">
								<div class="subfeature">
									<div class="thumbnail" style="margin:7px;">
										<a href="tectPage4.action" target="_blank"><img src="<%=base_root %>/theme/images/trainimg/zhongzhi4_1.jpg"  class="post-image"  /></a>
										<p class="text-center"  style="margin:5px;">
											<a href="tectPage4.action" target="_blank">如何育出高产水稻苗</a>
										</p>
									</div>
								</div>
							</div>
						</div><!--第四张图片-->
					</div>
				</div>
				<div class="item"><!--第二组图片-->
					<div class="row" style="padding:0 15px 0 20px;"><!--第二组图片-->
						<div class="col-xs-3 col-lg-3" style="padding:0 5px 0 0;"><!--第一张图片-->
							 <div class="panel" style="padding:0;margin:5px 0 5px 0; ">
								<div class="subfeature">
									<div class="thumbnail" style="margin:7px;">
										<a href="tectPage5.action" target="_blank"><img src="<%=base_root %>/theme/images/trainimg/zhongzhi5_1.jpg"  class="post-image"  /></a>
										<p class="text-center"  style="margin:5px;">
											<a href="tectPage5.action" target="_blank">水稻受灾后的补救措施</a>
										</p>
									</div>
								</div>
							</div>
						</div><!--第一张图片-->
						<div class="col-xs-3 col-lg-3" style="padding:0 5px 0 0;"><!--第二张图片-->
							 <div class="panel" style="padding:0;margin:5px 0 5px 0; ">
								<div class="subfeature">
									<div class="thumbnail" style="margin:7px;">
										<a href="tectPage6.action" target="_blank"><img src="<%=base_root %>/theme/images/trainimg/zhongzhi6_1.jpg"  class="post-image"  /></a>
										<p class="text-center"  style="margin:5px;">
											<a href="tectPage6.action" target="_blank">水稻小矮棵怎样防治？</a>
										</p>
									</div>
								</div>
							</div>
						</div><!--第二张图片-->
						<div class="col-xs-3 col-lg-3" style="padding:0 5px 0 0;"><!--第三张图片-->
							 <div class="panel" style="padding:0;margin:5px 0 5px 0; ">
								<div class="subfeature">
									<div class="thumbnail" style="margin:7px;">
										<a href="tectPage7.action" target="_blank"><img src="<%=base_root %>/theme/images/trainimg/zhongzhi7_1.jpg"  class="post-image"  /></a>
										<p class="text-center"  style="margin:5px;">
											<a href="tectPage7.action" target="_blank">水稻颖壳出现褐斑的原因</a>
										</p>
									</div>
								</div>
							</div>
						</div><!--第三张图片-->
						<div class="col-xs-3 col-lg-3" style="padding:0 5px 0 0;"><!--第四张图片-->
							 <div class="panel" style="padding:0;margin:5px 0 5px 0; ">
								<div class="subfeature">
									<div class="thumbnail" style="margin:7px;">
										<a href="tectPage8.action" target="_blank"><img src="<%=base_root %>/theme/images/trainimg/zhongzhi8_1.jpg"  class="post-image"  /></a>
										<p class="text-center"  style="margin:5px;">
											<a href="tectPage8.action" target="_blank">水稻机械化插秧关键技术</a>
										</p>
									</div>
								</div>
							</div>
						</div><!--第四张图片-->
					</div>
				</div>
			</div>
			<a class="left carousel-control" style="width:30px" href="#carousel-captions" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" style="left:5px;"></span>
			</a>
			<a class="right carousel-control" style="width:30px" href="#carousel-captions" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" style="right:5px;"></span>
			</a>
		</div>			
	</div>
	
  </div>
</body>
</html>

</body>
</html>
