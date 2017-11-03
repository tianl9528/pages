<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@ page import="sunit.accesscontrol.manager.*"%>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="java.util.List"%>
<%@ page import="sunit.database.*"%>
<%
DAO dao=new DAO();
try
{
	dao.begin();
	long departId=Long.parseLong(request.getParameter("departId"));
	//List list = DepartHelper.getTreeChild(departId);
	//List list = DepartHelper.getTreeChildDefault(departId);
	List list = DepartHelper.getTreeChildDefault(departId);
%>
<?xml version="1.0" encoding="utf-8"?>
<codes>
<%
	if(list!=null&&list.size()>0)
	{
		Depart dat=null;
		boolean child=true;
		for(int i=0;i<list.size();i++)
		{
			dat = (Depart)list.get(i);
			child = (dat.getChildDepartSize()>0);
			int depth=0;
			int childrenCount=0;
			if(child){
				depth=1;
				childrenCount=1;
			}
%>
	<code>
		<id><%=dat.getId() %></id>
		<fullname><%=dat.getName()%></fullname>
		<name><%=dat.getName() %></name>
		<code><%=dat.getDepartCode()%></code>
		<depth><%=depth%></depth>
		<childrenCount><%=dat.getChildDepartSize()%></childrenCount>
		<hasMoreChildren><%=child%></hasMoreChildren>
	</code>
<% 
		}
	}
%>
</codes>
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