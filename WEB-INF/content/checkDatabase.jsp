<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="sunit.database.*"%>
<%@ page import="org.hibernate.*"%>
<%@ page import="java.util.*"%>
<%
DAO dao=new DAO();
String dataBaseStatus="";
	try
	{
		Session s=dao.begin();	
		String sql = "select 1 from dual";
		Query query=s.createSQLQuery(sql);
		List ls=(List)query.list();	
		if(ls.get(0).toString().equals("1")){
			dataBaseStatus="数据库连接正常";
		}
	} catch(Exception e) {
		dataBaseStatus="";
		e.printStackTrace();
	} finally {
		dao.close();
		out.print(dataBaseStatus);//打印字符长度为0，表示异常；否则连接数据库正常
	}
%>