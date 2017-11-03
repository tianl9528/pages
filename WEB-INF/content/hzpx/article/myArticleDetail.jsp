<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.List"%>

<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.object.User" %>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>文章详情</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/replyArticle.css" rel="stylesheet" type="text/css" />

<!--class="typeNameTd"-->
<script type="text/javascript">
$(function(){
    $('#list_tb').table();
});
/*提供给用户全选*/
  /*日期控件适用于.txt_select_date类样式文本框,有需要才用*/
$(document).ready(function() {
	  $(".txt_select_date" ).datepicker({ dateFormat: "yy-mm-dd",
										 changeYear: true,
										 yearRange: "1949:2099",
										 monthNames: ["1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"]});										   
});
</script>
</head>
<body>

<div class="clear"></div>


<div class="conBox">
        <div class="conTitle">文章详情</div>
        <div class="conMiddle">
          <div>
            <table  cellpadding="0" cellspacing="13" border="0" class="selectTb">
            	<tr>
                  <td>
                <table  width="910" cellpadding="0" cellspacing="0" border="0" class="contentTB">
                    
                    <tr class="greyColor" >
                      <td class="typeNameTd" style="font-size:20px;padding:10px"  align="center" width="800">
                      ${articleEntity.articleTittle}
                      </td>
                      </tr>
                      <tr class="whiteColor">
                      <td width="800" align="left" style="padding:6px;">
                     ${articleEntity.articleContent}<br><br><br><br><br>
                      </td>                   
                    </tr>
                  
  
                  </table>
                                    
                  </td>
              </tr>
            </table>
                  
		<table cellpadding="0" cellspacing="13" border="0" class="selectTb">
             <tr>       
              <td>
              
                <table width="910" cellpadding="0" cellspacing="0" border="0" class="contentTB">
                
                    <tr class="greyColor">
                      <td class="typeNameTd" width="800"><span style="font-size:20px;">文章评论</span></td>                   
                    </tr>
                    <tr class="whiteColor">
				            <td width="900">
                    <c:if test="${!empty page.result}">
                        <table width="900" cellpadding="0" cellspacing="0" class="dashed_table_p"> 
				          <c:forEach items="${page.result }" var="comment" varStatus="stat">
				          <tr><td>
				          <div class="post_conent_d1">
				           <img width="50px" height="50px" src="<%=request.getContextPath()%>${comment.createUser.images_url}" onerror="this.src='/train/theme/images/de_user.gif'" />				        
				          </div>
				          <div class="post_content_d2">
				           <p style="color:#455e85;">${comment.createUser.user_name }&nbsp;&nbsp;&nbsp;<span style="color:#999999">发表时间:<fmt:formatDate value="${comment.createTime }" pattern="yyyy-MM-dd HH:mm:ss"/></span>				           
				           </p>
				           <p> ${comment.commentContent }</p>
				            </div>
				            </td></tr>

				          </c:forEach>
				          </table>
         			 </c:if>
         			  </td> 
				           </tr>
			         <c:if test="${empty page.result}">
			         
			          <tr class="whiteColor">
				            <td class="typeNameTd" width="800">暂无评论</td>
				            </tr>
			         </c:if>          
                    
                </table>
                                    
            </td>
        </tr>
	</table>
	
            <c:if test="${page.totalCount  gt 50}">
             <c:if test="${!empty page.result}">${controlTable}</c:if>
	         </c:if>
	
		        	<input type="button"  class="base_btn" value="返回" onclick="window.location.href='<%=request.getContextPath()%>/article/myArticle-list.action'"/>
	    </div>
		          <div class="subBtnBox"></div>
             </div>
        
        <div class="conBottom"></div>
            <br>            
       </div>


</body>
</html>