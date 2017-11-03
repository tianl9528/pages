<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.Iterator" %>
<%@ page import = "sunit.database.*"%>
<%
DAO dao=new DAO();
try
{
	dao.begin();
	DepartManager manager=new DepartManager();
%>
<?xml version="1.0" encoding="utf-8"?>
<departments>
<%
	StringBuffer tree=new StringBuffer();
	List list=manager.readAll();
	int layer=0;
	for(int i=0;i<list.size();i++){
		Depart depart=(Depart)list.get(i);
		if(depart.getParentDepart()==null){
			depart.setLayer(layer);
			tree.append("<department>");
			tree.append("<id>"+depart.getId()+"</id>");
			tree.append("<name>"+depart.getName()+"</name>");
			//tree.append("<code>"+depart.getCode()+"</code>");
			tree.append("<depth>"+depart.getLayer()+"</depth>");
			if(depart.getChildDepart()!=null){
				tree.append("<childrenCount>"+depart.getChildDepart().size()+"</childrenCount>");
				tree.append("<hasMoreChildren>true</hasMoreChildren>");
			}
			else{
				tree.append("<childrenCount>0</childrenCount>");
				tree.append("<hasMoreChildren>false</hasMoreChildren>");
			}
			tree.append("</department>");
			tree.append(readChildTree(depart));
		}
	}
	out.print(tree.toString());
%>
</departments>
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
	private StringBuffer readChildTree(Depart depart){
		StringBuffer buffer=new StringBuffer();
		if(depart.getChildDepart()!=null&&depart.getChildDepart().size()>0){
			Iterator it=depart.getChildDepart().iterator();
			while(it.hasNext()){
				Depart temp=(Depart)it.next();
				temp.setLayer(depart.getLayer()+1);
				buffer.append("<department>");
				buffer.append("<id>"+temp.getId()+"</id>");
				buffer.append("<name>"+temp.getName()+"</name>");
				buffer.append("<code>"+temp.getDepartCode()+"</code>");
				buffer.append("<depth>"+temp.getLayer()+"</depth>");
				if(temp.getChildDepart()!=null){
					buffer.append("<childrenCount>"+temp.getChildDepart().size()+"</childrenCount>");
					buffer.append("<hasMoreChildren>true</hasMoreChildren>");
				}
				else{
					buffer.append("<childrenCount>0</childrenCount>");
					buffer.append("<hasMoreChildren>false</hasMoreChildren>");
				}
				buffer.append("</department>");
				buffer.append(readChildTree(temp));
			}
		}
		return buffer;
	}
%>