<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="java.lang.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "sunit.database.*"%>
<%
DAO dao=new DAO();
try{
	long groupid=Long.parseLong(request.getParameter("groupid"));
	dao.begin();
	NodeGroupManager nodeGroupManager=new NodeGroupManager();
	NodeGroup group=nodeGroupManager.readOne(groupid);
	NodeManager manager=new NodeManager(group);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>菜单</title>
<style type="text/css">
<!--
@import"<%=request.getContextPath()%>/scripts/menu/dhtml-horiz.css";
-->

body {
margin: 0;
padding: 30px;
background: #FFF;
color: #666;
}

h1 {
	font-family: "宋体";
	font-size: 12px;
	font-weight: bold;
}

p {
	font-family: "宋体";
	font-size: 12px;
}

a {
color: #900;
text-decoration: none;
}

a:hover {
background: #900;
color: #FFF;
}
</style>
<script language="JavaScript" src="<%=request.getContextPath()%>/scripts/menu/dhtml.js" type="text/JavaScript"></script>
</head>

<body>
<hr />
<ul id="navmenu">
<%
	String root=request.getContextPath();
	StringBuffer tree=new StringBuffer();
	List list=manager.readAll();
	if(list!=null&&list.size()>0){
		int layer=0;
		for(int i=0;i<list.size();i++){
			Node node=(Node)list.get(i);
			if(node.getParentNode()==null){
				node.setLayer(layer);
				tree.append("<li>");
				tree.append("<a href=\""+(node.getEntity()==null?"#":root+node.getEntity().getValue())+"\">");
				tree.append(node.getName()==null?"":node.getName());
				tree.append((node.getChildNode()!=null&&node.getChildNode().size()>0)?"+":"");
				tree.append("</a>");
				tree.append(readChildTree(node,root));
				tree.append("</li>");
			}
		}
		out.print(tree.toString());
	}
%>	
</ul>
<hr/>
</body>
</html>
<%
}
catch(Exception e){
	e.printStackTrace();
}
finally{
	dao.close();
}
%>
<%!
	private StringBuffer readChildTree(Node node,String root){
		StringBuffer buffer=new StringBuffer();
		if(node.getChildNode()!=null&&node.getChildNode().size()>0){
			buffer.append("<ul>");
			Iterator it=node.getChildNode().iterator();
			while(it.hasNext()){
				Node temp=(Node)it.next();
				temp.setLayer(node.getLayer()+1);
				buffer.append("<li>");
				buffer.append("<a href=\""+(temp.getEntity()==null?"#":root+temp.getEntity().getValue())+"\">");
				buffer.append(temp.getName()==null?"":temp.getName());
				buffer.append((temp.getChildNode()!=null&&temp.getChildNode().size()>0)?"+":"");
				buffer.append("</a>");
				buffer.append(readChildTree(temp,root));
				buffer.append("</li>");
			}
			buffer.append("</ul>");
		}
		return buffer;
	}
%>