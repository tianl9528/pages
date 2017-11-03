<%@ page contentType="text/html;charset=utf-8" %>
<%

String menus = "";
System.out.print(menus);
%>
<html>
<head>
<title>权限管理&gt;&gt;菜单管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

</head>
<body>
<link rel="stylesheet" href="<%= request.getContextPath()%>/theme/zTreeStyle.css" type="text/css">
<script type="text/javascript" src="<%= request.getContextPath()%>/theme/js/jquery.ztree.core-3.5.js"></script>
    
<script language="JavaScript" type="text/javascript">
var setting = {};
var zNodes =[<%=menus%>];
$(document).ready(function(){
	$.fn.zTree.init($("#treemenu"), setting, zNodes);
});


</script>
 
<div class="body_title">
	<li style="padding-top:8px; padding-left:5px">系统管理>>>菜单管理</li>
</div>
<BR>
 <table class="main_content" align="center">
      <tr class="_content_select" style="text-align:center;">
      <td class="content_select" style="width:200px;vertical-align:top"><ul id="treemenu" class="ztree"></ul></td>
      <td class="content_select" style="width:700px;vertical-align:top">
      <iframe src="" id="menuiframe" name="detailmenu" width="100%" height="600" align="top" scrolling="auto" frameborder="0"></iframe>
      </td>
      </tr>
	</table>  
</body>
</html>