<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="sunit.accesscontrol.manager.*"%>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.util.List"%>
<%@ page import="sunit.database.*"%>
<%
	response.setHeader("Pragma","No-cache");
	response.setHeader("Cache-Control","no-cache");

	String pageInfo = "";
	String pageSize = "10";
	String currPage = request.getParameter("currPage") == null ? "1" : request.getParameter("currPage");
	String condition = request.getParameter("condition")== null ? "" : request.getParameter("condition").trim();
	
	int icurrPage = Integer.parseInt(currPage);
	int ipageSize = Integer.parseInt(pageSize);
	int totalData = 0;//总条数
	int totalPage = 0;//总页数

	String sql = " from a_user t where 1=1 ";
	String sql_list = "";
	String sql_count = "";

	if (!"".equals(condition)) {
		sql = sql + " and (t.LOG_NAME like '%" + condition
				+ "%' or t.USER_NAME like '%" + condition + "%')";
	}
	List data = null;
	DAO dao = new DAO();

	try {
		//表头字段
		sql_list = "select t.USER_ID,t.LOG_NAME,t.USER_NAME" + sql;
		sql_count = "select count(1) " + sql;
		
		org.hibernate.Session se = dao.begin();
		
		Object obj_count = se.createSQLQuery(sql_count).uniqueResult();
		totalData = Integer.parseInt(obj_count.toString());
		
		if (totalData > 0) {
			totalPage = (int) Math.ceil((double) totalData / ipageSize);// 获取分页总数

			data = se.createSQLQuery(sql_list).setFirstResult(
					(icurrPage - 1) * ipageSize).setMaxResults(ipageSize)
					.list();
		}

		PaginationUnicom pu = new PaginationUnicom(ipageSize,icurrPage,totalPage, totalData);
		pageInfo = pu.getPageControl2(request, response);
		request.setAttribute("data",data);
		request.setAttribute("pageInfo",pageInfo);
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		dao.close();
	}
%>	

<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>
<base target="_self">
<title>人员查询</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery-table-list_select.js"></script>
<script language="javascript" type="text/javascript">
$(function(){
    $('#list_tb').table();
});
	function clearForm() {
		document.getElementById("condition").value = "";
	}

	//返回给主页面
	function backValue() {
		var str = "";
		$(':input:radio').each(function() {
			if ($(this).is(':checked')) {
				str = this.value;
			}
		})
		if (str == "") {
			alert("请选择人员!");
			return false;
		}
		window.returnValue = str;
		//alert(str);
		window.close();
	}
	
	function onsel(){
		document.form1.submit();
	}
</script>
</head>

<body>

<div class="indexBox"><div class="mainBox"><div class="contentBox">

<form action="" method="post">
<div class="searchBox">    
        <div class="searchIcon"><img src="<%=request.getContextPath()%>/theme/images/bg_search_55.png" width="38" height="40" /></div>
        <div class="searchInput">
          <input type="text" name="condition" id="condition" value="<%= condition %>" style="width:260px"/>
        </div>
        <div class="searchBtn">
          <input type="submit" value="搜索" style="cursor:pointer"/>
        </div>
        
     	<div align="center">
    	<input type="button" class="base_btn" name="search" value="确 定" onClick="backValue();">
		<input type="button" class="base_btn" value="取 消" onClick="window.returnValue='';window.close();">
		</div>
    
      </div>
      <div class="clear"></div>
</form>

<div class="listBox">
  	<div class="listTitle" style="text-align:center">人员选择<span class="more"></span></div>
	<div class="list">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr>
              <td width="60">选择</td>
              <td width="80">序号</td>
              <td width="200">登录名</td>
              <td width="">姓名</td>
            </tr>
          </table>
                 
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
		<c:if test="${!empty data}">
			<c:forEach var="obj" items="${data}" varStatus="stat">
				<tr class="<c:if test="${stat.count%2==1}">colorGrey</c:if><c:if test="${stat.count%2==0}">colorwhite</c:if>">	
					<td class="trainLeft" width="60"><input ondblclick="backValue()" type="radio" id="dept_code" name="dept_code" value="<c:out value="${obj[0]}" />;<c:out value="${obj[2]}" />"></td>
					<td class="trainContent" width="80">&nbsp;<c:out value="${stat.count}" /></td>
					<td class="trainContent" width="200">&nbsp;<c:out value="${obj[1] }" /></td>
					<td class="trainFunction">&nbsp;<c:out value="${obj[2] }" /></td>
				</tr>
			</c:forEach>
		</c:if>
</table>
        
        <c:if test="${empty data}">
        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr><td>没有数据！！！</td></tr>
        </table>
        </c:if>
  </div>

<!--分页-->         
        <div class="page">
          <div class="pageBox">
          <table border="0" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
            <tr><td><c:if test="${!empty data}">${pageInfo}</c:if></td></tr>
          </table>
          </div>
        </div>
            
</div>


</div></div></div>

</body>
</html>