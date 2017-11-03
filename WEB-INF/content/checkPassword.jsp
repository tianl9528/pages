<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="sunit.app.gzunicom.controller.structure.airCharge.CheckPassword"%>
<%
	String retUrl = request.getHeader("Referer");	
	if(retUrl!=null){		
		if(session.getAttribute(Config.KEY_USERID)!=null){
			String password=request.getParameter("password")==null?"":request.getParameter("password");
			String userid=request.getParameter("userid")==null?"":request.getParameter("userid");
			int result=-1;
			result=CheckPassword.loginLDAP(userid,password);
			if(result==-1){
				out.print("用户不存在或密码错误！");
			}
		}else{
			out.print("用户不存在！");
		}
	}else{
		out.print("非法请求！");
	}
%>
