<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.util.*" %>
<% 
	HashMap map = (HashMap)application.getAttribute(String.valueOf(session.getAttribute(Config.KEY_USERID)));;
	if(map!=null){
		if(String.valueOf(map.get("userId")).equals(String.valueOf(session.getAttribute(Config.KEY_USERID)))){
			Info info = (Info) session.getAttribute(Config.KEY_LOGIN_INFO);
			if(!String.valueOf(map.get("loginTime")).equals(info.getLoginTime())){
				application.removeAttribute(String.valueOf(session.getAttribute(Config.KEY_USERID)));
				out.print(request.getContextPath()+"/replogin.jsp");
			}
		}
	}
%>