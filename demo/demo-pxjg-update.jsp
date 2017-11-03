<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.List"%>

<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.object.User" %>
<%@ page import="sunit.database.hibernate.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String base_root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>培训结果录入</title>
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

<div class="listBox">
        <div class="listTitle">培训安排</div>
        <div class="list">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr>
              <td width="200" align="left">培训时间：2013/7/20</td>
              <td width="250" align="left">地点：花都</td>
              <td width="" align="left">项目名称：利海进站#4中间接头安装</td>
            </tr>
            <tr>
              <td width="200" align="left">工作类型：附件安装</td>
              <td width="250" align="left">项目负责人：李四</td>
              <td width="" align="left">培训人员：李导师</td>
            </tr>
            <tr>
              <td colspan="3" align="left">参培人员</td>
            </tr>    
          </table>
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
            <tr class="colorGrey">
              <td width="77" class="trainTime">姓名</td>
              <td width="76" class="trainAdd">技能等级</td>
              <td class="trainName">培训结果</td>
              <td width="280" class="trainCoach">评价</td>
              <td width="80" class="trainMember">图片</td>
            </tr>
            <tr class="colorGrey">
              <td colspan="5" class="trainTime" align="left"><span style="font-weight: bold;color: #1E84C1;">开线加温</span></td>
            </tr>            
            <tr class="colorGrey">
              <td width="77" class="trainTime">张三</td>
              <td width="76" class="trainAdd">
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              </td>
              <td class="trainName">&nbsp;</td>
              <td width="280" class="trainCoach">&nbsp;</td>
              <td width="80" class="trainMember">上传</td>
            </tr> 
            <tr class="colorGrey">
              <td width="77" class="trainTime">李四</td>
              <td width="76" class="trainAdd">
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" /></td>
              <td class="trainName">&nbsp;</td>
              <td width="280" class="trainCoach">&nbsp;</td>
              <td width="80" class="trainMember">上传</td>
            </tr>                        
            </tr>
            <tr class="colorGrey">
              <td colspan="5" class="trainTime" align="left"><span style="font-weight: bold;color: #1E84C1;">绝缘打磨</span></td>
            </tr>            
            <tr class="colorGrey">
              <td width="77" class="trainTime">王小二</td>
              <td width="76" class="trainAdd">
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              <img src="<%=base_root%>/theme/images/star_1.png" width="16" height="15" />
              </td>
              <td class="trainName">&nbsp;</td>
              <td width="280" class="trainCoach">&nbsp;</td>
              <td width="80" class="trainMember">上传</td>
            </tr> 

         </table>
        </div>
        <div class="page">
          <div class="pageBox"></div>
        </div>
      </div>


</body>
</html>