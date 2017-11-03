<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.*"%>
<%
	if(session.getAttribute(Config.KEY_USERID)!=null){
		String validateCode=request.getParameter("validateCode")==null?"":request.getParameter("validateCode");
		if(!validateCode.equals("") && validateCode.equals(session.getAttribute("rand"))){
		}else{
			out.print("error");
		}			
	}
%>