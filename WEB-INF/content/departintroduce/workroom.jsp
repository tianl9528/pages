<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>

<%@ page import="java.util.List"%>
<%@ page import="java.util.*"%>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.object.User" %>
<%@ page import="sunit.accesscontrol.object.DepartImage" %>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
List<DepartImage> images = (List<DepartImage>) request.getAttribute("dImages");
String base_root = request.getContextPath();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!--  
<link type="text/css" rel="stylesheet" href="<%=base_root%>/theme/css/yy2014_reset.css">
<link type="text/css" rel="stylesheet" href="<%=base_root%>/theme/css/yy2014_common.css">
<link type="text/css" rel="stylesheet" href="<%=base_root%>/theme/css/yy2014_index.css">
<script type="text/javascript" src="<%=base_root%>/theme/js/scroller.js"></script>
<script type="text/javascript" src="<%=base_root%>/theme/js/custom.js"></script>
	<script type="text/javascript"src="<%=base_root%>/theme/js/jquery.js"></script>
	
-->	
	
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/dialog.js"></script>
<link href="<%=request.getContextPath()%>/theme/js/dialog.css" rel="stylesheet" />
<style>
	#dlg .close {
	font-size:14px;
	font-weight:normal;
	opacity: 1;
	color:white;
	text-shadow:none;
	line-height:1.3;
	
}
#dlg .content
{
  width:250px;
  height:80px;
}
</style>
<!--[if lte IE 8]>
<link type="text/css" rel="stylesheet" href="./images/boc2013_iestyle.css">
<![endif]-->
<script type="text/javascript">
$(document).ready(function(){


	if($('#currentuname').html()=="客人,"){
		new Dialog('当前身份为游客，您可以注册账号重新登录！',
				{
					id:'dlg',
					time:3000,
					title:"系统信息"
				}).show();
	}

	
$("#news_scroll li:not(:first)").css("display","none");
var B=$("#news_scroll li:last");
var C=$("#news_scroll li:first");
setInterval(function(){
if(B.is(":visible")){
C.fadeIn(500).addClass("in");B.hide()
}else{
$("#news_scroll li:visible").addClass("in");
$("#news_scroll li.in").next().fadeIn(500);
$("li.in").hide().removeClass("in")}
},3000) //每3秒钟切换一条，你可以根据需要更改
});


</script>
</head>
<body id="home">
<div class="wrapper">
  <div class="banner com_box">
    <!--首页图片轮换取图片附件begin-->
    <div class="bn_img">
       <a href="#" target="_self" style="display: none;">
        <img src="<%=base_root%>/theme/imagesyy2014_spring.jpg" width="978px" height="288px">
        </a> 
       <a href="" title="分享" style="display: block;">
          <img src="<%=base_root%>/theme/images/yy2014_summer.png" class="\&quot;hidden\&quot;" width="978px" height="288px">
        </a>  <a href="#" title="" style="display: none;">
          <img src="<%=base_root%>/theme/images/yy2014_autumn.png" class="\&quot;hidden\&quot;" width="978px" height="288px">
        </a>  <a href="#" title="" style="display: none;">
          <img src="<%=base_root%>/theme/images/yy2014_winter.png" class="\&quot;hidden\&quot;" width="978px" height="288px">
        </a> 
    </div>
    <!--首页图片轮换取图片附件end-->
    <div class="banner_nav">
      <!--首页图片轮换取文档标题begin-->
       <span class="trigger">
        春回大地<br>万象新
        <i></i> </span> 
       <span href="javascript:void(0)" class="trigger imgSelected">
        夏日绵绵<br>荔枝挂枝头
        <i></i> </span>  <span href="javascript:void(0)" class="trigger">
        秋分萧瑟<br>随便
        <i></i> </span>  <span href="javascript:void(0)" class="trigger">
        冬日无聊<br>鲁大师
        <i></i> </span> 
      <!--首页图片轮换取文档标题end-->
      <div class="fl">
        <!--取关注我们栏目8、9篇文档开始-->
        <p class="attend">关注我们：
           <a href="#" class="sina" title="新浪"></a> 
           <a href="#" class="wx" title="微信"></a> 
        </p>
        <!--取关注我们栏目8、9篇文档结束-->
        <p><span>您将获得很多资讯！</span></p>
      </div>
    </div>
    <!--login-->

    <!--login-->
  </div>
  <!--banner-end-->
  <!--main-start-->
  <div class="main">
    <!--com_box-->
    <div class="com_box clearfix">
      <!--实用信息子栏目：重要公告begin-->
      <div class="msg1">
        <div class="tabs" id="tab3">
          <ul class="tab_nav clearfix">
            <li class="selected" onclick="tabs(&#39;#tab3&#39;,0);"><a href="javascript:void(0)" target="_self">重要公告</a></li>
            <li onclick="tabs(&#39;#tab3&#39;,1);" class="last"><a href="javascript:void(0)" target="_self">最新资讯</a></li>
          </ul>
          <div class="tab_content clearfix" style="display:block;">
            <ul class="list">
              
                <li><a href="#" title="">
                  在售理财产品列表(2014年3月4日更新)
                  </a></li>
              
                <li><a href="#" title="">
                  调整托管及投资者服务部副总经...
                  </a></li>
              
                <li><a href="#" title="">
                  客户满意度调查活动获奖客户名单公告
                  </a></li>
              
            </ul>
            <p class="more"><a href="#">更多&gt;</a></p>
          </div>
          <div class="tab_content clearfix">
            <ul class="list">
              
                <li><a href="#" title="">
                  办理上海自贸区放开小额外币存款利...
                  </a></li>
              
                <li><a href="#" title="">
                  完成上海自贸区首笔大宗商品衍...
                  </a></li>
              
                <li><a href="#" title="">
                推出上海自贸区企业网银服务
                  </a></li>
              
            </ul>
            <p class="more"><a href="#">更多&gt;</a></p>
          </div>
        </div>
        <!--tab-->
      </div>
      <!--实用信息子栏目：重要公告end-->
      <!--在线便捷服务begin-->
      <div class="msg2">
        <h2 class="title">
          <a href="#">特色产品</a>
        </h2>
        <!--scroll-->
        <div class="scroller">
          <!--123-->
          <div id="carousel" class="es-carousel-wrapper">
            <div class="es-carousel_o">
              <div class="es-carousel">
                <ul style="width: 1146px; display: block; margin-left: 0px;">
                  
                    <li style="margin-right: 0px; width: 71px;"><a href="#" style="border-width: 0px;"><img src="<%=base_root%>/theme/images/W020140111725822929454.gif" alt="手机银行&lt;br /&gt;客户端"><span>
                      手机<br>客户端
                      </span></a></li>                    
                  
                    <li style="margin-right: 0px; width: 71px;"><a href="http://www.bankofchina.com/custserv/fd5/" style="border-width: 0px;"><img src="<%=base_root%>/theme/images/W020140111727054404925.gif" alt="服务价格"><span>
                      服务价格
                      </span></a></li>                    
                  
                    <li style="margin-right: 0px; width: 71px;"><a href="http://www.boc.cn/ebanking/online/201310/t20131024_2567780.html" style="border-width: 0px;"><img src="<%=base_root%>/theme/images/W020140111728057951519.gif" alt="在线开通"><span>
                      在线开通
                      </span></a></li>                    
                  
                    <li style="margin-right: 0px; width: 71px;"><a href="http://www.boc.cn/ebanking/online/201310/t20131027_2574351.html" style="border-width: 0px;"><img src="<%=base_root%>/theme/images/W020140111729687070615.gif" alt="自助填单"><span>
                      自助填单
                      </span></a></li>                    
                  
                    <li style="margin-right: 0px; width: 71px;"><a href="http://www.boc.cn/ebanking/online/201310/t20131024_2567778.html" style="border-width: 0px;"><img src="<%=base_root%>/theme/images/W020140111810711646011.gif" alt="申请信用卡"><span>
                      申请信
                      </span></a></li>                    
                  
                    <li style="margin-right: 0px; width: 71px;"><a href="http://www.boc.cn/ebanking/online/201310/t20131024_2567731.html" style="border-width: 0px;"><img src="<%=base_root%>/theme/images/W020140111739730885386.gif" alt="回单验证"><span>
                      回单验证
                      </span></a></li>                    
                  
                    <li style="margin-right: 0px; width: 71px;"><a href="https://iservice.boccc.com.hk/iserv/index_gw.html" style="border-width: 0px;"><img src="<%=base_root%>/theme/images/W020140120822811684101.gif" alt="长城国际卡"><span>
                      啊啊
                      </span></a></li>                    
                  
                    <li style="margin-right: 0px; width: 71px;"><a href="http://as.boc.cn/index.jsp" style="border-width: 0px;"><img src="<%=base_root%>/theme/images/W020140111808305172664.gif" alt="企业年金"><span>
                      企业年金
                      </span></a></li>                    
                  
                    <li style="margin-right: 0px; width: 71px;"><a href="http://btos.bankofchina.com/" style="border-width: 0px;"><img src="<%=base_root%>/theme/images/W020140111808315313022.gif" alt="网上边贸"><span>
                      网上边贸
                      </span></a></li>                    
                  
                    <li style="margin-right: 0px; width: 71px;"><a href="http://www.bankofchina.com/custserv/cs6/" style="border-width: 0px;"><img src="<%=base_root%>/theme/images/W020140111808275221089.gif" alt="计算器"><span>
                      计算器
                      </span></a></li>                    
                  
                    <li style="margin-right: 0px; width: 71px;"><a href="http://www.boc.cn/ebanking/online/201302/t20130220_2164363.html" style="border-width: 0px;"><img src="<%=base_root%>/theme/images/W020140111738085381777.gif" alt="民生缴费"><span>
                      民生缴费
                      </span></a></li>                    
                  
                    <li style="margin-right: 0px; width: 71px;"><a href="http://www.boc.cn/ebanking/online/201312/t20131219_2816289.html" style="border-width: 0px;"><img src="<%=base_root%>/theme/images/W020140111808295346487.gif" alt="网购分期"><span>
                      网购分期
                      </span></a></li>                    
                  
                    <li style="margin-right: 0px; width: 71px;"><a href="http://www.bankofchina.com/pbservice/pb3/200910/t20091029_875622.html" style="border-width: 0px;"><img src="<%=base_root%>/theme/images/W020140111808285205896.gif" alt="在线投保"><span>
                      在线
                      </span></a></li>                    
                  
				     <li style="margin-right: 0px; width: 71px;"></li>
                    <li style="margin-right: 0px; width: 71px;"></li>
                    <li style="margin-right: 0px; width: 71px;"></li>
                </ul>
              </div>
            </div>
          <div class="es-nav"><a href="javascript:void(0)" class="es-nav-prev" target="_self">Previous</a><a href="javascript:void(0)" class="es-nav-next es-nav-prev-c" target="_self">Next</a></div></div>
          <!--123-->
        </div>
        <!--scroll-end-->
      </div>
      <!--在线便捷服务end-->
    </div>
    <!--com_box-end-->
    <!--com_box-->
    <div class="com_box serves">
      <div class="title" id="minglu">
      <!--  <span class="title2">个人客户服务</span>  -->
        <ul class="zhuanyz">
            <li class="selected" onclick="zyzs('#minglu',0);"><a href="javascript:void(0)" target="_self">专业镇名录</a></li>
            <li onclick="zyzs('#minglu',1);";><a href="javascript:void(0)" target="_self">企业名录</a></li>
            <li onclick="zyzs('#minglu',2);"><a href="javascript:void(0)" target="_self">农业统计</a></li>
        </ul>
      </div>
      <!--个人客户服务 <h3 class="title title2">个人客户服务</h3> -->
      <div class="con_area" id="minglu1">
        <!--在个人金融取2篇文档begin-->
        <div class="ca_fw" style="display:block;">
          <table class="table">
          	<tr>
          	  <td><a href="javascript:void(0)" target="_self" onclick="show('fr_content1');">合水镇</a></td>
              <td><a href="javascript:void(0)" target="_self" onclick="show('fr_content2');">天河镇</a></td><td><a href="javascript:void(0)" target="_self">北街镇</a></td><td><a href="javascript:void(0)" target="_self">北街镇</a></td>
          	</tr>
          	<tr>
          	  <td><a href="javascript:void(0)" target="_self">合水镇</a></td><td><a href="javascript:void(0)" target="_self">天河镇</a></td><td><a href="javascript:void(0)" target="_self">北街镇</a></td><td><a href="javascript:void(0)" target="_self">北街镇</a></td>
          	</tr>
          	<tr>
          	  <td><a href="javascript:void(0)" target="_self">合水镇</a></td><td><a href="javascript:void(0)" target="_self">天河镇</a></td><td><a href="javascript:void(0)" target="_self">北街镇</a></td><td><a href="javascript:void(0)" target="_self">北街镇</a></td>
          	</tr>
          	<tr>
          	  <td><a href="javascript:void(0)" target="_self">合水镇</a></td><td><a href="javascript:void(0)" target="_self">天河镇</a></td><td><a href="javascript:void(0)" target="_self">北街镇</a></td><td><a href="javascript:void(0)" target="_self">北街镇</a></td>
          	</tr>
          	<tr>
          	  <td><a href="javascript:void(0)" target="_self">合水镇</a></td><td><a href="javascript:void(0)" target="_self">天河镇</a></td><td><a href="javascript:void(0)" target="_self">北街镇</a></td><td><a href="javascript:void(0)" target="_self">北街镇</a></td>
          	</tr>
          	<tr>
          	  <td><a href="javascript:void(0)" target="_self">合水镇</a></td><td><a href="javascript:void(0)" target="_self">天河镇</a></td><td><a href="javascript:void(0)" target="_self">北街镇</a></td><td><a href="javascript:void(0)" target="_self">北街镇</a></td>
          	</tr>
          </table>
        </div>
        <div class="ca_fw" style="display:none;">
          <span>223</span>
        </div>
        <div class="ca_fw" style="display:none;">
          <span>323</span>
        </div>
        <!--取2篇文档end-->
        <!--left-->
        <div>
         <div class="fr" id="fr_content1" style="display:block;">
           <img src="<%=base_root%>/theme/images/showp.png" style="float:left;"/>
          	<p style="padding:5px 0 0 0"><span style="text-align:center; font-size:14px">白水镇</span></br>该镇有国税、地税、电信、农业银行、法院等设立中心机构管辖平塘、新宝、思贺等4个镇有关业务工作。现合水镇被评为广东省“卫生先进镇”、茂名市“经济实力十强镇”等。 圩镇基础
© 2014 Baidu - Data © NavInfo & CenNavi & 道道通
设施较完善，交通便利镇区内建成日供水量5000多立方米的自来水厂1个；11万伏变电站1座；商铺100多家；街道全部实现硬底化，灯光绿化设施齐备；有小学16所（城区内3所）、中学2所（其中完全中学1所）；有医疗设施较完善、花园式的卫生院一座；交通、通讯、广播设施较好，各村、机关单位、厂矿企业均通电话，有线电视100%普及到村,
是这样的么？不是这样的，到底是不是这样的，谁说不是这样的，就是这样的，那你有说不是这样，是这样还是哪样，那哪样又是怎么样，算了说多了都是泪。</p>
        </div>
     
        <div class="fr" id="fr_content2" style="display:none;">
        <img src="<%=base_root%>/theme/images/showp.png" style="float:left;"/>
            <p style="padding:5px 0 0 0"><span style="text-align:center; font-size:14px">白水镇</span></br>1111</p>
         </div>
        </div>
     </div>
    <!--com_box-end-->
    </div>
    <!--com_box-->
    <div class="com_box serves2">
      <div class="con_l">
        <!--取企业社会责任栏目下文档begin-->
        <h3 class="title"><a href="http://www.boc.cn/aboutboc/boccsr/">政策法规</a> </h3>
        <ul class="list">
          
            <li> <a href="#" title="">
              近7万名高校学子参加支持的“助学·筑...
              </a> </li>
          
            <li> <a href="#" title="">
              获颁“母亲健康快车十年推动奖”
              </a> </li>
          
            <li> <a href="#" title="">
              XXXXX获评“最佳社会责任上市公司”
              </a> </li>
          
            <li> <a href="#" title="">
              以“绿色赞助商”身份赞助支持“2...
              </a> </li>
          
            <li> <a href="#" title="">
              客户为贫困县孩子送爱心
              </a> </li>
          
            <li> <a href="#" title="">
              支持法国卢浮宫珍品亮相中国国家...
              </a> </li>
          
        </ul>
        <p class="more"><a href="#">更多&gt;</a></p>
        <!--取企业社会责任栏目下文档end-->
        <div class="serves2_ft"> <a href="#" title=""> <img src="<%=base_root%>/theme/images/P020140112019562554601.gif"> <span>
          XX历程
          </span> </a> <a href="#" title=""> <img src="<%=base_root%>/theme/images/P020081204783283203029.gif"> <span>
          XX荣誉
          </span> </a> <a href="#" title=""> <img src="<%=base_root%>/theme/images/P020140112019717152829.gif"> <span>
          XX纸币
          </span> </a> <a href="#" class="last" title=""> <img src="<%=base_root%>/theme/images/P020140112019859429751.gif"> <span>
          XX卡苑
          </span> </a> </div>
      </div>
      <!--left-->
      <div class="con_r">
        <!--取投资者关系栏目下文档begin-->
        <div class="cc">
          <h3 class="title"><a href="http://www.boc.cn/investor/">市场信息</a> </h3>
          <ul class="list clearfix">
            
              <li> <a href="http://www.boc.cn/investor/ir2/201403/t20140304_2998543.html" title="">
                截至二零一四年二月二十八日之股份发行人的证...
                </a> </li>
            
              <li> <a href="http://www.boc.cn/investor/ir2/201402/t20140221_2951585.html" title="公告">
                海外监管公告-公司关于股东承...
                </a> </li>
            
              <li> <a href="http://www.boc.cn/investor/ir5/201402/t20140221_2951584.html" title="">
                XXXX股份有限公司关于股东承诺履行情况的公告
                </a> </li>
            
              <li> <a href="http://www.boc.cn/investor/ir2/201402/t20140214_2923947.html" title="">
                zZZ
                </a> </li>
            
              <li> <a href="http://www.boc.cn/investor/ir5/201402/t20140214_2923937.html" title="">
                XXX股份有限公司关于行长任职的公告
                </a> </li>
            
              <li> <a href="http://www.boc.cn/investor/ir2/201402/t20140207_2900493.html" title="">
                截至二零一四年一月三十一日止之股份发行人的...
                </a> </li>
            
              <li> <a href="http://www.boc.cn/investor/ir2/201402/t20140207_2900491.html" title="">
                選擇收取公司通訊的方式及語言版本
                </a> </li>
            
              <li> <a href="http://www.boc.cn/investor/ir2/201402/t20140207_2900474.html" title="">
                致非登记股东信函-2014年第一次临时股东大会通告
                </a> </li>
            
          </ul>
          <p class="more"><a href="http://www.boc.cn/investor/">更多&gt;</a></p>
        </div>
        <!--取投资者关系栏目下文档end-->
        <div class="bb clearfix">
          <!--取社会责任栏目下文档begin-->
          <div class="bb_l">
            <h3 class="title"><a href="http://www.boc.cn/aboutboc/ab8/">职业认证考试</a> </h3>
            <ul class="list">
              
                <li> <a href="http://www.boc.cn/aboutboc/ab8/201403/t20140303_2992853.html" title="">
                  保持百年大行基业长青——访中国XXXX董事长...
                  </a> </li>
              
                <li> <a href="http://www.boc.cn/aboutboc/ab8/201402/t20140228_2986204.html" title="">
                  XXXX以优质服务为旗帜【人民...
                  </a> </li>
              
                <li> <a href="http://www.boc.cn/aboutboc/ab8/201402/t20140228_2986203.html" title="">
                  北分国际贸易与跨境人民币结算量再破千...
                  </a> </li>
              
            </ul>
            <p class="more"><a href="http://www.boc.cn/aboutboc/ab8/">更多&gt;</a></p>
          </div>
          <!--取社会责任栏目下文档end-->
          <!--取招聘公告及采购公告栏目名称与文档列表begin-->
          <div class="bb_r">
            <div class="tabs" id="tab2">
              <ul class="tab_nav clearfix">
                <li class="selected" onclick="tabs(&#39;#tab2&#39;,0);"> <a href="javascript:void(0)" target="_self">招聘公告 </a> </li>
                <li onclick="tabs(&#39;#tab2&#39;,1);" class="last"> <a href="javascript:void(0)" target="_self">求购信息 </a> </li>
              </ul>
              <div class="tab_content clearfix" style="display:block;">
                <ul class="list">
                  
                    <li> <a href="#" title="">
                      XXXX股份有限公司XXXXXXXX...
                      </a> </li>
                  
                    <li> <a href="" title="">
                      XXXXX客服中心座席员招聘公告
                      </a> </li>
                  
                    <li> <a href="#" title="">
                      XXXXXXX股份有限公司2014年校...
                      </a> </li>
                  
                </ul>
                <p class="more"><a href="">更多&gt;</a></p>
              </div>
              <div class="tab_content clearfix">
                <ul class="list">
                  
                    <li> <a href="" title="">
                      XXXXXX微信运营服务采购项目公...
                      </a> </li>
                  
                    <li> <a href="#" title="">
                      “客服中心（北京）更换办公区地毯项...
                      </a> </li>
                  
                    <li> <a href="#" title="">
                      NOTES邮件安全审计项目谈判邀请公告
                      </a> </li>
                  
                </ul>
                <p class="more"><a href="#">更多&gt;</a></p>
              </div>
            </div>
            <!--tab-->
          </div>
          <!--取招聘公告及采购公告栏目名称与文档列表end-->
        </div>
      </div>
      <!--right-->
    </div>
    <!--com-box-end-->
    <!--com-box-->

    <!--main-end-->
  <!--2013-嵌-底部嵌套begin-->
  <div class="footer_2013">
    <div class="footer_phone">
        <p><em>服务热线：</em><span>020-85211114</span></p>
    </div>

</div><!--footer-end-->

<script>
//控制导航选中
$(document).ready(function(){
	var curlocation = '广东省农业专业镇信息服务平台';
	var array = curlocation.split(",");
	if(array.length < 2)
		return false;
	var curchannelname = array[1];
	//逐个栏目进行分析，修改栏目样式
	$("#BOC_NAVIGATOR_UL li").each(function(){
		var curtext = $(this).find("a").eq(0).text();
		if(curchannelname == curtext){
			$("#BOC_NAVIGATOR_UL li").removeClass("current");
			$(this).addClass("current");
			return false;
		}
	});
});
</script>
<script type="text/javascript">
var pl_search_domain = "http://srh.bankofchina.com/search/";
/**
* @see 全站检索
* @param obj:对象
*/
function search_for_site(){
	//设置当前检索的 action
	$("#trssearchform").attr("action",pl_search_domain+"sitesearch/index.jsp");
	$("#trssearchform").submit();
}
</script>
  <!--2013-嵌-底部嵌套end-->
</div>
<!--wrapper-->
<script type="text/javascript" src="<%=base_root%>/theme/js/yy2014_bxCarousel.js"></script>
<script type="text/javascript" src="<%=base_root%>/theme/js/yy2014_share.js"></script>
<script type="text/javascript">
 $(document).ready(function(){
	/*首页banner图切换*/
	(function(){
		var curr = 0;
		$(".banner_nav .trigger").each(function(i){
			$(this).click(function(){
				curr = i;
				$(".bn_img a").eq(i).fadeIn("slow").siblings("a").hide();
				$(this).siblings(".trigger").removeClass("imgSelected").end().addClass("imgSelected");
				return false;
			});
		});
		
		var pg = function(flag){
			//flag:true表示前翻， false表示后翻
			if (flag) {
				if (curr == 0) {
					todo = 2;
				} else {
					todo = (curr - 1) % 4;
				}
			} else {
				todo = (curr + 1) % 4;
			}
			$(".banner_nav .trigger").eq(todo).click();
		};
		//自动翻
		var timer = setInterval(function(){
			todo = (curr + 1) % 4;
			$(".banner_nav .trigger").eq(todo).click();
		},5000);
		
		//鼠标悬停在触发器上时停止自动翻
		$(".banner_nav span").hover(function(){
				clearInterval(timer);
			},
			function(){
				timer = setInterval(function(){
					todo = (curr + 1) % 4;
					$(".banner_nav .trigger").eq(todo).click();
				},5000);			
			}
		);
	})();
	//新加jq 便捷服务++++++++++++++++++++++

			 $('#carousel').elastislide({
			imageW 	: 71,
			minItems :1,	
			margin : 0,	
			border : 0	
		});
	//新加jq 切换  银行卡++++++++++++++++++++++
		$('#carousel2').elastislide({
    	imageW 	: 250,
    	minItems :1,
		margin : 0,	
		border : 0	
		});
		
		//分享
	var share_c = $('.share_pop').hide();
	var share_bt = $('.share');
	share_bt.click(function(){
		share_c.fadeToggle(400);
		return false;
	});
	$("body").click(function(){
		share_c.hide();
		})

	//全球服务
	var h_logbtn1 = $('.bts1');
	var h_menu1 = $('.zz1 .hover_menu').hide();
	h_logbtn1.click(function(){
		h_menu1.fadeToggle('fast');
		return false;
	})
	$("body").click(function(){
		h_menu1.hide();
		})
	
	var h_logbtn2 = $('.bts2');
	var h_menu2 = $('.zz2 .hover_menu').hide();
	h_logbtn2.click(function(){
		h_menu2.fadeToggle('fast');
		return false;
	})
	$("body").click(function(){
		h_menu2.hide();
		})
	
});
/*导航*/
var s_bMoveLeft = true;
var s_oTimer = null;
var s_oTimerOut = null;
var s_iSpeed = 3;
function MM_findObj(n, d) { 
	var p,i,x;
	if(!d) 
		d=document; 
	for(i=0;!x&&d.layers&&i<d.layers.length;i++) 
		x=MM_findObj(n,d.layers[i].document);
	if(!x && d.getElementById) 
		x=d.getElementById(n); 
		return x;
}

function showHideLayer() { 
	var i,p,v,obj,args=showHideLayer.arguments;
	for (i=0; i<(args.length-2); i+=3) 
	if ((obj=MM_findObj(args[i]))!=null) 
	{
		v=args[i+2];
		if (obj.style) 
		{ 
			obj=obj.style;
			v=(v=='show')?'visible':(v=='hide')?'hidden':v; 
		}
    	obj.visibility=v; 
	}
}
//选项卡切换
function tabs(tabId, tabNum){
	$(tabId+' .tab_nav li').removeClass('selected');
	$(tabId+' .tab_nav li').eq(tabNum).addClass('selected');
	$(tabId+' .tab_content').hide();
	$(tabId+' .tab_content').eq(tabNum).show();
}

//专业镇切换
function zyzs(tabId, tabNum){
	$(tabId+' .zhuanyz li').removeClass('selected');
	$(tabId+' .zhuanyz li').eq(tabNum).addClass('selected');
	$(tabId+'1'+' .ca_fw').hide();
	$(tabId+'1'+' .ca_fw').eq(tabNum).show();
}
//专业镇内容展示

function show(obj){
      
      $('#'+obj).siblings().hide(); 
      $('#'+obj).show();
    }
 


</script>

</body></html>