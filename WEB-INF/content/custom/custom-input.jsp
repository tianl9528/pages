<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.List"%>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="<%=request.getContextPath()%>/scripts/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js" type="text/javascript"></script>
<title>客户信息管理 - <%=request.getParameter("id")==null?"新增":"修改" %></title>


</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	
	$("#back").click(function(){
		 history.go(-1);
	});
	
	$("#submit").click(function(){
		//return confirm('确定提交数据吗？');
		if(confirm('确定提交数据吗？')){
			return true;
		} 
		else{
			return false;
		}
	});	

});
	
	/*日期控件适用于.txt_select_date类样式文本框,有需要才用*/
	  $(document).ready(function() {
		  $(".txt_select_date" ).datepicker({ dateFormat: "yy-mm-dd",
											 changeYear: true,
											 yearRange: "1949:2099",
											 monthNames: ["1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"]});										   
	  });
	
	  function $(id){
			var ops=document.getElementById(id);
			return ops;
		}

		function clear(){
			
				//return confirm('确定提交数据吗？');
				var inputs = document.getElementsByTagName("input");   
			        for(var i=0;i<inputs.length;i++){        
			      		if(inputs[i].getAttribute("type") == "text"){       		     
			        		inputs[i].value ="";     
			      			}     
			    		}      
		}
	
</script>

        <div class="body_title">
        <li style="padding-top:8px; padding-left:5px">内部系统->客户负责人管理</li>
       </div>

</br>

<%-- <c:forEach items="${depart}" var="item" > 
${item.name}</br> 
</c:forEach> --%>

<form name="thisForm" method="post" action="custom-save.action" onSubmit="return checkforminput()">	
	<table width="100%" border="0" cellspacing="1" cellpadding="0" id = "mydata" class="main_content">
	 				<tr class="_title">
				<td class="title" colspan="4" style="text-align:left;">当前位置->
					 <c:choose>
	        	<c:when test="${!empty id }">
	        		<c:set var="theme"  value="客户负责人信息修改"/>
	        	</c:when>
	        	<c:otherwise>
	        		<c:set var="theme"  value="客户负责人信息增加"/>
	        	</c:otherwise>
	           </c:choose>       
				${theme}</td>
				</tr>
				
	<tr class="_content">
      <td width="10%" style="text-align: center;" class="content">负责人名称</td>
      <td class="content"  width="40%" style="text-align:left;">
        <input type="text" class="txt_input" name="custom.custom.name" id="customname" value="${custom.custom_name}" style="width:40%" />
         <input name="id" type="hidden" class="input_oneborder" value="${id}"></td>
 
      <td class="content" width="10%" style="text-align: center;" >联系电话</td>
       <td   class="content"  style="text-align:left;">
      <input class="txt_input" type="text" name="custom.mobile" id="mobile" value="${custom.mobile}" style="width:40%" / ></td>
      </tr>
      
  <tr class="_content">
      <td width="10%" style="text-align: center;" class="content">邮箱地址</td>
      <td class="content"  width="40%" style="text-align:left;">
        <input type="text" class="txt_input" name="custom.mailaddr" id="mailaddr" value="${custom.mailaddr}" style="width:40%" />
       </td>
 
      <td class="content" width="10%" style="text-align: center;" >所在单位</td>
       <td   class="content"  style="text-align:left;">
      <input class="txt_input" type="text" name="custom.company" id="company" value="${custom.company}" style="width:40%" / ></td>
      </tr>
      
      <tr>
      <td class="content" width="10%" style="text-align: center;" >备注</td>
      
       <td colspan="5" class="content"  width="40%" style="text-align:left;">
       
       <textarea name="custom.note" cols=45 rows=2 >${custom.note}  </textarea>

    </td>
      </tr>
      
      

    <tr class="_content">
      <td style="text-align:center;" colspan="6">
   
      &nbsp;&nbsp;&nbsp;
          <input type="submit" name="submit" id="submit" class="btn" value="提 交" />
      &nbsp;&nbsp;&nbsp;
        <input type="button" name="back" id="back" onClick="javascript :history.back(-1);" class="btn" value="返 回" />
      </td>
    </tr>
</table>

</form>
</body>
</html>