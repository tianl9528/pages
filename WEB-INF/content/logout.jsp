<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="sunit.util.web.RequestUtil"%>
<% 
	application.removeAttribute(String.valueOf(session.getAttribute(Config.KEY_USERID)));
	session.removeAttribute(Config.KEY_LOGIN_INFO);
	session.invalidate(); //清空所有session值
	//清空所有Cookie值
	RequestUtil.addCookie(response, Config.KEY_USERNAME,null);
	RequestUtil.addCookie(response, Config.KEY_PASSWORD,null);
	
	String base_root = request.getContextPath();
%>
<html>
<head>
	<script type="text/javascript">  
    function CloseWebPage() {  
        if (navigator.userAgent.indexOf("MSIE") > 0) {  
            if (navigator.userAgent.indexOf("MSIE 6.0") > 0) {  
                window.opener = null; window.close();  
            }  
            else {  
                window.open('', '_top'); window.top.close();  
            }  
        }  
        else if (navigator.userAgent.indexOf("Firefox") > 0) {  
            window.location.href = 'about:blank ';  
            //window.history.go(-2);  
        }  
        else {  
            window.opener = null;   
            window.open('', '_self', '');  
            window.close();  
        }  
    }  
</script> 
</head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登出提示</title>
<link rel="stylesheet" href="<%=base_root%>/theme/head.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<%=base_root%>/theme/base_style.css" type="text/css" media="screen" />
<link href="<%=request.getContextPath()%>/theme/css/index.css" rel="stylesheet" type="text/css" />

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="500" align="center"><table width="445" border="0" cellpadding="1" cellspacing="1" bgcolor="#D2D2D2">
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="35" colspan="2" bgcolor="#0033FF">&nbsp;&nbsp;<span style="color:#FFF">提示信息</span></td>
      </tr>
      <tr>
        <td height="140" class="error_text" style="font-size:14px;">您已成功退出<%=Config.getInstance().realmName%>！</td>
        <td width="150"><img src="<%=base_root%>/theme/image/error_icon.jpg" width="108" height="95"></td>
      </tr>
      
      <tr>
        <td height="80" colspan="2" align="center">
		<input type="button" name="login" value="重新登录" class="base_btn" onClick="window.location.href=('<%=request.getContextPath()%>/')">
		<input type="button" name="close" value="关闭窗口" class="base_btn" onClick="CloseWebPage();">
		</td>
      </tr>
    </table></td>
  </tr>
</table></td>
  </tr>
</table>
</body>
</html>
