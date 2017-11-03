<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.DepartHelper" %>
<%
String departId=request.getParameter("departId");
String code = DepartHelper.getAutoChildDepartCodeByParentDepartId(departId);
out.print(code);
%>