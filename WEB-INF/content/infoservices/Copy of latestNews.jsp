<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% String base_root = request.getContextPath(); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>信息服务 >> 最新资讯</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/scroll.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$('.list_lh li:even').addClass('lieven');
	
	$("div.list_lh").myScroll({
		speed:40, //数值越大，速度越慢
		rowHeight:88 //li的高度
	});
})
</script>


<style type="text/css">
.panel-body > .table > tbody > tr >td
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

.panel a{
color:#4e5b2c;
font-weight:bold;
cursor:pointer;
}
.panel li{
list-style-type:none;
margin-top:7px;
}
 #announcement > tbody > tr
{
	height:38px;
}


*{margin:0;padding:0;font-size:12px;}
body{background:none;}
input,button,select,textarea{outline:none;}
ul,li,dl,ol{list-style:none;}
a{color:#666;text-decoration:none;}

/* bcon */
.bcon{width:270px;border:1px solid #eee;margin:30px auto;}
.bcon h2{border-bottom:1px solid #eee;padding:0 10px;}
.bcon h2 b{font:bold 14px/40px '宋体';border-top:2px solid #3492D1;padding:0 8px;margin-top:-1px;display:inline-block;}
.list_lh{height:400px;overflow:hidden;}
.list_lh li{padding:10px;}
.list_lh li.lieven{background:#F0F2F3;}
.list_lh li p{height:24px;line-height:24px;}
.list_lh li p a{float:left;}
.list_lh li p em{width:80px;font:normal 12px/24px Arial;color:#FF3300;float:right;display:inline-block;}
.list_lh li p span{color:#999;float:right;}
.list_lh li p a.btn_lh{background:#28BD19;height:17px;line-height:17px;color:#fff;padding:0 5px;margin-top:4px;display:inline-block;float:right;}
.btn_lh:hover{color:#fff;text-decoration:none;}
</style>

</head>
<body>
	<div style="max-width:1007px;min-width:820px;margin:15px">
	
		<div class="input-group col-lg-5 col-xs-5 col-lg-offset-7 col-xs-offset-7" style="margin-bottom:15px">
			<input type="text" class="form-control">
			<span class="input-group-btn">
				<button type="button" class="btn btn-success" style="width:88px;margin-right:5px">搜索</button>
			</span>
		</div>
		
		<div class="col-lg-3 col-xs-3" style="padding-left:0;padding-right:5px;">
			<div class="panel panel-default" style="padding-bottom:20px;margin-bottom:2px">
				<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;height:45px">
					<h4>
						<b class="col-lg-10 col-xs-10">
							科技新闻
						</b>
						<a href="#" target="_blank" class="col-lg-1 col-xs-1" style="color:#4e5b2c;"><span>>></span></a>
					</h4>
				</div>
				<div class="panel-body">																	
					<div style="border-bottom:4px solid #BEEC94;color:#4e5b2c;font-weight:bold;padding:0 0 5px 5px">实用技术</div>
					<ul style="padding-left:7px;margin-bottom:15px;">
						<li><a href="latestNewsPage1.action" target="_blank">2014年水稻重大病虫害防控..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nykj/syjs/201403/t20140319_223318.html" target="_blank">气温回升 菜防虫果防病</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/sn/gz/201403/t20140304_222701.html" target="_blank">从化市农技中心给荔枝果农..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/zhyw/201402/t20140218_222241.html" target="_blank">“智慧农业”离农民越来越近</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/sn/st/201402/t20140207_221968.html" target="_blank">当前普遍流行最主要的三种..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/sn/st/201402/t20140207_221967.html" target="_blank">汕头市果树研究中心发布香..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/sn/st/201401/t20140120_221563.html" target="_blank">汕头畜牧兽医局发布农贸市..</a></li>
					</ul>
					
					<div style="border-bottom:4px solid #BEEC94;color:#4e5b2c;font-weight:bold;padding:0 0 5px 5px">种植业技术</div>
					<ul style="padding-left:7px;margin-bottom:15px;">
						<li><a href="./科技新闻_种植业技术1.html" target="_blank">2014年水稻重大病虫害防控..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/zhyw/201304/t20130417_209256.html" target="_blank">南方早稻育插秧及大田管理..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/sn/st/201303/t20130306_207650.html" target="_blank">香蕉象鼻虫防治</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/sn/zq/201302/t20130228_207470.html" target="_blank">怀集县发通知要求各镇做好..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/sn/yj/201302/t20130226_207389.html" target="_blank">阳江织篢农场利用机械对橡..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/sn/zj/201302/t20130225_207345.html" target="_blank">广西瓜农在湛采用薄膜覆盖..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/sn/yf/201302/t20130221_204766.html" target="_blank">荔枝龙眼生产需严防“冲梢”</a></li>
					</ul>
					
					<div style="border-bottom:4px solid #BEEC94;color:#4e5b2c;font-weight:bold;padding:0 0 5px 5px">畜牧业技术</div>
					<ul style="padding-left:7px;margin-bottom:15px;">
						<li><a href="./科技新闻_畜牧业技术1.html" target="_blank">汕头地区奶牛场兽医卫生技..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/sn/st/201304/t20130410_209003.html" target="_blank">生猪腹泻发病病因分析及防..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nykj/xmyjs/201304/t20130402_208715.html" target="_blank">农业部：关于稳定当前生猪..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/sn/st/201303/t20130306_207652.html" target="_blank">饲粮蛋氨酸对28～70日龄狮..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/sn/st/201302/t20130206_204607.html" target="_blank">肉鸭饲养与常见疫病防控实..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/sn/st/201301/t20130111_203836.html" target="_blank">种猪繁殖能力持续下降的病..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/sn/st/201211/t20121128_202595.html" target="_blank">关于快速型商品肉鸡若干技..</a></li>
					</ul>
					
					<div style="border-bottom:4px solid #BEEC94;color:#4e5b2c;font-weight:bold;padding:0 0 5px 5px">水产业技术</div>
					<ul style="padding-left:7px;margin-bottom:15px;">
						<li><a href="./科技新闻_水产业技术1.html" target="_blank">饲料原料几种主要组成成分..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nyxw/sn/yj/201201/t20120111_188577.html" target="_blank">水产养殖防寒应急措施</a></li>
						<li><a href="http://www.gdagri.gov.cn/nykj/scyjs/201111/t20111111_187318.html" target="_blank">水温逐渐降低，罗非鱼冬天..</a></li>
						<li><a href="http://www.gdagri.gov.cn/nykj/scyjs/201012/t20101228_173083.html" target="_blank">池塘鱼虾蟹高效养殖经验谈</a></li>
						<li><a href="http://www.gdagri.gov.cn/nykj/scyjs/201012/t20101228_173082.html" target="_blank">投草养殖草鱼把四关</a></li>
						<li><a href="http://www.gdagri.gov.cn/nykj/scyjs/201012/t20101228_173081.html" target="_blank">淡水养殖新秀——鲁香黑鱼</a></li>
						<li><a href="http://www.gdagri.gov.cn/nykj/scyjs/201012/t20101206_172607.html" target="_blank">生态养鳅技术</a></li>
					</ul>
				</div>
			</div>	
			
			 
		</div>
		
		<div class="col-lg-9 col-xs-9" style="padding:0;">
			<div class="col-lg-8 col-xs-8" style="padding-left:0;padding-right:5px;">
				<div class="panel panel-default" style="margin-bottom:2px">
					<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;height:45px">
						<h4>
							<b class="col-lg-11 col-xs-11">
								农业要闻
							</b>
							<a href="最新资讯_农业要闻.html" target="_blank" class="col-lg-1 col-xs-1" style="color:#4e5b2c;">>></a>
						</h4>
					</div>
					<div class="panel-body" style="height:420px;padding:0 15px ;overflow:hidden">
						<table class="table table-hover" id="announcement" >
							<tr><td><a href="latestNewsPage2.action" target="_blank">农业部组织开展“向实行计划生育的贫困母亲献爱心”捐款活动</a></td></tr>
							<tr><td><a href="http://www.agri.gov.cn/V20/ZX/nyyw/201405/t20140513_3902331.htm" target="_blank">中法农业及农业食品合作混委会第四次会议在京召开</a></td></tr>
							<tr><td><a href="http://www.agri.gov.cn/V20/ZX/nyyw/201405/t20140513_3902204.htm" target="_blank">四部门联合指导意见 加强中国传统村落保护</a></td></tr>
							<tr><td><a href="http://www.agri.gov.cn/V20/ZX/nyyw/201405/t20140513_3902192.htm" target="_blank">2014年全国粮食库存检查部门联合抽查工作启动</a></td></tr>
							<tr><td><a href="http://www.agri.gov.cn/V20/ZX/nyyw/201404/t20140429_3887930.htm" target="_blank">筑好康庄大道共圆小康梦想——习近平总书记关心农村公路发展纪</a></td></tr>
							<tr><td><a href="http://www.agri.gov.cn/V20/ZX/nyyw/201404/t20140429_3887914.htm" target="_blank">世界动物卫生组织亚太区新任代表培训班在北京召开</a></td></tr>
							<tr><td><a href="http://www.agri.gov.cn/V20/ZX/nyyw/201404/t20140429_3887859.htm" target="_blank">健康抚育树木 建设绿色家园——农业部“知树、爱树、育树”活..</a></td></tr>
							<tr><td><a href="http://www.agri.gov.cn/V20/ZX/nyyw/201404/t20140428_3887403.htm" target="_blank">农业部副部长于康在辽宁、山东督导并主持召开座谈会强调突出..</a></td></tr>
							<tr><td><a href="http://www.agri.gov.cn/V20/ZX/nyyw/201404/t20140428_3887233.htm" target="_blank">韩长赋：推动大城市率先实现农业现代化</a></td></tr>
							<tr><td><a href="http://www.agri.gov.cn/V20/ZX/nyyw/201404/t20140428_3887252.htm" target="_blank">浙江大力创新农药管理机制 保障农产品质量及生态安全</a></td></tr>
							<tr><td><a href="http://www.agri.gov.cn/V20/ZX/nyyw/201404/t20140428_3887187.htm" target="_blank">棉花临时收储政策取消 棉农种植意愿下降</a></td></tr>
							<tr><td><a href="http://www.agri.gov.cn/V20/ZX/nyyw/201404/t20140428_3887176.htm" target="_blank">云南华南注意防范强降水对农作物影响</a></td></tr>
							<tr><td><a href="http://www.agri.gov.cn/V20/ZX/nyyw/201404/t20140428_3887038.htm" target="_blank">李家洋副部长考察中国水科院 希望加强两院合作</a></td></tr>
							<tr><td><a href="http://www.agri.gov.cn/V20/ZX/nyyw/201404/t20140428_3886571.htm" target="_blank">为何“菜贱伤农”频遇“菜贵民忧”</a></td></tr>
							
						</table>
					</div>
				</div>
			</div>
			
			<div class="col-lg-4 col-xs-4" style="padding-left:0;padding-right:5px;">
				<div class="panel panel-default" style="padding-bottom: 20px;margin-bottom: 2px;">
					<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;height:45px">
						<h4>
							<b class="col-lg-10 col-xs-10">
								病虫害预报
							</b>
							<a href="./病虫害预报_蔬菜.html" target="_blank" class="col-lg-1 col-xs-1" style="color:#4e5b2c;">>></a>
						</h4>
					</div>
					<div class="panel-body" style="padding-bottom: 12px;">
						<div style="border-bottom:4px solid #BEEC94;color:#4e5b2c;font-weight:bold;padding:0 0 5px 5px">蔬菜</div>
						<ul style="padding-left:7px;margin-bottom:15px;">
							<li><a href="latestNewsPage3.action" target="_blank">七月份蔬菜主要病虫发生预..</a></li>
							<li><a href="http://www.gzagri.gov.cn/wnfw/gznq/bchyb/sc/201306/t20130604_392488.html" target="_blank">六月份蔬菜主要病虫发生预..</a></li>
							<li><a href="http://www.gzagri.gov.cn/wnfw/gznq/bchyb/sc/201304/t20130428_392058.html" target="_blank">五月份蔬菜主要病虫发生预..</a></li>
						</ul>
						
						<div style="border-bottom:4px solid #BEEC94;color:#4e5b2c;font-weight:bold;padding:0 0 5px 5px">水产</div>
						<ul style="padding-left:7px;margin-bottom:15px;">
							<li><a href="./病虫害预报_水产1.html" target="_blank">2012年10月广东水产养殖病..</a></li>
							<li><a href="http://www.gzagri.gov.cn/wnfw/gznq/bchyb/shuichan/201301/t20130106_388824.html" target="_blank">2012年10月份水产养殖病害..</a></li>
							<li><a href="http://www.gzagri.gov.cn/wnfw/gznq/bchyb/shuichan/201211/t20121118_360284.html" target="_blank">2010年5月份水产养殖病害..</a></li>
						</ul>
						
						<div style="border-bottom:4px solid #BEEC94;color:#4e5b2c;font-weight:bold;padding:0 0 5px 5px">水果</div>
						<ul style="padding-left:7px;margin-bottom:15px;">
							<li><a href="./病虫害预报_水果1.html" target="_blank">荔枝果期主要病虫发生预警..</a></li>
							<li><a href="http://www.gzagri.gov.cn/wnfw/gznq/bchyb/sg/201304/t20130419_391904.html" target="_blank">荔枝第二代蒂蛀虫发生预报..</a></li>
							<li><a href="http://www.gzagri.gov.cn/wnfw/gznq/bchyb/sg/201303/t20130322_391498.html" target="_blank">荔枝花穗期主要病虫发生预..</a></li>
						</ul>
						
					</div>
				</div>
			</div>
			
			<div class="col-lg-12 col-xs-12" style="padding-left:0;padding-right:5px">
				<div class="panel panel-default" style="margin-bottom:2px">
					<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;height:45px">
						<h4>
							<b class="col-lg-11 col-xs-11">
								农业气象
							</b>
							<a href="./最新资讯_农业气象.html" target="_blank" class="col-lg-1 col-xs-1" style="color:#4e5b2c;">>></a>
						</h4>
					</div>
					<div class="panel-body" style="padding-bottom: 9px;">
						<table class="table table-hover" >
							<tr>
								<td>
									<div class="col-lg-10 col-xs-10"><a href="latestNewsPage4.action" target="_blank">9-11日我省大范围暴雨仍将持续 请注意防御滑坡和山洪等地质灾害</a></div>
									<div class="col-lg-2 col-xs-2 pull-right"><span class="text-muted">2014-05-06 17:44:55</span></div>
								
									<div class="col-lg-10 col-xs-10"><span>6日早晨，大部分市县最低温度下降了1～3℃，具体分布：粤北和粤东市县15～17℃，粤西市县18～19℃，其余市县17～18℃。</span></div>
									<div class="col-lg-2 col-xs-2 pull-right"><span>&nbsp;</span></div>
								
									<div class="col-lg-10 col-xs-10"><span class="text-muted">来源：中国天气网广东站</span></div>
									<div class="col-lg-2 col-xs-2 pull-right">&nbsp;</div>
								</td>
							</tr>
							
							<tr>
								<td>
									<div class="col-lg-10 col-xs-10"><a href="http://www.gdagri.org/gdnyw/http/5009468-nyzx-news_list.html" target="_blank">4-5日广东省出现大雨到暴雨 8-10日又将有暴雨到大暴雨</a></div>
									<div class="col-lg-2 col-xs-2 pull-right"><span class="text-muted">2014-05-05 11:46:44</span></div>
								
									<div class="col-lg-10 col-xs-10"><span>5日早晨由于受冷空气和明显降水影响，最低温度下降了3～5℃，具体分布：粤北市县17～18℃，粤西市县20～22℃，其余市县24～29℃。</span></div>
									<div class="col-lg-2 col-xs-2 pull-right"><span>&nbsp;</span></div>
								
									<div class="col-lg-10 col-xs-10"><span class="text-muted">来源：中国天气网广东站</span></div>
									<div class="col-lg-2 col-xs-2 pull-right">&nbsp;</div>
								</td>
							</tr>
							
							<tr>
								<td>
									<div class="col-lg-10 col-xs-10"><a href="http://www.gdagri.org/gdnyw/http/5009422-nyzx-news_list.html" target="_blank">4日白天到夜间大部有中到大雨伴雷电 5日白天自北向南雨势减弱气温</a></div>
									<div class="col-lg-2 col-xs-2 pull-right"><span class="text-muted">2014-05-04 17:00:23</span></div>
								
									<div class="col-lg-10 col-xs-10"><span>4日早晨，全省以阴天为主，最低温度分布：粤北和粤东市县20～22℃，其余市县22～24℃。</span></div>
									<div class="col-lg-2 col-xs-2 pull-right"><span>&nbsp;</span></div>
								
									<div class="col-lg-10 col-xs-10"><span class="text-muted">来源：中国天气网广东站</span></div>
									<div class="col-lg-2 col-xs-2 pull-right">&nbsp;</div>
								</td>
							</tr>
							
							<tr>
								<td>
									<div class="col-lg-10 col-xs-10"><a href="http://www.gdagri.org/gdnyw/http/5009373-nyzx-news_list.html" target="_blank"> 今明两天广东省中南部有明显降水 请注意防御强降水及其衍生灾害</a></div>
									<div class="col-lg-2 col-xs-2 pull-right"><span class="text-muted">2014-04-30 16:07:21</span></div>
								
									<div class="col-lg-10 col-xs-10"><span> 30日上午，全省阴天为主，有零星阵雨，早晨全省最低气温分布：中北部市县14～18℃，南部市县18～21℃。</span></div>
									<div class="col-lg-2 col-xs-2 pull-right"><span>&nbsp;</span></div>
								
									<div class="col-lg-10 col-xs-10"><span class="text-muted">来源：中国天气网广东站</span></div>
									<div class="col-lg-2 col-xs-2 pull-right">&nbsp;</div>
								</td>
							</tr>
							
							
							
						</table>
					</div>
				</div>
			</div>
		</div>
		
		<div class="col-lg-12 col-xs-12" style="padding-left:0;padding-right:5px;">
				<div class="panel panel-default" style="margin-bottom:2px">
					<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;height:45px">
						<h4>
							<b class="col-lg-11 col-xs-11">
								企业快讯
							</b>
							<a href="" target="_blank" class="col-lg-1 col-xs-1" style="color:#4e5b2c;padding-left:45px">>></a>
						</h4>
					</div>
				
					<div class="panel-body">
						<table class="table table-hover" style="margin-bottom:5px;">
						<!-- 企业快讯 -->
						<c:if test="${!empty companynewsList}">
							<c:forEach var="cnl" items="${companynewsList}">
							<tr>
								<td style="width:50%;"><a href="enterpriseNews.action?articleID=${cnl.id}">${cnl.tittle }</a></td>
								<td style="width:20%;text-align:right;">${cnl.user.company.companyname }</td>
								<td style="width:30%;text-align:right;"><fmt:formatDate value='${cnl.pubdate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>
								</td>
								
							</tr>
							</c:forEach>
						</c:if>
					</table>
					</div>



				<!-- 代码开始 -->
				<div class="list_lh">
					<ul>
						<c:if test="${!empty companynewsList}">
							<c:forEach var="cnl" items="${companynewsList}">
								<li>
									<p>
										<a>发布者：${cnl.user.company.companyname}</a><a
											href="http://www.xwcms.net" class="btn_lh">发布时间</a>
									</p>
									<p>
										<a href="enterpriseNews.action?articleID=${cnl.id}"
											class="a_blue">${cnl.tittle}</a><span><fmt:formatDate
												value='${cnl.pubdate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate></span>
									</p>
								</li>


							</c:forEach>
						</c:if>


					</ul>
				</div>
				<!-- 代码结束 -->

			</div>
					
				</div>
		</div>
		
	</div>
</body>
</html>