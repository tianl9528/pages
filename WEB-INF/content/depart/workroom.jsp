<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.List"%>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.object.User" %>
<%@ page import="sunit.accesscontrol.object.DepartImage" %>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
List<DepartImage> images = (List<DepartImage>) request.getAttribute("dImages");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/global.css" rel="stylesheet"  type="text/css"/>

<script src="<%=request.getContextPath()%>/theme/js/slides.min.jquery.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>工作室管理</title>

<script type="text/javascript">
    //多图片轮播效果
$(function(){
	$('#slides').slides({
		preload: true,
		preloadImage: '<%=request.getContextPath()%>/theme/images/active_img/loading.gif',
		play: 5000,
		pause: 2500,
		hoverPause: true,
		animationStart: function(){
			$('.caption').animate({
				bottom:-35
			},100);
		},
		animationComplete: function(current){
			$('.caption').animate({
				bottom:0
			},400);
			if (window.console && console.log) {
				// example return of current slide number
				console.log(current);
			};
		}
	});
});
            
    </script>
</head>
<body>


      <div class="clear"></div>
      
<div class="listBox">
 <c:forEach items="${departs}" var="departs" varStatus="stat" >
        <div class="listTitle">浩臻工作室<span class="more"><a href="depart-input.action?id=${departs.id}" class="edit">编辑</a></span></div>
        <div class="list">
         		
         <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
          <tr>
          <td class="memberAddTd" style="text-align:left; vertical-align:top; font-size:20px">
                   <div id="container">
                            <div id="example">
                                <img src="<%=request.getContextPath()%>/theme/images/active_img/new-ribbon.png" width="112" height="112" alt="New Ribbon" id="ribbon">
                                <div id="slides">
                                    <div class="slides_container">
                   
										<%
                                              if (null != images){
                                                  for(int i = 0; i <= images.size() - 1; i++){	
                                        %>
                                    
                                        <div>
                                            <a href="#" title=""><img src="<%=request.getContextPath()%><%=images.get(i).getImagepath()%>" width="570" height="380" alt="Slide 1"></a>
                                            <div class="caption" style="bottom:0;">
                                                <p><%=images.get(i).getExplain()%></p>
                                            </div>
                                        </div>
                                        
										 <%
                                                    }
                                                 }
                                         %>
                   
                                    </div>
                                    <a href="#" class="prev"><img src="<%=request.getContextPath()%>/theme/images/active_img/arrow-prev.png" width="24" height="43" alt="Arrow Prev"></a>
                                    <a href="#" class="next"><img src="<%=request.getContextPath()%>/theme/images/active_img/arrow-next.png" width="24" height="43" alt="Arrow Next"></a>
                                </div>
                                <img src="<%=request.getContextPath()%>/theme/images/active_img/example-frame.png" width="500" height="341" alt="Example Frame" id="frame">
                            </div>
                        </div>
              
              ${departs.note}</td>
             
              </tr>
         </table>
          
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
            <tr class="colorwhite">
              <td class="trainFunction" width="50%"><span style="font-weight: bold;font-size:20px;color: #1E84C1;">导师</span></td>
              <td class="trainFunction" width="50%"><span style="font-weight: bold;font-size:20px;color: #1E84C1;">${teacher}</span></td>
            </tr>
            <tr class="colorGrey">
              <td colspan="2" class="trainFunction"><span style="font-weight: bold;font-size:20px;color: #1E84C1;">发展历程</span></td>
            </tr>         
            <tr class="colorwhite">
              <td colspan="2" align="left" class="trainFunction"><span style="font-weight: bold;font-size:16px;">${development}</span></td>
            </tr>  
           </table>
          
          </div>
            </c:forEach> 
        </div>
        
        <div class="page">
          <div class="pageBox">
          </div>
        </div>
     


</body>
</html>