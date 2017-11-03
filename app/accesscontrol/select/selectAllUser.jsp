<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.util.List" %>
<%@ page import="sunit.database.*"%>
<%
request.setCharacterEncoding("utf-8");
String usertype = request.getParameter("usertype")==null?"":request.getParameter("usertype");
DAO dao=new DAO();
try
{
	dao.begin();
	UserManager manager=new UserManager();
	List list=manager.getUserByUserType(usertype);
	StringBuffer strId = new StringBuffer();
	StringBuffer strName = new StringBuffer();	
	if(list!=null){
		for(int i=0;i<list.size();i++){
			User u = (User)list.get(i);
			strId.append(u.getUserID());
			strName.append(u.getUser_name());
			if(i<list.size()-1){
				strId.append(",");
				strName.append(",");
			}
		}
	}
	out.print(strId.toString()+"||"+strName.toString());
} catch(Exception e) {
	e.printStackTrace();
} finally {
	dao.close();
}
%>