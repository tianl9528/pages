<%@ page contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>职务管理</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>

<script type="text/javascript">
$(function(){
    $('#list_tb').table();
});

var mySelect=new mSelect('mySelect','mSelect.css');
window.onload=function(){
	var aS=document.getElementsByTagName('select');
	for (var i=0;i<aS.length;i++){
		switch(aS[i].getAttribute('mSty')){
			case 'blueCircle':
				mySelect.Create(aS[i],'blueCircle',true);
				break;
		}
	}
}

	
</script>
</head>
<body>
<br>
<form action="job.action" method="post">
<div class="searchBox">
		
       
        <div class="searchIcon"><img src="<%=request.getContextPath()%>/theme/images/bg_search_55.png" width="38" height="40" /></div>
        <div class="searchInput">
          <input name="searchInput" type="text"/>
        </div>
        <div class="searchBtn">
          <input type="submit" value="搜索" style="cursor:pointer"/>
        </div>
         <div>
          <input type="button" value="新增" class="base_btn" style="float:left;" onClick="window.location.href='<%=request.getContextPath()%>/job/job-input.action'"/>
          
        </div>
      </div>
      <div class="clear"></div>
</form>

<div class="listBox">
        <div class="listTitle">职务信息<span class="more"></span></div>
        <div class="list">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr>
              <td width="200">职务</td>
              <td>备注</td>
              <td width="120">操作</td>
            </tr>
          </table>
          
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
          <c:if test="${!empty page.result}">
 			<c:forEach items="${page.result}" var="jobs" varStatus="stat"> 
            <tr class="<c:if test="${stat.count%2==1}">colorGrey</c:if><c:if test="${stat.count%2==0}">colorwhite</c:if>">
           <td class="trainLeft" width="200">${jobs.name}</td>
           <td class="trainContent">${jobs.note}</td>
           <td class="trainFunction" width="120"><a href="job-input.action?id=${jobs.id}" class="edit">编辑</a><a href="job-delete.action?id=${jobs.id}"  onClick="return confirm('确定删除此条记录吗？')" class="delete">删除</a></td>
            </tr>
            </c:forEach>
		 </c:if>     
          </table>
        
        <c:if test="${empty page.result}">
        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr><td>没有数据！！！</td></tr>
        </table>
        </c:if>
  </div>

<!--分页-->         
        <div class="page">
          <div class="pageBox">
          <table border="0" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
            <tr><td><c:if test="${!empty page.result}">${controlTable}</c:if></td></tr>
            <c:if test="${empty page.result}">
  	<tr class="_foot">
    	<td class="foot" align="center"  colspan="14">没有你个人信息数据！</td>
    </tr>
   </c:if>
          </table>
          </div>
        </div>
        
</div>


</body>
</html>