<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>培训结果录入</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>

<script type="text/javascript">
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
        <div class="conTitle">录入新培训安排</div>
        <div class="conMiddle">
          <div>
            <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
              <tr>
                <td class="titleTd">工作类型：</td>
                <td class="contentTd" align="left"><select name="workType" mSty="blueCircle">
                    <option>工作类型1</option>
                    <option>工作类型2</option>
                    <option>工作类型3</option>
                  </select></td>
                <td class="titleTd">项目负责人：</td>
                <td class="contentTd" align="left"><input name="" type="text" class="itemManagerInput" value="李大军"/></td>
              </tr>
              <tr>
                <td class="titleTd">项目名称：</td>
                <td class="contentTd" align="left"><select name="workType" mSty="blueCircle">
                    <option>项目名称1</option>
                    <option>项目名称2</option>
                    <option>项目名称3</option>
                  </select></td>
                <td class="titleTd">培训时间：</td>
                <td class="contentTd" align="left"><select name="workType" mSty="blueCircle">
                    <option>培训时间1</option>
                    <option>培训时间2</option>
                    <option>培训时间3</option>
                  </select></td>
              </tr>
              <tr>
                <td class="titleTd">参培人员：</td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td colspan="4"><table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                    <tr class="greyColor">
                      <td class="typeNameTd">开线加温</td>
                      <td class="memberAddTd"><input name="input" type="text" class="memberAddIpnut" value="祁宏昌; " />
                      <div class="menberBox">
                      	<span class="memberName">祁宏昌<input name="" type="button" value=" " class="selectPressed" /></span>
                      	<span class="memberName">凌颖<input name="" type="button" value=" " class="selectNormal" /></span>
                      	<span class="memberName">彭志<input name="" type="button" value=" " class="selectNormal" /></span>
                      	<span class="memberName">张志恒<input name="" type="button" value=" " class="selectNormal" /></span>
                      	<span class="memberName">吴邓勇<input name="" type="button" value=" " class="selectNormal" /></span>
                      	<span class="memberName">王凤刚<input name="" type="button" value=" " class="selectNormal" /></span>
                      	<span class="memberName">莫家坚<input name="" type="button" value=" " class="selectNormal" /></span>
                      	<span class="memberName">吴邓勇<input name="" type="button" value=" " class="selectNormal" /></span>
                      	<span class="memberName">王凤刚<input name="" type="button" value=" " class="selectNormal" /></span>
                      	<span class="memberName">莫家坚<input name="" type="button" value=" " class="selectNormal" /></span>
                      </div>
                      </td>
                    </tr>
                    <tr class="whiteColor">
                      <td class="typeNameTd" style="width:200px">绝缘打磨</td>
                      <td class="memberAddTd"><input name="input" type="text" class="memberAddIpnut" value="祁宏昌; " /></td>
                    </tr>
                    <tr class="greyColor">
                      <td class="typeNameTd">开线加温</td>
                      <td class="memberAddTd"><input name="input" type="text" class="memberAddIpnut" value="祁宏昌; " /></td>
                    </tr>
                    <tr class="whiteColor">
                      <td class="typeNameTd">绝缘打磨</td>
                      <td class="memberAddTd"><input name="input" type="text" class="memberAddIpnut" value="祁宏昌; " /></td>
                    </tr>
                    <tr class="greyColor">
                      <td class="typeNameTd">开线加温</td>
                      <td class="memberAddTd"><input name="input" type="text" class="memberAddIpnut" value="祁宏昌; " /></td>
                    </tr>
                    <tr class="whiteColor">
                      <td class="typeNameTd">绝缘打磨</td>
                      <td class="memberAddTd"><input name="input" type="text" class="memberAddIpnut" value="祁宏昌; " /></td>
                    </tr>
                    <tr class="greyColor">
                      <td class="typeNameTd">开线加温</td>
                      <td class="memberAddTd"><input name="input" type="text" class="memberAddIpnut" value="祁宏昌; " /></td>
                    </tr>
                    <tr class="whiteColor">
                      <td class="typeNameTd">绝缘打磨</td>
                      <td class="memberAddTd"><input name="input" type="text" class="memberAddIpnut" value="祁宏昌; " /></td>
                    </tr>
                    <tr class="greyColor">
                      <td class="typeNameTd">开线加温</td>
                      <td class="memberAddTd"><input name="input" type="text" class="memberAddIpnut" value="祁宏昌; " /></td>
                    </tr>
                    <tr class="whiteColor">
                      <td class="typeNameTd">绝缘打磨</td>
                      <td class="memberAddTd"><input name="input" type="text" class="memberAddIpnut" value="祁宏昌; " /></td>
                    </tr>
                    <tr class="greyColor">
                      <td class="typeNameTd">开线加温</td>
                      <td class="memberAddTd"><input name="input" type="text" class="memberAddIpnut" value="祁宏昌; " /></td>
                    </tr>
                    <tr class="whiteColor">
                      <td class="typeNameTd">绝缘打磨</td>
                      <td class="memberAddTd"><input name="input" type="text" class="memberAddIpnut" value="祁宏昌; " /></td>
                    </tr>
                  </table></td>
              </tr>
            </table>
          </div>
          <div class="subBtnBox"><input name="" type="button" value="全部提交" class="submitBtn" /></div>
        </div>
        <div class="conBottom"></div>
      </div>


</body>
</html>