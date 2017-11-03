<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*"%>
<%
MenuManager mm = new MenuManager();
String menus = mm.createAllMenuForJson(request.getParameter("groupid"),request.getContextPath()).toString();
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
<%
	if(request.getParameter("groupid")==null||request.getParameter("groupid").length()<=0){
		out.print("window.alert('操作错误！');");
		out.print("window.location.href='nodegroup_list.jsp'");
	}
%>

var setting = {};
var zNodes =[<%=menus%>];
$(document).ready(function(){
	$.fn.zTree.init($("#treemenu"), setting, zNodes);
});

function showdetail(groupid,nid){
	//alert($("detailmenu").id);
	document.getElementById("menuiframe").src="<%=request.getContextPath()%>/app/accesscontrol/operate/node_detail.jsp?groupid="+groupid+"&id="+nid;
	//$("detailmenu").src="<%=request.getContextPath()%>/app/accesscontrol/operate/node_detail.jsp?groupid="+groupid+"&id="+nid;
}
function add(){
	document.getElementById("menuiframe").src="<%=request.getContextPath()%>/app/accesscontrol/operate/node_add.jsp?groupid=<%=request.getParameter("groupid")%>";
}

function backgroup(){
	window.location.href="javascript:history.go(-1);";
}
</script>
 
 <form name="thisForm" action="" method="post">
<div class="searchBox">      
         <div>
          <input name="addbutton" type="button" class="base_btn" onClick="add()" value="新增">
          <input name="backbutton" type="button" class="base_btn" onClick="window.location.href='nodegroup_list.jsp'" value="返回">	
        </div>
      </div>
      <div class="clear"></div>
</form>

<div class="listBox">
        <div class="listTitle">菜单管理<span class="more"><a href="#" onClick="window.location.href='role_add.jsp'"></a></span></div>

 <table  align="center">
      <tr class="_content_select" style="text-align:center;">
      <td class="content_select" style="width:200px;vertical-align:top">
      <ul id="treemenu" class="ztree"></ul>
      </td>
      <td class="content_select" style="width:755px;vertical-align:top">
      <iframe src="<%=request.getContextPath()%>/app/accesscontrol/operate/operatehelp.jsp" id="menuiframe" name="detailmenu" width="100%" height="700" align="top" scrolling="auto" frameborder="0"></iframe>
      </td>
      </tr>
      
	</table>  
   
</div>
	

</body>
</html>