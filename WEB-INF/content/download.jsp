<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="com.jspsmart.upload.*" %>
<%@ page import="java.net.URLDecoder" %>
<%
	String path = request.getParameter("path");
	String fileName = request.getParameter("filename");
	fileName = URLDecoder.decode(fileName,"UTF-8");
	path = URLDecoder.decode(path,"UTF-8");
  	try{
      	// 新建一个SmartUpload对象
     	SmartUpload su = new SmartUpload();
     	// 初始化
     	su.initialize(pageContext);
 	    // 设定contentDisposition为null以禁止浏览器自动打开文件，保证点击链接后是下载文件。
    	// 若不设定，则下载的文件扩展名为doc时，浏览器将自动用word打开它。
     	su.setContentDisposition(null);
     	// 下载文件
     	//su.downloadFile(path, null, new String(filename.getBytes("gb2312"), "ISO8859-1"));
  		su.downloadFile(path, null, fileName);
		out.clear();
  	}catch(java.io.FileNotFoundException f ){
	  	out.print("<script>alert('文件路径不正确');</script>");
	 	f.getStackTrace(); 
  	}catch(java.lang.NullPointerException p){
	  	out.print("<script>alert('文件格式不支持下载功能!');</script>");
  	}
%>