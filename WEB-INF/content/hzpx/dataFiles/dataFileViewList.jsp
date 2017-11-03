<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript">
		function dataFileDelete(){
			var checkedfileIds='';
			$("input[name='fileSelect']:checked").each(function(){
					checkedfileIds += $(this).val()+',';
			});
			if(checkedfileIds==''){
				alert('请选择！');
			}else{
				if(confirm("您确定要删除吗？")){
					alert(checkedfileIds);
					window.location="<%=request.getContextPath()%>/datafile/dataFileByChecked-view-delete.action?checkedfileIds="+checkedfileIds;
				}
			}
		}
	</script>
<title>文件预览</title>
</head>
  
<body>

<%
int index = 0;
int br_count = 0;
%>

<%
br_count = 0;
index = 0;
%>
<form method="post" action="#">
<div class="searchBox">
        <input type="button" value="返回" class="base_btn" onClick="window.location.href='<%=request.getContextPath()%>/datafile/dataFile-list.action'"/>
      </div>
      <div class="clear"></div>
</form>

<div class="listBox">
        <div class="listTitle">图片缩略显示<span class="more"><a href="javascript:dataFileDelete()">删除</a>&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/datafile/dataFile-list.action">返回</a></span></div>
  <div class="list">
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="" id="list_tb">
            <tr class="colorGrey">
              <td class="trainFunction" colspan="3"><span style="font-weight: bold;font-size:20px;">&nbsp;&nbsp;</span></td>
            </tr>
          <c:if test="${!empty page.result}">
            <tr class="colorwhite">
            <c:forEach items="${page.result}" var="dataFile" varStatus="stat"> 
                   	<td valign="top">
                        <table width="300" border="0" cellpadding="0" cellspacing="0" style="padding:5px">
                            <tr>
                              <td width="150" rowspan="4" align="left">
                              <img src="<%=request.getContextPath()%>/upload/filelib/${dataFile.fileName}" onerror="this.src='<%=request.getContextPath()%>/theme/images/file_de.jpg'" width="150" height="160"/>
                              </td> 	
                              <td align="left" height="40" style="font-weight: bold;font-size:12px;color:;padding-left:5px"><input type="checkbox" name="fileSelect" value="${dataFile.id }" >&nbsp;&nbsp;${dataFile.fileName}</td>
                            </tr>   
                            <tr>
                              <td align="left" height="40" style="font-weight: bold;font-size:12px;color: #1E84C1;padding-left:5px"><fmt:formatNumber value="${dataFile.fileSize/1000000}" type="currency" pattern="#0.0#"/>M</td>
                            </tr>            
                            <tr>
                              <td align="left" height="40" style="font-weight: bold;font-size:12px;color: #1E84C1;padding-left:5px">上传人:${dataFile.createUser }</td>
                            </tr>
                            <tr>            
                              <td align="left" height="40" style="font-weight: bold;font-size:12px;color: #1E84C1;padding-left:5px"><fmt:formatDate value="${dataFile.createTime }" type="both"/></td>
                              </tr>        
                                
                        </table>         
                    </td> 
					<% 
                    index = index + 1;
					br_count = 1;
                    if(index==3){
						out.println("</tr>");
						out.println("<tr class=\"colorwhite\">");
                        index = 0;
                    }
                    %>
            </c:forEach>
                <%
				if(br_count == 0){
                %>
              		<td class="trainFunction" colspan="3">没有数据<br><br></td>
                <%
				}
				%>            
            </tr>
		 </c:if>     
    </table>        

  </div>

 <div class="page">
          <div class="pageBox">
          <table border="0" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
            <tr><td><c:if test="${!empty page.result}">${controlTable}</c:if></td></tr>
          </table>
          </div>
        </div>
        
</div>
  
      
</body>
</html>
