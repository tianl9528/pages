<%@ page contentType="text/html;charset=utf-8" %>
<%

String menus = "";
System.out.print(menus);
%>
<html>
<head>
<title>考评管理&gt;&gt;考评内容</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

</head>
<body>
<link rel="stylesheet" href="<%= request.getContextPath()%>/theme/zTreeStyle.css" type="text/css">
<script type="text/javascript" src="<%= request.getContextPath()%>/theme/js/jquery.ztree.core-3.5.js"></script>
    
<script language="JavaScript" type="text/javascript">
var setting = {};
var zNodes =[
			 { name:"广东电网公司考评", open:true,
				children: [
					{ name:"投票",
						children: [
							{ name:"十大新闻评选"}
						]
}
					
				]},
			
			 ];
$(document).ready(function(){
	$.fn.zTree.init($("#treemenu"), setting, zNodes);
});


//,
//						children: [
//							{ name:"政治素质"},
//							{ name:"党风廉政"},{ name:"党风廉政"},{ name:"企业党建"},{ name:"经营业绩"}
//						]
//≤ ≥ <
</script>
 
<div class="body_title">
	<li style="padding-top:8px; padding-left:5px">考评管理>>考评内容</li>
</div>
<BR>
 <table class="main_content" align="center">
      <tr class="_content_select" style="text-align:center;">
      <td class="content_select" style="width:200px;vertical-align:top; text-align:left">
      <input name="btn2" value="新增" class="btn" type="button">
      <input name="btn2" value="修改" class="btn" type="button">
      <input name="btn2" value="删除" class="btn" type="button">left:5px">
      <!--四好领导班子评分标准
      <br>-->
      <ul id="treemenu" class="ztree">
      </ul></td>
      <td class="content_select" style="width:700px; height:600xp;vertical-align:top">
      
      <table class="main_content" align="center">
      <tr class="_content_select" style="text-align:center;">
        <td colspan="2" class="content_select" style="text-align:right">
      <!--选择:<select name="23"><option value="12">123456</option></select>-->
     <!-- 日期:<input name="sdate" type="text" class="txt_select_date" />
      条件1:<input name="1234" type="text" class="txt_select">-->名称:
      <input name="1234" type="text" class="txt_select">
      <input name="btn" value="查询" type="button" class="btn">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;
      <input name="btn8" value="新增" type="button" class="btn" />
      
      <input name="btn8" value="修改" type="button" class="btn" />
      <input name="btn8" value="删除" type="button" class="btn" /></td>
    </tr>
  </table>
      
      <table class="main_content" align="center" id="list_table1">
 				<tr class="_title">
				<td  class="title" colspan="6">指标内容</td>
				</tr>
				<tr class="">
				  <td width="32" class="content" nowrap="nowrap">序号</td>
				  <td width="32" class="content" nowrap="nowrap">选择</td>
				  <td width="252" class="content" nowrap="nowrap">指标名称</td>
				  <td width="95" class="content" nowrap="nowrap">多维度</td>
				  <td width="80" class="content" nowrap="nowrap">评分方式</td>
				  <td width="105" class="content" nowrap="nowrap">评分范围</td>
	    </tr>
				<tr class="">
				  <td class="content">1</td>
				  <td class="content"><input name="setmealID" id="142" value="14" msg="1080.0" type="radio"></td>
				  <td class="content">五一活动</td>
				  <td class="content">否</td>
				  <td class="content">单选</td>
				  <td class="content">1</td>
	    </tr>
				<tr class="">
				  <td class="content">2</td>
				  <td class="content"><input name="setmealID" id="1424" value="14" msg="1080.0" type="radio"></td>
				  <td class="content">某某同志荣获劳动模范</td>
				  <td class="content">否</td>
				  <td class="content">单选</td>
				  <td class="content">1</td>
	    </tr>
				<tr class="">
				  <td class="content">3</td>
				  <td class="content"><input name="setmealID" id="1423" value="14" msg="1080.0" type="radio"></td>
				  <td class="content">全年业绩提升超预期</td>
				  <td class="content">否</td>
				  <td class="content">单选</td>
				  <td class="content">1</td>
	    </tr>
				<tr class="">
				  <td class="content">4</td>
				  <td class="content"><input name="setmealID" id="1422" value="14" msg="1080.0" type="radio"></td>
				  <td class="content">某某领导莅临指导</td>
				  <td class="content">否</td>
				  <td class="content">单选</td>
				  <td class="content">1</td>
	    </tr>
		<tr class="_content" style="text-align: center;"><td class="content" colspan="6" ><!--<input name="btn" value="关闭" class="btn" type="button">--></td></tr>
  </table>
      <br><br>
      <table class="main_content" align="center">
      <tr class="_content_select" style="text-align:center;">
        <td colspan="2" class="content_select" style="text-align:right">
      <!--选择:<select name="23"><option value="12">123456</option></select>-->
     <!-- 日期:<input name="sdate" type="text" class="txt_select_date" />
      条件1:<input name="1234" type="text" class="txt_select">-->     &nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;
      <input name="btn8" value="新增" type="button" class="btn" />
      
      <input name="btn8" value="修改" type="button" class="btn" />
      <input name="btn8" value="删除" type="button" class="btn" /></td>
    </tr>
  </table>
  
      <table class="main_content" align="center">
 				<tr class="_title">
				<td class="title" colspan="2">评分标准一</td>
				</tr>
				<tr class="_content">
				<td class="content" width="200" style="text-align: center;">评分标准名称</td>
				<td class="content"><input name="title2" type="text" class="txt_input" value="优秀" size="50"/></td>
				</tr>
                  <tr class="_content" >
                      <td class="content" style="text-align: center;">最大百分值(≤)</td>
                      <td class="content" nowrap="nowrap"><input name="title3" type="text" class="txt_input" value="" size="50"/></td>
                  </tr>
   			    <tr class="_content" >
    			    <td class="content" style="text-align: center;"><span class="content" style="text-align: center;">最小百分值(≥)</span></td>
    			    <td class="content" nowrap="nowrap"><input name="title" type="text" class="txt_input" value="" size="50"/></td>
  			    </tr>
        </table>
      
 <table class="main_content" align="center">
 				<tr class="_title">
				<td class="title" colspan="2">评分标准二</td>
				</tr>
				<tr class="_content">
				<td class="content" width="200" style="text-align: center;">评分标准名称</td>
				<td class="content"><input name="title2" type="text" class="txt_input" value="良好" size="50"/></td>
				</tr>
                  <tr class="_content" >
                      <td class="content" style="text-align: center;">最大百分值(&lt;)</td>
                      <td class="content" nowrap="nowrap"><input name="title3" type="text" class="txt_input" value="" size="50"/></td>
                  </tr>
   			    <tr class="_content" >
    			    <td class="content" style="text-align: center;"><span class="content" style="text-align: center;">最小百分值(≥)</span></td>
    			    <td class="content" nowrap="nowrap"><input name="title" type="text" class="txt_input" value="" size="50"/></td>
  			    </tr>
        </table>     
 <table class="main_content" align="center">
 				<tr class="_title">
				<td class="title" colspan="2">评分标准三</td>
				</tr>
				<tr class="_content">
				<td class="content" width="200" style="text-align: center;">评分标准名称</td>
				<td class="content"><input name="title2" type="text" class="txt_input" value="良好" size="50"/></td>
				</tr>
                  <tr class="_content" >
                      <td class="content" style="text-align: center;">最大百分值(&lt;)</td>
                      <td class="content" nowrap="nowrap"><input name="title3" type="text" class="txt_input" value="" size="50"/></td>
                  </tr>
   			    <tr class="_content" >
    			    <td class="content" style="text-align: center;"><span class="content" style="text-align: center;">最小百分值(≥)</span></td>
    			    <td class="content" nowrap="nowrap"><input name="title" type="text" class="txt_input" value="" size="50"/></td>
  			    </tr>
        </table>      
      <BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR>
      
      
      
 <br><br><br><br><br><br><br><br><br><br>
      </td>
      </tr>
	</table>  
</body>
</html>