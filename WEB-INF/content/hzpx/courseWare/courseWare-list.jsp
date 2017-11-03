<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="org.apache.commons.logging.Log"%>
<%@ page import="org.apache.commons.logging.LogFactory"%>
<%@ page import="javax.servlet.http.Cookie"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>课件列表</title>
<script type="text/javascript">
	$(function(){
		$('#list_tb').table();
		
		//搜索栏提示信息获得焦点的时候消失
		var inputEl = $('#input_search'),
			defVal = inputEl.val();
		inputEl.bind({
			focus: function() {
				var _this = $(this);
				if (_this.val() == defVal) {
					_this.val('');
				}
			},
			blur: function() {
				var _this = $(this);
				if (_this.val() == '') {
					_this.val(defVal);
				}
			}
		});
	});
	
	//下载文件
	function downloadFile(fileUrl, fileName, aThis){
		fileUrl = encodeURI(fileUrl);
		fileUrl = encodeURI(fileUrl);
		fileName = encodeURI(fileName);
		fileName = encodeURI(fileName);
		aThis.href = "<%=request.getContextPath()%>/download.action?path=" + fileUrl + "&filename=" + fileName;
		aThis.click();
	//	/download.action?path=${courseWare.fileUrl}&filename=${courseWare.fileName}
	}
</script>
</head>
<body>

<form method="post" action="#">
<div class="searchBox">
        <div class="searchIcon"><img src="<%=request.getContextPath()%>/theme/images/bg_search_55.png" width="38" height="40" /></div>
        <div class="searchInput">
          <input name="courseName" id="input_search" value="请输入课件名称搜索" type="text" />
        </div>
        <div class="searchBtn">
          <input type="submit" value="搜索" />
        </div>
        <input type="button" value="新增" class="base_btn" onClick="window.location.href='courseWare-input.action'"/>
      </div>
      <div class="clear"></div>
</form>
   
<div class="listBox">
        <div class="listTitle">课件管理</div>
        <div class="list">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr>
            	<td width="20%">课件名称</td>
				<td width="32%">描述</td>
                <td width="10%">上传人</td>
                <td width="20%">更新时间</td>
                <td width="18%">操作</td>
            </tr>
          </table>
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
          <c:if test="${!empty page.result}">
          <c:forEach items="${page.result }" var="courseWare" varStatus="stat">
            <tr class="<c:if test="${stat.count%2==1}">colorGrey</c:if><c:if test="${stat.count%2==0}">colorwhite</c:if>">
              <td width="20%" class="trainContent">${courseWare.courseWareName}</td>
              <td class="trainContent" width="32%">${courseWare.fileComment}</td>
              <td width="10%" class="trainContent">${courseWare.uploadUser.user_name}</td>
              <td width="20%" class="trainContent">${courseWare.createTime}</td>
             <td class="trainFunction" width="18%"><a onClick="downloadFile('${courseWare.fileUrl}','${courseWare.fileName}', this)" class="detail">下载</a><a href="courseWare/courseWare-input.action?courseWareId=${courseWare.id }" class="edit">编辑</a><a href="courseWare/courseWare-delete.action?courseWareId=${courseWare.id }" class="delete">删除</a></td>
            </tr>
          </c:forEach>
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