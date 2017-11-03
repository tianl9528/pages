<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.*" %>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.util.date.Dateinfo"%>
<%
	if(null != session.getAttribute("section") || null != session.getAttribute("sectionId"))
	{
		session.removeAttribute("section");
		session.removeAttribute("sectionId");
	}
	Info info = (Info)session.getAttribute(Config.KEY_LOGIN_INFO);
	if ( info != null )
	{
		if(info.getAllEntity()!=null&&info.getAllEntity().size()>0){
			//如果是第一次登录系统,转向修改密码界面.
			if(info.getFirstLogin()==0 && info.getIs_dls()==3){//第一次登录/是会员
				//response.sendRedirect(request.getContextPath()+"/app/common/addkuang/lesspassword.jsp");//转向修改密码界面(TODO)
				response.sendRedirect(request.getContextPath()+"/app/index.jsp");
			}else{
				response.sendRedirect(request.getContextPath()+"/app/index.jsp");
			}
		}
		else{
			response.sendRedirect(request.getContextPath()+"/noright.jsp");
		}
	}else{
		response.sendRedirect(request.getContextPath()+"/outtime.jsp");
	}
%>

