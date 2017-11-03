<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.lang.*" %>
<%@ page import = "java.util.*" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.app.itil.controller.structure.role.RoleTreeXml"%>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import = "sunit.database.*"%>
<?xml version="1.0" encoding="utf-8"?>
<node>
<%
	DAO dao = new DAO();
	try {
		dao.begin();
		RoleTreeXml rtx=new RoleTreeXml();
		out.print(rtx.getTree());
		}catch(Exception e){
			e.printStackTrace();
			dao.close();
		}
%>
</node>
 