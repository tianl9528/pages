<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.apache.commons.logging.Log"%>
<%@ page import="org.apache.commons.logging.LogFactory"%>
<%
Log log = LogFactory.getLog(this.getClass());
//log.error("用户冲正-开始：111111111111111111111 测试log日志");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>想了一下，好像是首页</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/theme/jquery-ui-1.8.20.custom.css" type="text/css" media="screen" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery-ui-1.8.20.custom.min.js"></script>

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

<div class="searchBox">
        <div class="searchIcon"><img src="<%=request.getContextPath()%>/theme/images/bg_search_55.png" width="38" height="40" /></div>
        <div class="searchInput">
          <input name="searchInput" type="text" />
        </div>
        <div class="searchBtn">
          <input name="" type="button" value="搜索" />
        </div>
         <div>
          &nbsp;<input name="" type="button" value="新增" class="base_btn" />
        </div>
      </div>
      <div class="clear"></div>
      
<div class="listBox">
        <div class="listTitle">培训安排<span class="more"><a href="demo-pxjg-add.jsp">新增</a></span></div>
        <div class="list">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr>
              <td width="77">时间</td>
              <td width="76">地点</td>
              <td>项目名称</td>
              <td width="80">培训人员</td>
              <td width="80">参培人员</td>
              <td width="118">培训内容</td>
              <td width="50">状态</td>
              <td width="200">操作</td>
            </tr>
          </table>
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
            <tr class="colorGrey">
              <td width="77" class="trainLeft">7月17日</td>
              <td width="76" class="trainContent">花都区</td>
              <td class="trainContent">110KV大凌至湖</td>
              <td width="80" class="trainContent">刘易斯</td>
              <td width="80" class="trainContent">江淮太</td>
              <td width="118" class="trainContent">电缆校直加温</td>
              <td width="50" class="trainContent">未进行</td>
              <td class="trainFunction" width="200"><a href="#" class="detail">查看</a><a href="#" class="edit">编辑</a><a href="#" class="delete">删除</a></td>
            </tr>
            <tr class="colorwhite">
              <td width="77" class="trainLeft">7月17日</td>
              <td width="76" class="trainContent">花都区</td>
              <td class="trainContent">110KV大凌至湖</td>
              <td width="80" class="trainContent">刘易斯</td>
              <td width="80" class="trainContent">江淮太</td>
              <td width="118" class="trainContent">电缆校直加温</td>
              <td width="50" class="trainContent">未进行</td>
              <td class="trainFunction" width="200"><a href="#" class="detail">查看</a><a href="#" class="edit">编辑</a><a href="#" class="delete">删除</a></td>
            </tr>
            <tr class="colorGrey">
              <td width="77" class="trainLeft">7月17日</td>
              <td width="76" class="trainContent">花都区</td>
              <td class="trainContent">110KV大凌至湖</td>
              <td width="80" class="trainContent">刘易斯</td>
              <td width="80" class="trainContent">江淮太</td>
              <td width="118" class="trainContent">电缆校直加温</td>
              <td width="50" class="trainContent">未进行</td>
              <td class="trainFunction" width="200"><a href="#" class="detail">查看</a><a href="#" class="edit">编辑</a><a href="#" class="delete">删除</a></td>
            </tr>
            <tr class="colorwhite">
              <td width="77" class="trainLeft">7月17日</td>
              <td width="76" class="trainContent">花都区</td>
              <td class="trainContent">110KV大凌至湖</td>
              <td width="80" class="trainContent">刘易斯</td>
              <td width="80" class="trainContent">江淮太</td>
              <td width="118" class="trainContent">电缆校直加温</td>
              <td width="50" class="trainContent">未进行</td>
              <td class="trainFunction" width="200"><a href="#" class="detail">查看</a><a href="#" class="edit">编辑</a><a href="#" class="delete">删除</a></td>
            </tr>
            <tr class="colorGrey">
              <td width="77" class="trainLeft">7月17日</td>
              <td width="76" class="trainContent">花都区</td>
              <td class="trainContent">110KV大凌至湖</td>
              <td width="80" class="trainContent">刘易斯</td>
              <td width="80" class="trainContent">江淮太</td>
              <td width="118" class="trainContent">电缆校直加温</td>
              <td width="50" class="trainContent">未进行</td>
              <td class="trainFunction" width="200"><a href="#" class="detail">查看</a><a href="#" class="edit">编辑</a><a href="#" class="delete">删除</a></td>
            </tr>
            <tr class="colorwhite">
              <td width="77" class="trainLeft">7月17日</td>
              <td width="76" class="trainContent">花都区</td>
              <td class="trainContent">110KV大凌至湖</td>
              <td width="80" class="trainContent">刘易斯</td>
              <td width="80" class="trainContent">江淮太</td>
              <td width="118" class="trainContent">电缆校直加温</td>
              <td width="50" class="trainContent">未进行</td>
              <td class="trainFunction" width="200"><a href="#" class="detail">查看</a><a href="#" class="edit">编辑</a><a href="#" class="delete">删除</a></td>
            </tr>               
          </table>
        </div>
        
        <div class="page">
          <div class="pageBox">
          <a href="#" class="longBg">首页</a>
          <a href="#" class="longBg">上一页</a>
          <a href="#" class="curPage">1</a>
          <a href="#" class="">2</a>
          <a href="#">3</a>
          <a href="#">4</a>
          <a href="#">5</a>
          <a href="#">9</a>
          <a href="#" class=''>10</a>
          <a href="#">11</a>
          <a href="#" class="longBg">下一页</a>
          <a href="#" class="longBg">末页</a>
          </div>
        </div>
        
      </div>


</body>
</html>