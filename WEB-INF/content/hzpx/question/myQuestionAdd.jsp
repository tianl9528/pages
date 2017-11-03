<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>问题添加</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/themes/default/default.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/plugins/code/prettify.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/kindeditor.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/lang/zh_CN.js"></script>
<script charset="utf-8" src="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/plugins/code/prettify.js"></script>

<script type="text/javascript">

function checkQuestion(){
	var questionTittle  = document.getElementById("questionTittle").value;
	var questionContent = document.getElementById("questionContent").value;
	if(questionTittle==""){
	alert("请填写问题标题");
	return false;
	}
	if(questionContent==""){
	alert("请填写问题内容");
	return false;
	}
}
function goBack(){
		window.location="<%=request.getContextPath()%>/question/myQuestion-list.action";
}
</script>
<script>
		KindEditor.ready(function(K) { 
			var editor1 = K.create('textarea[name="questionContent"]', {
				cssPath : '<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/plugins/code/prettify.css',
				uploadJson : '<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/jsp/upload_json.jsp',
				fileManagerJson : '<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/jsp/file_manager_json.jsp',
				allowFileManager : true,
				items : [
						'source', '|', 'undo', 'redo', '|', 'preview', 'print', 'template', 'code', 'cut', 'copy', 'paste',
						'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
						'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
						'superscript', 'clearhtml', 'quickformat', 'selectall', '|', 'fullscreen', '/',
						'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
						'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 'image',
						'flash', 'media', 'insertfile', 'table', 'hr', 'emoticons', 'pagebreak',
						'anchor', 'link', 'unlink', 'about'
					    ],
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['myAction'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['myAction'].submit();
					});
				},
			    afterBlur: function(){this.sync();}
			});
			prettyPrint();
		});
</script>

</head>
<body>

<div class="clear"></div>

<form action="<%=request.getContextPath()%>/question/myQuestion-save.action" name="myAction" id="myAction" method="post" onsubmit="return checkQuestion();">
<div class="conBox">
        <div class="conTitle">问题添加</div>
        <div class="conMiddle">
          <div>
            <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
            	<tr>
                  <td>
                <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                    
                   
                                        
                    <tr class="whiteColor">
                      <td class="typeNameTd" width="110">问题标题</td>
                      <td class="memberAddTd" align="center" width="850">
                      <input name="questionTittle" id="articleTittle" type="text" class="itemManagerInput" value=""/>
                      </td>                    
                    </tr>
                    
                    <tr class="greyColor">
                      <td class="typeNameTd">问题内容</td>
                      <td align="left">
                      <textarea name="questionContent" id="questionContent" rows="20" style="width:100%"></textarea>
                      </td>
                    </tr>                    
                  </table>
                                    
                  </td>
              </tr>
            </table>
                                 
                  
          </div>
          <div class="subBtnBox">
          	<input type="submit" class="base_btn"  value="提交" />
        	<input type="button"  class="base_btn" value="返回" onclick="goBack()"/>
          </div>
        </div>
        <div class="conBottom"></div>
      </div>

</form>
</body>
</html>