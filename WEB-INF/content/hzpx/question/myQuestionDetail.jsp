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
<title>问题详情</title>
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
function checkComment(){
var reply = document.getElementById("reply").value;
if(reply==""){
alert("回复内容不能为空!");
return false;
}
}
</script>
</head>
<body>

<div class="clear"></div>


<div class="conBox">
        <div class="conTitle">问题详情</div>
        <div class="conMiddle">
          <div>
            
                  
		<table cellpadding="0" cellspacing="13" border="0" class="selectTb">
             <tr>       
              <td>
              
                <table width="910" cellpadding="0" cellspacing="0" border="0" class="contentTB">
                
                    <tr class="greyColor">
                      <td class="typeNameTd" width="800"><span style="font-size:20px;">问题详情</span></td>                   
                    </tr>
                    <tr class="whiteColor">
				            <td width="900">
                    <c:if test="${!empty page.result}">
                        <table width="900" cellpadding="0" cellspacing="0" class="dashed_table_p"> 
				          <c:forEach items="${page.result }" var="reply" varStatus="stat">
				          <tr><td>
				         <div class="post_conent_d1">
				           <img width="50px" height="50px" src="<%=request.getContextPath()%>${reply.createUser.images_url}" onerror="this.src='/train/theme/images/de_user.gif'" />				        
				          </div>
				          <div class="post_content_d2">
				           <p style="color:#455e85;">${reply.createUser.user_name }&nbsp;&nbsp;&nbsp;
				           <span style="color:#999999">
				            <c:if test="${reply.floorNumber eq 0}">发表时间:</c:if> <c:if test="${reply.floorNumber ne 0}">回复时间:</c:if>
				           <fmt:formatDate value="${reply.createTime }" pattern="yyyy-MM-dd HH:mm:ss"/></span>				           
				            <span style="float:right;">
				            <c:if test="${reply.floorNumber eq 0}">楼主</c:if><c:if test="${reply.floorNumber ne 0}">${reply.floorNumber}#&nbsp;&nbsp;				            
				            </c:if>
				            </span> 
				           </p>
				           <p> ${reply.replyContent }</p>
				            </div>
				            </td></tr>

				          </c:forEach>
				          </table>
         			 </c:if>

         			  </td> 
				           </tr>
			                
                    
                </table>
                                    
            </td>
        </tr>
	</table>
	
              <c:if test="${page.totalCount  gt 50}">
            <c:if test="${!empty page.result}">${controlTable}</c:if>
	        </c:if>
                 
	    </div>
		          <div class="subBtnBox"></div>
		        	<input type="button"  class="base_btn" value="返回" onclick="window.location.href='myQuestion-list.action'"/>
             </div>     
        
        <div class="conBottom"></div>
        
       </div>

</body>
</html>