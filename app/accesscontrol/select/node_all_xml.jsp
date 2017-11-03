<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="java.lang.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "sunit.database.*"%>
<%
DAO dao=new DAO();
long groupid=Long.parseLong(request.getParameter("groupid"));
try
{
	dao.begin();
	NodeGroupManager nodeGroupManager=new NodeGroupManager();
	NodeGroup nodeGroup = nodeGroupManager.readOne(groupid);
	NodeManager manager=new NodeManager(nodeGroup);
%>

<?xml version="1.0" encoding="utf-8"?>
<node caption="<%=nodeGroup.getName()%>" icon="<%=request.getContextPath()%>/themes/images/jtree/base.gif" explain="<%=nodeGroup.getName()%>">
<%
	StringBuffer tree=new StringBuffer();
	List list=manager.readAll();
	if(list!=null&&list.size()>0){
		int layer=0;
		for(int i=0;i<list.size();i++){
			Node node=(Node)list.get(i);
			if(node.getParentNode()==null){
				node.setLayer(layer);
				tree.append("<level"+node.getLayer()+" parentTypeID=\""+(node.getParentNode()==null?String.valueOf(-1):String.valueOf(node.getParentNode().getId()))+"\" caption=\""+node.getName()+"\" id=\""+node.getId()+"\" explain=\""+node.getName()+"\">");
				tree.append(readChildTree(node));
				tree.append("</level"+node.getLayer()+">");
			}
		}
		out.print(tree.toString());
	}
%>	
</node>
<%
}
catch(Exception e)
{
	e.printStackTrace();
}
finally
{
	dao.close();
}
%>
<%!
	private StringBuffer readChildTree(Node node){
		StringBuffer buffer=new StringBuffer();
		if(node.getChildNode()!=null&&node.getChildNode().size()>0){
			Iterator it=node.getChildNode().iterator();
			while(it.hasNext()){
				Node temp=(Node)it.next();
				temp.setLayer(node.getLayer()+1);
				buffer.append("<level"+temp.getLayer()+" parentTypeID=\""+(temp.getParentNode()==null?String.valueOf(-1):String.valueOf(temp.getParentNode().getId()))+"\" caption=\""+temp.getName()+"\" id=\""+temp.getId()+"\" explain=\""+temp.getName()+"\">");
				buffer.append(readChildTree(temp));
				buffer.append("</level"+temp.getLayer()+">");
			}
		}
		return buffer;
	}
%>