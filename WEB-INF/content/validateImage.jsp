<%@ page contentType="image/jpeg" import="javax.imageio.*" %>
<%@ page import="sunit.util.image.*"%>
<%@ page import="sunit.accesscontrol.*" %>
<%
ValidateImage image=new ValidateImage();
response.setHeader("Pragma","No-cache");
response.setHeader("Cache-Control","no-cache");
response.setDateHeader("Expires", 0);
ImageIO.write(image.creatImage(), "JPEG", response.getOutputStream());
session.setAttribute(Config.KEY_VALIDATEVALUE,image.sRand);
response.flushBuffer();
out.clear();
out = pageContext.pushBody();
%>
