<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="sunit.accesscontrol.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
	String base_root = request.getContextPath();
%>
<title>人才培训 >> 职业认证鉴定</title>

<script>
	$(document).ready(function() {
		$('a#bktj').click(function(e) {
			e.preventDefault();
			$('li#bktj').addClass('active');
			$('li#wtjd').removeClass('active');

		});

	});
</script>

<script type="text/javascript">
	function doZoom(size) {
		document.getElementById('zoom').style.fontSize = size + 'px'
	}

	var DOM = (document.getElementById) ? 1 : 0;
	var NS4 = (document.layers) ? 1 : 0;
	var IE4 = 0;
	if (document.all) {
		IE4 = 1;
		DOM = 0;
	}

	var win = window;
	var n = 0;

	function findIt() {
		if (document.getElementById("searchstr").value != "")
			findInPage(document.getElementById("searchstr").value);
	}

	function findInPage(str) {
		var txt, i, found;

		if (str == "")
			return false;

		if (DOM) {
			win.find(str, false, true);
			return true;
		}

		if (NS4) {
			if (!win.find(str))
				while (win.find(str, false, true))
					n++;
			else
				n++;

			if (n == 0)
				alert("未找到指定内容.");
		}

		if (IE4) {
			txt = win.document.body.createTextRange();

			for (i = 0; i <= n && (found = txt.findText(str)) != false; i++) {
				txt.moveStart("character", 1);
				txt.moveEnd("textedit");
			}

			if (found) {
				txt.moveStart("character", -1);
				txt.findText(str);
				txt.select();
				txt.scrollIntoView();
				n++;
			} else {
				if (n > 0) {
					n = 0;
					findInPage(str);
				} else
					alert("未找到指定内容.");
			}
		}

		return false;
	}
</script>

<style type="text/css">
.panel-body>.table>tbody>tr>td {
	border-top: 0px;
	border-bottom: 1px solid #BEEC94;
}

.btn-success {
	background-color: #90B82A;
}

.btn-success:hover,btn-success:focus {
	background-color: #86AA29;
}

.nav-pills>li>a {
	border-radius: 0;
	text-align: center;
	width: 200px;
}

.nav-pills>li.active>a,.nav-pills>li.active>a:hover,.nav-pills>li.active>a:focus
	{
	color: rgba(0, 0, 0, 0.62);
	background-color: #c3f29d;
}

.certi a {
	color: #4e5b2c;
	font-weight: bold;
}

td {
	border: 1px solid #BEEC94;
}
</style>
</head>
<body>
	<div class="row certi"
		style="max-width: 1007px; min-width: 820px; margin: 15px">
		<div
			class="input-group col-lg-5 col-xs-5 col-lg-offset-7 col-xs-offset-7"
			style="margin-bottom: 15px">
			<input type="text" id="searchstr" name="searchstr"
				class="form-control" size="10"> <span
				class="input-group-btn">
				<button type="button" class="btn btn-success" style="width: 88px"
					onclick="javascript:findIt();">搜索</button>
			</span>
		</div>

		<div class="col-lg-3 col-xs-3" style="padding-left: 0">
			<div class="panel panel-default">
				<div class="panel-heading myFont15">职业认证鉴定与考试
				</div>
				<div class="panel-body">
					<ul class="nav nav-pills">
						<li class="active"><a href="#tab1" data-toggle="tab">工种目录</a></li>
						<li><a href="#tab2" data-toggle="tab">考试安排</a></li>
						<li id="bktj"><a href="#tab3" data-toggle="tab">报考条件</a></li>
						<li id="wtjd"><a href="#tab4" data-toggle="tab">问题解答</a></li>
						<li><a href="#tab5" data-toggle="tab">鉴定流程</a></li>
						<li><a href="#tab6" data-toggle="tab">教材资料</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="col-lg-9 col-xs-9" style="padding: 0">
			<div class="tab-content">
				<div class="tab-pane active" id="tab1">
					<!--工种目录-->
					<div class="panel panel-default" style="padding: 0;">
						<!-- 					
					<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
				 -->
						<div class="panel panel-heading">
							<table class="table" style="margin: 0;">
								<tr>
									<td class="col-xs-11 col-lg-11 myFont15" style="border: 0;">
                                        工种目录
									</td>
								</tr>
							</table>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<h4 style="font-weight: bold; text-align: center;">农业行业特有工种职业技能鉴定站（农业-051）鉴定工种目录</h4>
							<table align="center" cellpadding="0" cellspacing="0">
								<colgroup>
									<col width="72">
									<col width="115">
									<col width="72" span="3">
									<col width="87">
								</colgroup>
								<tbody>
									<tr>
										<td width="35" height="25" rowspan="2" align="center"
											valign="middle">序号</td>
										<td width="238" height="25" rowspan="2" align="center"
											valign="middle">职业技能鉴定站（所）全称</td>
										<td height="25" colspan="2" align="center" valign="middle">鉴定内容</td>
										<td height="25" colspan="2" align="center" valign="middle">建立单位</td>
									</tr>
									<tr>
										<td width="130" height="25" align="center" valign="middle">工种/证书名称</td>
										<td width="79" height="25" align="center" valign="middle">等级</td>
										<td width="49" height="25" align="center" valign="middle">级别</td>
										<td width="73" height="25" align="center" valign="middle">部门</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">1</td>
										<td width="238" height="25" align="center" valign="middle">电子行业职业技能实训基地</td>
										<td width="130" height="25" align="center" valign="middle">计算机文字录入处理员</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">2</td>
										<td width="238" height="25" align="center" valign="middle">电子行业职业技能实训基地</td>
										<td width="130" height="25" align="center" valign="middle">计算机系统操作工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">3</td>
										<td width="238" height="25" align="center" valign="middle">电子行业职业技能实训基地</td>
										<td width="130" height="25" align="center" valign="middle">计算机软件工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">4</td>
										<td width="238" height="25" align="center" valign="middle">电子行业职业技能实训基地</td>
										<td width="130" height="25" align="center" valign="middle">计算机装配调试工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">5</td>
										<td width="238" height="25" align="center" valign="middle">电子行业职业技能实训基地</td>
										<td width="130" height="25" align="center" valign="middle">网络设备调试工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">6</td>
										<td width="238" height="25" align="center" valign="middle">电子行业职业技能实训基地</td>
										<td width="130" height="25" align="center" valign="middle">计算机维修工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">7</td>
										<td width="238" height="25" align="center" valign="middle">科技部国家制造业信息化培训中心</td>
										<td width="130" height="25" align="center" valign="middle">三维CAD应用工程师</td>
										<td width="79" height="25" align="center" valign="middle">高级</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">8</td>
										<td width="238" height="25" align="center" valign="middle">林业行业职业技能鉴定站（林业050号）</td>
										<td width="130" height="25" align="center" valign="middle">插花员</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">9</td>
										<td width="238" height="25" align="center" valign="middle">林业行业职业技能鉴定站（林业050号）</td>
										<td width="130" height="25" align="center" valign="middle">茶艺师</td>
										<td width="79" height="25" align="center" valign="middle">初、中</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">10</td>
										<td width="238" height="25" align="center" valign="middle">林业行业职业技能鉴定站（林业050号）</td>
										<td width="130" height="25" align="center" valign="middle">园林植物保护工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">11</td>
										<td width="238" height="25" align="center" valign="middle">林业行业职业技能鉴定站（林业050号）</td>
										<td width="130" height="25" align="center" valign="middle">绿化工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">12</td>
										<td width="238" height="25" align="center" valign="middle">林业行业职业技能鉴定站（林业050号）</td>
										<td width="130" height="25" align="center" valign="middle">花卉工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">13</td>
										<td width="238" height="25" align="center" valign="middle">林业行业职业技能鉴定站（林业050号）</td>
										<td width="130" height="25" align="center" valign="middle">园林设计制图员</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">14</td>
										<td width="238" height="25" align="center" valign="middle">林业行业职业技能鉴定站（林业050号）</td>
										<td width="130" height="25" align="center" valign="middle">化学检验工</td>
										<td width="79" height="25" align="center" valign="middle">中级</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">15</td>
										<td width="238" height="25" align="center" valign="middle">林业行业职业技能鉴定站（林业050号）</td>
										<td width="130" height="25" align="center" valign="middle">化学检验工</td>
										<td width="79" height="25" align="center" valign="middle">中级</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">16</td>
										<td width="238" height="25" align="center" valign="middle">林业行业职业技能鉴定站（林业050号）</td>
										<td width="130" height="25" align="center" valign="middle">营林试验员</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">17</td>
										<td width="238" height="25" align="center" valign="middle">林业行业职业技能鉴定站（林业050号）</td>
										<td width="130" height="25" align="center" valign="middle">野生植物保护员</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">18</td>
										<td width="238" height="25" align="center" valign="middle">林业行业职业技能鉴定站（林业050号）</td>
										<td width="130" height="25" align="center" valign="middle">自然保护区巡护监测员</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">19</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">农业技术指导员</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">20</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">农艺工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">21</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">食品检验工</td>
										<td width="79" height="25" align="center" valign="middle">中级</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">22</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">草坪检测工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">23</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">草坪建植工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">24</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">草坪管护工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">25</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">草地植保工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">26</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">盆景工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">27</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">育苗工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">28</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">蔬菜园艺工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">29</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">园林设计施工员</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">30</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">食用菌生产技术指导员</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">31</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">食用菌生产工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">32</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">食用菌菌种工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">33</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">乳品检验工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">34</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">机修钳工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">35</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">农机修理工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">36</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">农机燃油系修理工</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">37</td>
										<td width="238" height="25" align="center" valign="middle">农业行业职业技能鉴定站（农业051号）</td>
										<td width="130" height="25" align="center" valign="middle">农产品经纪人</td>
										<td width="79" height="25" align="center" valign="middle">初、中、高</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">38</td>
										<td width="238" height="25" align="center" valign="middle">全国计算机高新技术考试苏州农业职业技术学院考试站</td>
										<td width="130" height="25" align="center" valign="middle">OSTA</td>
										<td width="79" height="25" align="center" valign="middle">中级、高级</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">39</td>
										<td width="238" height="25" align="center" valign="middle">全国商务管理信息化专业技术测评项目NCBM认证考试中心</td>
										<td width="130" height="25" align="center" valign="middle">物流管理/助理物流师</td>
										<td width="79" height="25" align="center" valign="middle">二级</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">40</td>
										<td width="238" height="25" align="center" valign="middle">全国商务管理信息化专业技术测评项目NCBM认证考试中心</td>
										<td width="130" height="25" align="center" valign="middle">物业管理/助理物业师</td>
										<td width="79" height="25" align="center" valign="middle">二级</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">41</td>
										<td width="238" height="25" align="center" valign="middle">全国商务管理信息化专业技术测评项目NCBM认证考试中心</td>
										<td width="130" height="25" align="center" valign="middle">连锁经营/助理采购师</td>
										<td width="79" height="25" align="center" valign="middle">二级</td>
										<td width="49" height="25" align="center" valign="middle">国家</td>
										<td width="73" height="25" align="center" valign="middle">中央部委</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">42</td>
										<td width="238" height="25" align="center" valign="middle">苏州市职业技能鉴定中心</td>
										<td width="130" height="25" align="center" valign="middle">数控车床操作工</td>
										<td width="79" height="25" align="center" valign="middle">中级</td>
										<td width="49" height="25" align="center" valign="middle">地市</td>
										<td width="73" height="25" align="center" valign="middle">省市部门</td>
									</tr>
									<tr>
										<td width="35" height="25" align="center" valign="middle">43</td>
										<td width="238" height="25" align="center" valign="middle">苏州市职业技能鉴定中心</td>
										<td width="130" height="25" align="center" valign="middle">维修电工</td>
										<td width="79" height="25" align="center" valign="middle">中级</td>
										<td width="49" height="25" align="center" valign="middle">地市</td>
										<td width="73" height="25" align="center" valign="middle">省市部门</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!--工种目录-->

				<div class="tab-pane" id="tab2">
					<!--考试安排-->
					<div class="panel panel-default" style="padding: 0;">
						<div class="panel panel-heading">
							<table class="table" style="margin: 0;">
								<tr>
									<td class="col-xs-11 col-lg-11 myFont15">
                                        考试安排
									</td>
								</tr>
							</table>
						</div>
						<div class="panel-body"
							style="padding: 5px 15px 45px 15px; height: 500px">
							<div style="padding: 7px;">
								<a
									href="http://www.szai.com/zyjnjd/bszn/kqap/2006%E5%B9%B4%E5%BA%A6%E5%86%9C%E8%89%BA%E5%B7%A5%E9%89%B4%E5%AE%9A%E8%80%83%E6%9C%9F%E5%AE%89%E6%8E%92.doc"
									target="_blank">2006年度农艺工鉴定考期安排</a>
							</div>
							<div style="padding: 7px;">
								<a
									href="http://www.szai.com/zyjnjd/bszn/kqap/2005%C4%EA%C7%EF%BC%BE%D4%B0%D2%D5%D3%EB%D4%B0%C1%D6%CF%B5%D6%B0%D2%B5%BC%BC%C4%DC%BC%F8%B6%A8%C5%E0%D1%B5%BC%B0%BF%BC%CA%D4%B0%B2%C5%C5.doc"
									target="_blank">2005年秋季园艺与园林系职业技能鉴定培训及考试安排</a>
							</div>
							<div style="padding: 7px;">
								<a
									href="http://www.szai.com/zyjnjd/bszn/kqap/2005%C4%EA%B6%C8%C7%EF%BC%BE%D6%B0%D2%B5%BC%BC%C4%DC%BC%F8%B6%A8%BF%BC%C6%DA%B0%B2%C5%C5.doc"
									target="_blank">2005年秋季职业技能鉴定考期安排</a>
							</div>
							<div style="padding: 7px;">
								<a
									href="http://www.szai.com/zyjnjd/bszn/kqap/2005%C4%EA%B4%BA%BC%BE%C5%A9%D2%B5%B9%A4%B3%CC%CF%B5%C5%A9%D2%D5%B9%A4%BC%F8%B6%A8%B9%A4%D7%F7%B0%B2%C5%C5.doc"
									target="_blank">2005年春季农业工程系农艺工鉴定工作安排</a>
							</div>
							<div style="padding: 7px;">
								<a
									href="http://www.szai.com/zyjnjd/bszn/kqap/2005%C4%EA%B4%BA%BC%BE%CA%B3%C6%B7%BC%EC%D1%E9%B9%A4%BC%F8%B6%A8%BF%BC%C6%DA%B0%B2%C5%C5.doc"
									target="_blank">2005年春季食品检验工鉴定考期安排</a>
							</div>
							<div style="padding: 7px;">
								<a
									href="http://www.szai.com/zyjnjd/bszn/kqap/2005%C4%EA%B4%BA%BC%BE%D4%B0%D2%D5%D3%EB%D4%B0%C1%D6%CF%B5%CF%E0%B9%D8%D7%A8%D2%B5%BC%BC%C4%DC%BC%F8%B6%A8%B0%B2%C5%C5.doc"
									target="_blank">2005年春季园艺与园林系相关专业技能鉴定安排</a>
							</div>

						</div>
					</div>
				</div>
				<!--考试安排-->

				<div class="tab-pane" id="tab3">
					<!--报考条件-->
					<div class="panel panel-default" style="padding: 0;">
						<div class="panel panel-heading">
							<table class="table" style="margin: 0;">
								<tr>
									<td class="col-xs-11 col-lg-11 myFont15" style="border: 0;">
                                        报考条件
									</td>
								</tr>
							</table>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<div style="padding: 15px;">
								<p class="text-left">
									<strong>申报条件</strong> <span>：指申请从事本职业相应等级职业技能鉴定的人员必须具备的学历、培训经历和工作经历等有关条件。</span><br />

									（一）具备下述条件之一者，可申报国家职业资格五级（初级）：<br /> <span
										style="padding-left: 15px;">1、经本职业初级（五级）正规培训达规定标准学时数，并取得结业证书；
									</span><br /> <span style="padding-left: 15px;">2、在本职业连续见习工作2年以上；
									</span><br /> <span style="padding-left: 15px;">3、本职业学徒期满。 </span><br />

									（二）具备下述条件之一者，可申报国家职业资格四级（中级）： <br /> <span
										style="padding-left: 15px;">1、取得本职业初级（五级）职业资格证书后，连续从事本职业工作3年以上，经本职业中级（四级）正规培训达规定标准学时数，并取得结业证书；
									</span><br /> <span style="padding-left: 15px;">2、取得本职业初级（五级）职业资格证书后，连续从事本职业工作5年以上；
									</span><br /> <span style="padding-left: 15px;">3、连续从事本职业工作7年以上；
									</span><br /> <span style="padding-left: 15px;">4、取得经劳动保障部门审核认定的、以中级（四级）技能为培养目标的中等以上职业学校本职业（专业）毕业证书。
									</span><br /> （三）具备下述条件之一者，可申报国家职业资格三级（高级）： <br /> <span
										style="padding-left: 15px;">1、取得本职业中级（四级）职业资格证书后，连续从事本职业工作4年以上，经本职业高级（三级）正规培训达规定标准学时数，并取得结业证书；
									</span><br /> <span style="padding-left: 15px;">2、取得本职业中级（四级）职业资格证书后，连续从事本职业工作7年以上；
									</span><br /> <span style="padding-left: 15px;">3、取得高级技工学校或经劳动保障行政部门审核认定的、以高级（三级）技能为培养目标的高等职业学校本职业（专业）毕业证书；
									</span><br /> <span style="padding-left: 15px;">4、取得本职业中级（四级）职业资格证书的大专以上本专业或相关专业毕业生，连续从事本职业工作2年以上。
									</span><br /> （四）具备下述条件之一者，可申报国家职业资格二级（技师）： <br /> <span
										style="padding-left: 15px;">1、取得本职业高级（三级）职业资格证书后，连续从事本职业工作5年以上，经本职业技师（二级）正规培训达规定标准学时数，并取得结业证书；
									</span><br /> <span style="padding-left: 15px;">2、取得本职业高级（三级）职业资格证书后，连续从事本职业工作8年以上；
									</span><br /> <span style="padding-left: 15px;">3、取得本职业高级（三级）职业资格证书的高级技工学校本职业（专业）毕业生，连续从事本职业工作2年以上。
									</span><br /> （五）具备下述条件之一者，可申报国家职业资格一级（高级技师）：<br /> <span
										style="padding-left: 15px;">1、取得本职业技师（二级）职业资格证书后，连续从事本职业工作3年以上，经本职业高级技师（一级）正规培训达规定标准学时数，并取得结业证书；
									</span><br /> <span style="padding-left: 15px;">2、取得本职业技师（二级）职业资格证书后，连续从事本职业工作5年以上。
									</span><br /> 各职业的具体申报条件，应根据各个职业的国家职业标准要求确定。
								</p>
							</div>
						</div>
					</div>
				</div>
				<!--报考条件-->

				<div class="tab-pane" id="tab4">
					<!--问题解答-->
					<div class="panel panel-default" style="padding: 0;">
						<div class="panel panel-heading" >
							<table class="table" style="margin: 0;">
								<tr>
									<td class="col-xs-11 col-lg-11 myFont15" style="border: 0;">
                                        问题解答
									</td>
								</tr>
							</table>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<div style="padding: 30px;">
								<div>
									<p align="center">
										<strong>职业技能鉴定有关问题解答</strong>
									</p>
									<a href="#1">一、申报职业技能鉴定注意事项有哪些？</a><br /> <a href="#2">二、参加农业行业特有工种职业技能鉴定应符合哪些条件？</a><br />
									<a href="#3">三、职业技能鉴定考场如何安排？</a><br /> <a href="#4">四、参加实际操作技能考核的考生，应注意哪些事项？</a><br />
									<a href="#5">五、考生如何查询成绩？</a><br /> <a href="#6">六、职业技能鉴定单科合格成绩的有效期如何计算？</a><br />
									<a href="#7">七、全国高新技术考试是指什么？</a><br /> <a href="#8">八、什么是国家职业资格证书？</a><br />
									<a href="#9">九、什么是职业技能鉴定站（所）？</a><br /> <a href="#10">十、为什么要实行国家职业资格证书制度？</a><br />
									<a href="#11">十一、实施职业资格证书制度的法律依据是什么？</a><br /> <a href="#12">十二、职业资格证书是如何办理的？</a><br />
									<a href="#13">十三、国家职业资格证书与其他证书的区别是什么？</a><br /> <a href="#14">十四、国家职业资格证书有什么用处？</a><br />
									<a href="#15">十五、哪些人需要国家职业资格证书？</a><br /> <a href="#16">十六、职业技能鉴定方式怎样？</a><br />

								</div>
								<div style="margin-top: 15px;">
									<p align="center">
										<strong>国家职业资格证书和技术工种从业人员持证上岗制度政策问答</strong>
									</p>

									一、关于就业准入制度<br /> <a href="#21">1、&nbsp;&nbsp;为什么要制定《招用技术工种从业人员规定》？《规定》对促进就业有哪些积极意义？</a><br />
									<a href="#22">2、&nbsp;&nbsp;制定《规定》的主要依据是什么？</a> <br /> <a
										href="#23">3、《规定》的核心内容是什么？</a><br /> <a href="#24">4、《规定》对用人单位有什么要求？</a><br />
									<a href="#25">5、对用人单位违反《规定》招用未取得相应职业资格证书的从业人员，有哪些处罚措施？</a><br />
									<a href="#26">6、国家对新生劳动力就业有什么要求？</a><br /> <a href="#27">7、目前，许多已经在岗的从事技术工种的人员没有取得相应的职业资格证书，是不是也会被处罚？</a><br />
									<a href="#28">8、《规定》对职业介绍机构有什么要求？求职者到职业介绍机构求职登记时应注意什么？</a><br />
									<br /> 二、关于劳动预备制度<br /> <a href="#29">9、什么是劳动预备制度？</a><br />
									<a href="#210">10、实施劳动预备制度的对象范围是什么？</a><br /> <a href="#211">11、怎样实施劳动预备制度？</a><br />
									<a href="#212">12、参加劳动预备制培训是否需要 经过入学考试？</a><br /> <a
										href="#213">13、劳动预备制度的培训内容是什么？培训期限有什么要求？</a><br /> <a
										href="#214">14、参加劳动预备制度人员如何就业？</a>
								</div>

							</div>
							<div style="padding: 30px;">
								<p align="center">
									<strong>职业技能鉴定有关问题解答</strong>
								</p>
								<p align="left">
									<strong><a id="1" name="1"></a>一、申报职业技能鉴定注意事项有哪些？<br />
									</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>（1）本年度第一次申报职业技能鉴定，首先要根据所申报职业的资格条件，确定自己申报鉴定的等级。如果需要培训，要到经政府有关部门批准的培训机构参加培训。申报职业资格鉴定时要准备好身份证、毕业证书、职业资格证、培训毕（结）业证书复印件和原件验证，大一寸同版近期免冠彩色相片3张(照片背后注明姓名、所在单位、鉴定级别)，到报名单位办理报名手续。参加正规培训的须有培训机构证明，工作年限须有本人所在单位证明。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>（2）报名表内各项内容应如实填写。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>（3）本年度第二次以上报名，考生只需填写报名表，并出示前次准考证、正式身份证。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>（4）经鉴定机构审查符合要求的，由鉴定站(所)颁发准考证。参加考试时必须携带准考证、身份证，否则不能参加考试。
								</p>
								<p>
									<strong><a id="2" name="2"></a>二、参加农业行业特有工种职业技能鉴定应符合哪些条件？<br />
										&nbsp;&nbsp;&nbsp;&nbsp;</strong>参看<a href="#tab3" data-toggle="tab"
										id="bktj">报考条件</a>。
								</p>
								<p align="left">
									<strong><a id="3" name="3"></a>三、职业技能鉴定考场如何安排？<br />
										&nbsp;&nbsp;&nbsp;&nbsp;</strong>考场安排采用每批报名结束后统一安排的办法，考生可在考试前一周到<strong>报名点</strong>查看或拨打电话（<strong>0512-65323147</strong>）查询考场和地点。
								</p>
								<p>
									<strong><a id="4" name="4"></a>四、参加实际操作技能考核的考生，应注意哪些事项？<br />
									</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>考生参加员实际操作技能考核应注意：<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>(1)考生凭准考证、身份证或有效证件进入考场。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>(2)各组考生须在考前15分钟在技能鉴定室集中报到，迟到10分钟不得入场，并按缺考处理。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>(3)各组参加考试的次序以当天的安排表为准。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>(4)未列入当期名单的人员，另行安排考核，时间待通知。
								</p>
								<p>
									<strong><a id="5" name="5"></a>五、考生如何查询成绩？<br /> </strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>考生在考试结束后，可在报名单位公告栏查询成绩：<br />
								<p align="left">
									<strong><a id="6" name="6"></a>六、职业技能鉴定单科合格成绩的有效期如何计算？<br />
										&nbsp;&nbsp;&nbsp;&nbsp;</strong>根据国家有关规定，从1997年起，职业技能鉴定单科合格成绩有效期为两年。应知或应会任一单科考核合格，在二年内（按考试日期推算）另一单科考核合格后，可依照相关程序换领《中华人民共和国职业资格证书》。
								</p>
								<p>
									<strong><a id="7" name="7"></a>七、全国高新技术考试是指什么？<br />
										&nbsp;&nbsp;&nbsp;&nbsp;</strong>根据劳部发[1996]19号《关于开展计算机及信息高新技术培训考核工作的通知》授权劳动和社会保障部职业技能鉴定中心，在全国范围内统一组织实施的社会化职业技能考试。该项考试是由劳动部职业技能鉴定中心负责编制培训教材及质量保障和考核命题，统一考评人员培训考核。参加培训并考试合格者由劳动部职业技能鉴定中心统一核发“计算机及信息高新技术培训合格证书”，作为具备从事相应工作能力的凭证。
								</p>
								<p>
									<strong><a id="8" name="8"></a>八、什么是国家职业资格证书？<br />
										&nbsp;&nbsp;&nbsp;&nbsp;</strong>职业资格证书是国家证书制度的一个组成部分，它通过国家法律、法令和行政条规的形式，以政府的力量来推行，由政府认定的授权机构来实施，在全国范围内通用的，对劳动者的从业资格进行认定的国家证书。对民航行业来说，民航总局职业技能鉴定指导中心领导和实施这项工作，鉴定中心下设民航行业特有工种职业技能鉴定站。我站为民航行业特有工种第八职业技能鉴定站，是由劳动和社会保障部批准成立，在鉴定中心授权和领导下，具体对民航行业特有职业（工种）进行职业资格认证的机构之一。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>我国的职业技能鉴定体系是从50年代开始形成的传统的八级技术等级制度基础上建立起来的，从94年起，我国就开始试行新的职业技能鉴定制度，并通过《劳动法》、《职业教育法》、《职业资格证书规定》、《职业技能鉴定规定》等法律法规上确定了职业技能鉴定的基本法律地位和政策保障。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>现行的国家职业资格证书在2000年3月16日劳动和社会保障部第6号令《招用技术工种从业人员规定》中得以明确，该令从2000年7月1日起开始实行。文件中对整个证书体系分为：国家职业资格五级/初级、国家职业资格四级/中级、国家职业资格三级/高级、国家职业资格二级/技师、国家职业资格一级/高级技师共五个层次。<br />
									文件要求，对所有从事或转岗从事技术工种的劳动者，都要达到相应的职业技能要求，持证上岗。
								</p>
								<p>
									<strong><a id="9" name="9"></a>九、什么是职业技能鉴定站（所）？<br />
									</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>职业技能鉴定站（所）是经劳动保障行政部门批准设立的实施职业技能鉴定的场所，它是职业技能鉴定的基层组织，承担规定范围内的职业技能鉴定活动。具体工作任务包括：（1）受理职业技能鉴定的申请，对申报人的资格条件进行审查，经鉴定指导中心核准后，签发准考证；（2）组织申报人员按规定的时间、地点和方式进行考核或考评；（3）协调鉴定过程中的有关事务；（4）汇总鉴定成绩，并负责报送鉴定指导中心；（5）向鉴定指导中心提供鉴定报告，对考评小组的工作提出评价意见；（6）协助鉴定指导中心办理证书手续，并负责向鉴定合格者发放职业资格证书。（7）负责鉴定的咨询服务和信息统计等工作。
								</p>
								<p>
									<strong><a id="10" name="10"></a>十、为什么要实行国家职业资格证书制度？</strong><br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>推行职业资格证书制度的根本目的是要促进劳动者改善素质结构和提高素质水平，增强劳动者就业能力和适应职业变化的能力。国家通过实行就业准入控制，推行职业资格证书制度，一是可以规范劳动力市场建设，为劳动者就业创造平等竞争就业的环境；二是可以实现劳动力资源合理开发和配置，使其纳入良性发展轨道；三是可以促进劳动者主动提高自身的技术业务素质，使我国的就业从安置型就业转为依靠素质就业，达到使劳动者尽快就业和稳定就业的目的。从世界各国的情况看，绝大多数国家都有自己的职业资格证书制度。职业资格证书是国际上唯一通用的从业资格证明。在改革开放二十多年后的今天，我国的国际化进程逐渐加快，伴随着我国正式加入世贸组织，外资企业必将大量进入中国，一方面对我国劳动力的素质会有更高的要求，另一方面职业资格证书制度的推行，也为劳动者广泛就业以及竞聘上岗提供一个公平的依据。
								</p>
								<p>
									<strong><a id="11" name="11"></a>十一、实施职业资格证书制度的法律依据是什么？</strong><br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>《劳动法》第八章第六十九条规定：“国家确定职业分类，对规定的职业制定职业技能标准，实行职业资格证书制度，由经过政府批准的考核鉴定机构负责对劳动者实施职业技能考核鉴定”。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>《职业教育法》第一章第八条明确指出：“实施职业教育应当根据实际需要，同国家制定的职业分类和职业等级标准相适应，实行学历文凭、培训证书和职业资格证书制度”。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>这些法规确定了国家推行职业资格证书制度和开发职业技能鉴定的法律依据。
								</p>
								<p>
									<strong><a id="12" name="12"></a>十二、职业资格证书是如何办理的？<br />
										&nbsp;&nbsp;&nbsp;&nbsp;</strong>根据国家有关规定，输职业资格证书的程序为：职业技能鉴定站（所）将考核合格人员名单报经当地职业技能鉴定指导中心审核，再报经同级劳动保障行政部门或行业部门劳动保障工作机构批准后，由职业技能鉴定指导中心按照国家规定的证书编码方案他填写格式要求统一输证书，加盖职业技能鉴定机构专用印章，经同级劳动保障行政部门或行业部门劳动保障工作机构验印后，由职业技能鉴定站（所）送交本人。
								</p>
								<p>
									<strong><a id="13" name="13"></a>十三、国家职业资格证书与其他证书的区别是什么？<br />
									</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>国家职业资格证书是通过国家法律、法令和行政条规的形式，以政府的力量来推行，由政府授权认定的鉴定机构来实施的；国家职业资格证书是劳动者从事相应职业（工种）的资格凭证；国家职业资格证书作为劳动者就业上岗和用人单位招收录用人员的主要依据；国家职业资格证书在全国范围内通用。
								</p>
								<p>
									<strong><a id="14" name="14"></a>十四、国家职业资格证书有什么用处？</strong><br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>实行国家职业资格证书制度就是要对"从事技术复杂以及涉及到国家财产、人民生命安全的消费者利益的工种（职业）"实行准入控制。未经过职业培训或培训，未取得相应职业资格证书的人员，不得在国家规定就业准入工种（职业）范围内就业，职业介绍机构和用人单位不得介绍和招用。对违反规定的，劳动保障监察机构要依法进行行政处罚。简单的说，没有经过职业技能培训获得国家职业资格证书的求职人员，一是用人单位不得招用，二是职业介绍机构不得介绍。
								</p>
								<p>
									<strong><a id="15" name="15"></a>十五、哪些人需要国家职业资格证书？<br />
										&nbsp;&nbsp;&nbsp;&nbsp;</strong>无论从事什么职业首先必须具备相应工作的职业资格，是一种发展趋势，是国家劳动用工制度发展的必然，它有利于提高劳动者素质，有利于增强国家各种产品以及服务的国际竞争力，有利于国际接轨。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>一、在职人员。从职介机构求职的劳动者到实行准入控制的工种范围内就业时，必须具有国家职业资格证书。用人单位和职业介绍机构发布技术工种人员招聘广告时，必须在应聘人员应具备的条件中注明职业资格要求。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>二、新生劳动力。普通高中、职业高中、职业中专、大学应届毕业的新生劳动力，不但要经过职业培训、职业教育，取得毕业证书，还必须取得相应的职业资格证书后才能实行准入控制的技术工种范围内就业。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>三、在职人员。对从事技术工种而还没有相应职业资格证书的在岗人员，必须参加职业技能培训，拿到职业资格证书再上岗。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>四、转岗人员。对已经有职业资格证书，但是又更换了的在职人员，必须重新参加职业培训，取得现在岗位的职业资格证书再上岗。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>五、政策性安置人员。用人单位安排国家政策性安置人员从事技术工种工作的，应当先组织培训，达到相应工种（职业）技能要求后再上岗。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>六、下岗职工。下岗职工再就业前都必须进行职业技能培训，拿到职业资格证书才能再就业。
								</p>
								<p>
									<strong><a id="16" name="16"></a>十六、职业技能鉴定方式怎样？<br />
										&nbsp;&nbsp;&nbsp;&nbsp;</strong>国家职业资格鉴定考试方式是统一的，须经过理论知识和操作技能两项考核。理论考试采取闭卷笔试方式，技能考试根据实际情况，采用现场操作、笔试、答辩相结合的方式。计分一般采用百分制，两部分成绩都在60分以上为鉴定合格，80分以上为良好，95分以上为优秀。
								</p>

								<hr size="1">
								<p align="center">
									<strong>国家职业资格证书和技术工种从业人员</strong>
								</p>
								<p align="center">
									<strong>持证上岗制度政策问答</strong>
								</p>
								<p>
									<strong>一、关于就业准入制度</strong>
								</p>
								<p>
									<strong><a id="21" name="21"></a>1、为什么要制定《招用技术工种从业人员规定》？《规定》对促进就业有哪些积极意义？</strong><br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>制定这样一个《规定》的基本出发点和落脚点，就是加快提高劳动者素质，增强企业竞争力，同时也是为了适应促进企业安全生产，提高效益，保护消费者利益等方面的迫切需要。随着知识经济的兴起和经济全球化时代的到来，国力竞争日趋激烈。国力的强弱越业越取决于劳动者的素质，取决于各类人才的质量和数量。国家实行先培训后上岗的就业培训制度，特别是对技术工种从业人员实行就业准入制度，其目的就是要促进劳动者改善素质结构和提高素质水平，进而促进劳动者就业和再就业能力的提高。通过实行就业准入控制，推行职业资格证书制度，一是可以规范劳动力市场建设，为劳动者就业创造平等竞争就业的环境；二是可以实现劳动力资源合理开发和配置，并使其纳入良性发展轨道；三是可以促进劳动者主动提高自身的技术业务素质，使我国的就业从安置型转为依靠素质就业，达到使劳动者尽快就业和稳定就业的目的。<br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>实践证明，凡是经过必要的职业培训，具备劳动力市场需要的职业技能的劳动者，在竞争就业中就会处于优势地位，即使下岗失业也能在短期内通过自己的努力实现再就业。相反，则会处于十分不利的地位，面对众多的就业机会而难以实现就业。因此，对技术工种从业人员实行就业准入制度，其根本目的是提高劳动者技能水平，增强其就业能力和适应职业变化的能力，实现高质量就业和稳定就业。
								</p>
								<p>
									<br /> <strong><a id="22" name="22"></a>2、制定《规定》的主要依据是什么？</strong><br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>《劳动法》规定：“从事技术工种的劳动者，上岗前必须经过培训”。“国家确定职业分类，对规定的职业制定职业技能鉴定标准，实行职业资格证书制度，由经过政府批准的考核鉴定机构负责对劳动者实施职业技能考核鉴定”。《职业教育法》规定：“国家实行劳动者在就业前或者上岗前接受必要的职业教育的制度”。《规定》是根据上述法律依据而制定的，它明确了用人单位招用技术工种从业人员应遵循的具体要求，并同时规定了违反有关规定所应承担的法律责任。
								</p>
								<p>
									<br /> <strong><a id="23" name="23"></a>3、《规定》的核心内容是什么？</strong><br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>《规定》共12条。其核心内容是对技术工种从业人员实行先培训后上岗的就业准入制度，要求用人单位招用从事技术工种从业人员，必须从取得相应职业资格证书的人员中录用。《规定》还同时确定了90个必须持职业证书就业的技术工种（职业）目录。
								</p>
								<p>
									<br /> <strong><a id="24" name="24"></a>4、《规定》对用人单位有什么要求？</strong><br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>用人单位招收和使用合格的劳动者到技术岗位工作，是保证生产正常运转，提高产品和服务质量，保障生产安全的必然要求。《规定》的制定和实施，正是适应了用人单位的这种内在需求。用人单位可以依据《规定》，充分行使用工自主权，抵制招工中的不正之风，对职工提出素质和技能的要求，搞好用工管理。
								</p>
								<p>
									<br /> <strong><a id="25" name="25"></a>5、对用人单位违反《规定》招用未取得相应职业资格证书的从业人员，有哪些处罚措施？</strong><br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>用人单位违反《规定》招用未取得相应职业资格证书的劳动者从事技术工种工作的，由县级以上劳动保障行政部门给予警告，并可处以1000元以下罚款，同时责令用人单位限期对有关人员进行相关培训，取得职业资格证书后再上岗。
								</p>
								<p>
									<br /> <strong><a id="26" name="26"></a>6、国家对新生劳动力就业有什么要求？</strong><br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>《规定》的规范对象主要是初次就业的劳动者。根据《规定》的要求，今后凡初次就业的劳动者，包括城镇初高中应届毕业生、待业人员以及农村从事非农产业或进城务工人员，只要从事国家规定的技术工种（职业）工作的，必须取得相应的职业资格证书，方可就业上岗。
								</p>
								<p>
									<br /> <strong><a id="27" name="27"></a>7、目前，许多已经在岗的从事技术工种的人员没有取得相应的职业资格证书，是不是也会被处罚？</strong><br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>在《规定》发布前，有些用人单位已经招用了未取得职业资格证书的人员从事技术工种工作的，对这一情况，《规定》中虽然没有规定要进行相应处罚，但根据全面推行职业资格证书制度的需要，要求用人单位积极组织职工开展岗位培训，使从事技术工种人员逐步达到本工种的职业技能要求；对职工个人，也要求他们应积极参加职业培训和职业技能鉴定，提高自身的工作能力和就业竞争能力。
								</p>
								<p>
									<strong><a id="28" name="28"></a>8、《规定》对职业介绍机构有什么要求？求职者到职业介绍机构求职登记时应注意什么？</strong><br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>职业介绍机构要在显著位置公告国家规定的持职业资格证书就业的工种（职业）范围；在发布技术工种人员招聘广告时，对应聘人员条件须注明职业资格要求；在办理职业介绍时，以从事国家规定的技术工种而未取得相应职业资格证书的人员，不予推荐就业。求职者到职业介绍机构应聘时，如要从事国家规定的技术工种，应主动出示职业资格证书。
								</p>
								<p>
									<strong>二、关于劳动预备制度</strong>
								</p>
								<p>
									<strong><a id="29" name="29"></a>9、什么是劳动预备制度？</strong><br /> <strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>劳动预备制度是国家为提高青年劳动者素质，培养劳动后备军而建立和推行的一项新型培训就业制度。根据国家有关规定，从1999年起，在全国城镇普遍推行劳动预备制度，组织新生劳动力和其他求职人员，在就业前接受1—3年的职业培训和职业教育，使其取得相应的职业资格或掌握一定的职业技能后，在国家政策的指导和帮助下，通过劳动力市场实现就业。
								</p>
								<p>
									<strong><a id="210" name="210"></a>10、实施劳动预备制度的对象范围是什么？</strong><br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>实行劳动预备制度的主要对象是城镇未能继续升学的初、高中毕业生，以及农村未能继续升学并准备从事非农产业工作或进城务工的初、高中毕业生。对准备从事农业生产劳动的初、高中毕业生，各地可从本地实际出发，另行制定培训办法。各地还可根据实际情况引导城镇待业人员和国有企业下岗职工参加劳动预备制度培训。
								</p>
								<p>
									<strong><a id="211" name="211"></a>11、怎样实施劳动预备制度？</strong><br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>劳动预备制度通过全面开展职业培训和职业教育来实施。充分利用现有教育、职业培训资源，广泛动员社会各方面的力量，搞好对劳动预备制人员的职业培训和职业教育。技工学校、就业训练中心和其他职业培训机构，要积极主动承担劳动预备制人员培训任务，培养社会各方面需要的适用人才；充分利用并进一步发展中等职业学校和职业技术学院等职业学校教育，培养生产、管理、服务等第一线急需的专门人才；企业办的各类培训机构也要充分利用现有的培训设施，挖掘培训潜力，对尚未经过职业培训的职工进行岗位培训。
								</p>
								<p>
									<strong><a id="212" name="212"></a>12、参加劳动预备制培训是否需要经过入学考试？</strong><br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>参加劳动预备制的人员进行预备制的人员进行职业培训原则上实行免试入学，需要经过文化考核和能力测试的，由当地政府确定；进入各类职业学校学习按国家或地方有关规定进行。
								</p>
								<p>
									<strong><a id="213" name="213"></a>13、劳动预备制度的培训内容是什么？培训期限有什么要求？</strong><br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>根据劳动力市场需求，按照职业分类和职业技能标准，对劳动预备制人员进行职业培训和职业教育。培训内容主要是进行职业技能和专业理论学习，并进行必要的文化知识学习和创业能力培训，同时进行职业道德、职业指导、法制观念等教育。培训时间根据学员文化基础和所选专业确定，技术职业（工种）一般应在2年以上，非技术职业（工种）一般应在1年以上。特殊职业（工种）的培训期限和内容，根据行业或企业要求，经有关部门核准后，可适当调整。
								</p>
								<p>
									<strong><a id="214" name="214"></a>14、参加劳动预备制度人员如何就业？</strong><br />
									<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>参加劳动预备制人员，由就业服务机构纳入当地劳动力信息资源管理系统，根据国家就业方针和劳动力市场需求，组织双向选择，优先推荐就业，或指导其组织起来就业和自谋职业，并为他们提供各种就业服务。
								</p>
							</div>
						</div>
					</div>
				</div>
				<!--问题解答-->

				<div class="tab-pane" id="tab5">
					<!--鉴定流程-->
					<div class="panel panel-default" style="padding: 0;">
						<!-- 					
					<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
				 -->
						<div class="panel panel-heading" >
							<table class="table" style="margin: 0;">
								<tr>
									<td class="col-xs-11 col-lg-11 myFont15" style="border: 0;">
                                        鉴定流程
									</td>
								</tr>
							</table>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<h4 style="font-weight: bold; text-align: center;">职业技能鉴定工作程序图</h4>
							<div class="text-center">
								<img
									src="<%=base_root%>/theme/images/trainimg/certiworkflow.jpg" />
							</div>
						</div>
					</div>
				</div>
				<!--鉴定流程-->

				<div class="tab-pane" id="tab6">
					<!--教材资料-->
					<div class="panel panel-default" style="padding: 0;">
						<div class="panel panel-heading">
							<table class="table" style="margin: 0;">
								<tr>
									<td class="col-xs-11 col-lg-11 myFont15" style="border: 0;">
                                        教材资料
									</td>
								</tr>
							</table>
						</div>
						<div class="panel-body"
							style="padding: 5px 15px 45px 15px; height: 500px">
							<div style="padding: 15px">
								<p>各鉴定工种的理论和技能教材资料，由相关培训机构提供。</p>
							</div>
						</div>
					</div>
				</div>
				<!--教材资料-->
			</div>
		</div>
	</div>
</body>
</html>
