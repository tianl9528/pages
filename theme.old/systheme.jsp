<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=utf-8" language="java"%>


<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
	Info currentInfo=(Info)session.getAttribute(Config.KEY_LOGIN_INFO);
    System.out.println(currentInfo);
	//if(null==currentInfo) {
	//	request.getRequestDispatcher(request.getContextPath()+"/login.action").forward(request,response);
	//}
	String base_root = request.getContextPath();
	
	HashMap<String,String> menu_control = currentInfo.getMenu_control();
	//System.out.println(request.getRequestURI());
	//System.out.println(menu_control.get(request.getRequestURI()));
	String menu_show = menu_control.get(request.getRequestURI());
	System.out.println(" request URI -----"+ request.getRequestURI() + "=== menushow --- " + menu_show );
	if(menu_show != null){
		session.setAttribute("menu_show", menu_show);
	}
	
	//
	Calendar c=Calendar.getInstance();
	Date beginTime=c.getTime();
	String currentdate = new SimpleDateFormat("yyyy年MM月dd日").format(beginTime);
%>
<HTML>
<head>

<%-- <TITLE><%=Config.getInstance().realmName%> - <decorator:title default="<%=Config.getInstance().realmName%>" /></TITLE> --%>
<TITLE>广东省农业专业镇信息服务平台</TITLE>

<!-- 
<link rel="icon" href="<%=base_root%>/theme/favicon.ico" type="image/x-icon" />
 -->
<%--add trac_style--%>
    <link href="<%=base_root%>/theme/css/trace_newstyle.css" rel="stylesheet" type="text/css" />
<%--add trace_style end--%>
<link href="<%=base_root%>/theme/css/mSelect.css" rel="stylesheet"
	type="text/css" />

<link rel="stylesheet"
	href="<%=base_root%>/theme/jquery-ui-1.8.20.custom.css" type="text/css"
	media="screen" />

<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery-table-list_select.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery.ui.datepicker-zh-CN.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery-ui-1.8.20.custom.min.js"></script>

<!-- qtip -->
<script type="text/javascript"
	src="<%=base_root%>/theme/ui-lib/qtip/js/jquery.qtip.js"></script>
<link rel="stylesheet"
	href="<%=base_root%>/theme/ui-lib/qtip/css/jquery.qtip.css"
	type="text/css" />

<script type="text/javascript"
	src="<%=base_root%>/theme/js/bootstrap.min.js"></script>
<link href="<%=base_root%>/theme/css/index.css" rel="stylesheet"
	type="text/css" />
<link href="<%=base_root%>/theme/css/bootstrap.min.css" rel="stylesheet" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="<%=request.getContextPath()%>/theme/css/recommen.css" rel="stylesheet" />
 


<script type="text/javascript">
	$(document).ready(
			function() {
				var s = "";
				var d = new Date();
				s += d.getFullYear() + "年" + (d.getMonth() + 1) + "月"
						+ d.getDate() + "日　";
				$("#currentDate").text(s);

				//启用提示功能
				var options = {
					animation : true,
					trigger : 'hover' //触发tooltip的事件
				}
				//$("[data-toggle='tooltip']").tooltip(options);
				$(".regpop").popover({
					title : '友情提示',
					content : '还没有账号？现在注册吧！注册后，您可以：发布信息、查看最新资讯、咨询专家等...',
					trigger : 'hover',
					placement : 'left'
				});
				$(".loginpop").popover({
					title : '友情提示',
					content : "如果您已注册账号，现在可以登录！众多权限归您所有~",
					trigger : 'hover',
					placement : 'left'
				});
			})
</script>
<style type="text/css">
.head {
	width: 1007px;
	background: url(<%=base_root%>/theme/images/loginimg/logo04.png)
		no-repeat;
	background-color: white;
	height: 80px;
}

.head>div>p {
	margin: 0 0 0 7px;
	font-size: 14px;
	font-weight: bold;
}
</style>
<script>
	function menuProcess(objid) {
		//var aS=document.getElementsByTagName('div');
		//alert(objid);
		var aS = $(".secNavi");
		//alert(aS.length);
		for (var i = 0; i < aS.length; i++) {
			//alert(aS[i]);
			aS[i].style.display = "none";

		}
		$('#' + objid).stop(true, true).show('fast');
	}
	function menuhide() {
		//$('.secNavi').stop(true,true).hide('fast');
		//$('#menu_div2').stop(true,true).hide('fast');
		//$('#menu_div3').stop(true,true).hide('fast');
	}
</script>

    <!--下拉菜单-->
    <style type="text/css">
        *{ margin:0px; padding: 0px; }
        #nav {
            font-family: arial, sans-serif;
            position: relative;
            width: 954px;
            height:25px;
            font-size:14px;
            color:#999;
            margin: 0 auto;
        }
        #nav ul {
            list-style-type: none;
        }
        #nav ul li {
            float: left;
            position: relative;
        }
        #nav ul li a {
            text-align: center;
            border-right:1px solid #e9e9e9;
            padding:0px 20px 0px 20px;
            display:block;
            text-decoration:none;
            color:#fff;
            line-height: 25px;
        }
        #nav ul li ul {
            display: none;
            width: 150px;
            z-index:9999;
        }
        #nav ul li:hover ul {
            display: block;
            position: absolute;
            z-index:9999;
            width: 150px;
        }
        #nav ul li:hover ul li a {
            display:block;
            background:#12aeef;
            color:#ffffff;
            width: 150px;
            height: 40px;
            line-height: 40px;
            text-align: center;
            border-bottom: 1px solid #f2f2f2;
            border-right: none;
        }
    </style>
    <!--下拉菜单 end-->
<decorator:head />
<link rel="icon" href="<%=base_root%>/theme/images/title.ico" mce_href="<%=base_root%>/theme/images/title.ico" type="image/x-icon" />
</head>
<body>
	<!--  <div class="topLine"></div>  -->
	<div class="indexBox">
        <table cellpadding="0" cellspacing="0" style="width: 1004px; margin: auto;">
            <tbody><tr>
                <td style="width: 22px; height: 87px;">
                    <img src="<%=base_root%>/theme/images/trace_style/top_03_1.png" style="display: block" />
                </td>
                <td id="top_nav_bg" valign="top">
                    <table cellpadding="0" cellspacing="0" style="width: 100%">
                        <tbody>
                            <tr>
                            <td style="padding-top: 15px;width: 455px">
                                <img width="450px" height="40px" src="<%=base_root%>/theme/images/loginimg/logo04t.png" style="display: block" />
                            </td>
                            <td style="padding-top: -5px">
                                            <iframe allowtransparency="true" frameborder="0" width="290"
                                                    height="55" scrolling="no" style="float: left; "
                                                    src="http://tianqi.2345.com/plugin/widget/index.htm?s=2&z=1&t=0&v=0&d=2&k=&f=1&q=1&e=1&a=1&c=59287&w=290&h=55">
                                            </iframe>
                                <div style="float: right; padding-top: 5px; margin-right: 5px;">
                                    <p>欢迎回来</p>
                                    <p>
                                        <font id="currentuname"><%=session.getAttribute(Config.KEY_USERNAME)%>,</font>
                                        <c:choose>
                                            <c:when test="${sessionScope.username == '客人' }">
                                                <a class="regpop" rel="popover"
                                                   href="<%=base_root%>/register.action"
                                                   style="cursor: pointer; color: #0C6DDB;">[注册]</a>
                                                <a class="loginpop" rel="popover"
                                                   href="<%=base_root%>/login.action"
                                                   style="cursor: pointer; color: #0C6DDB;">[登录]</a>
                                            </c:when>
                                            <c:otherwise>
                                                <a href="<%=base_root%>/logout.action"
                                                   style="cursor: pointer; color: #A8CBF2;">[退出]</a>
                                            </c:otherwise>
                                        </c:choose>
                                    </p>
                                </div>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                    <div id="navcont">
                        <div id="nav">
                            <ul style="margin-bottom: 0px;">

                                <%=currentInfo==null?"":currentInfo.getMenu().get("权限模块")%>
                            </ul>

                        </div>
                    </div>

				</td>
                <td style="width: 26px;">
                    <img src="<%=base_root%>/theme/images/trace_style/top_03_3.png" style="display: block" />
                </td>
            </tr>
            </tbody></table>


		<div class="clear"></div>
        <%--<div class="col-md-12">--%>
        <%--<%=currentInfo==null?"":currentInfo.getMenu().get("权限模块")%>--%>
        <%--</div>--%>

		<div class="mainBox" style="margin-top: 20px">

            <div class="clear"></div>
            <tr>
                <td>
                    <img width="1003px" src="<%=base_root%>/theme/images/trace_style/bg_01_03.png" style="display: block;" />
                </td>
            </tr>
			<div class="contentBox row">
				<div class="curLocation">
					&nbsp;&nbsp;&nbsp;★ &nbsp;当前位置：
					<decorator:title default="首页" />
				</div>
				<!-- 
	      <img src="<%=base_root%>/theme/images/medal-bronze.png" width="20" height="20" />★ &nbsp;当前位置：<decorator:title default="首页" />
	      </div>
	      <br></br>
	      -->
				<div class="clear"></div>
				<!-- MAIN BODY -->
				<decorator:body />
				<!-- MAIN FOOT -->
			</div>
			<div class="copyRightBox">
				<div class="copyRight">版权所有：广东友元国土信息工程有限公司 <span style="padding-left: 50px;">技术支持和问题反馈：电话-15626457557 Email-381210782</span><span style="padding-left: 50px;">推荐使用浏览器：chrome</span>
				
				<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1253438889'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s6.cnzz.com/z_stat.php%3Fid%3D1253438889%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
				</div>
				<a href="#" class="backToTop">回到顶部</a>
			</div>

		</div>
	</div>

	<script language="javascript">
		
	<%=session.getAttribute("menu_show")==null?"":("menuProcess('" + session.getAttribute("menu_show") + "');")%>
		
	</script>
	
	<!-- 右侧悬浮 -->
	<div id="leftsead">
		<ul>
			<li><a href="<%=request.getContextPath()%>/push/rsspush.action"><img src="<%=request.getContextPath()%>/theme/left-img/foot03/ll01.png" width="131" height="49" class="hides"/><img src="<%=request.getContextPath()%>/theme/left-img/foot03/rss01.jpg" width="47" height="49" class="shows" /></a></li>
			<li><a href="#"><img src="<%=request.getContextPath()%>/theme/left-img/foot03/ll03.png" width="131" height="49"  class="hides"/><img src="<%=request.getContextPath()%>/theme/left-img/foot03/l03.png" width="47" height="49" class="shows" /></a></li>
			<li><a href="#"><img src="<%=request.getContextPath()%>/theme/left-img/foot03/ll03.png" width="131" height="49"  class="hides"/><img src="<%=request.getContextPath()%>/theme/left-img/foot03/l04.png" width="47" height="49" class="shows" /></a></li>
			<li><a href="#"><img src="<%=request.getContextPath()%>/theme/left-img/foot03/ll03.png" width="131" height="49"  class="hides"/><img src="<%=request.getContextPath()%>/theme/left-img/foot03/l05.png" width="47" height="49" class="shows" /></a></li>
		</ul>
	</div><!--leftsead end-->
</body>
</HTML>

