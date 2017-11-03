<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.text.ParseException"%>
<%@ page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	List<Object[]> list = (List<Object[]>)request.getAttribute("list");
	Boolean myDataFiles = request.getAttribute("MYDATAFILES") == null ? false : (Boolean)request.getAttribute("MYDATAFILES");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>档案列表</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/theme/jquery-ui-1.8.20.custom.css" type="text/css" media="screen" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery-ui-1.8.20.custom.min.js"></script>

<script type="text/javascript">
	$(function(){
		$('#list_tb').table();
		
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

</script>
</head>
<body>

<form method="post" action="#">
<div class="searchBox">
        <div class="searchIcon"><img src="<%=request.getContextPath()%>/theme/images/bg_search_55.png" width="38" height="40" /></div>
        <div class="searchInput">
          <input name="projectName" id="input_search" value="请输入项目名称进行搜索" type="text" />
        </div>
        <div class="searchBtn">
          <input type="submit" value="搜索" />
        </div>
      </div>
      <div class="clear"></div>
</form>
   
<div class="listBox">
        <div class="listTitle">档案列表</div>
        <div class="list">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr>
              <td width="100">时间</td>
              <td width="200">地点</td>
              <td width="200">项目名称</td>
              <td>培训说明</td>
              <td width="75">状态</td>
              <td width="75">操作</td>
            </tr>
          </table>
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
           	<%if(null != list && list.size() > 0){
				Date date = null;
				DateFormat format = new SimpleDateFormat("yyyy-MM-dd"); 
				for(int index_i=0; index_i<list.size(); index_i++){
    				Object[] objs = list.get(index_i);
					try {   
						date = format.parse(objs[1].toString());  // Thu Jan 18 00:00:00 CST 2007   
					} catch (ParseException e) {   
						e.printStackTrace();   
					}   
			%>
           			<tr class="<%if(index_i % 2 == 1){%>colorGrey<%}else{%>colorwhite<%}%>">
                      <td width="100" class="trainLeft"><fmt:formatDate value="<%= date%>" pattern="yyyy-MM-dd"/></td>
                      <td width="200" class="trainContent"><%= objs[2]%></td>
                      <td class="trainContent" width="200"><%= objs[3]%></td>
                      <td class="trainContent"><%= objs[4]%></td>
                      <td width="75" class="trainContent"><%= objs[5]%></td>
                     <td class="trainFunction" width="75" align="center"><a href="../dataFiles/dataFilesDetail.action?trainPlanId=<%= objs[0]%>&myDataFiles=<%=myDataFiles%>" class="detail">查看</a></td>
                    </tr>
           	<%}}%>
          </table>
        </div>
        <div class="page">
			<div class="pageBox">
          		<table border="0" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
            		<tr>
            			<td>${controlTable}</td>
            		</tr>
          		</table>
          	</div>
        </div>
    </div>
</body>
</html>