<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.List"%>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.database.hibernate.*"%>
<%@ page import="sunit.accesscontrol.object.DepartImage"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String id=(String)request.getParameter("id");
	String[] oldFileUrls = (String[]) request.getAttribute("oldFileUrls");
	String[] oldFileIds = (String[]) request.getAttribute("oldFileIds");
	String[] oldFileDescs = (String[]) request.getAttribute("oldFileDescs");
	List<DepartImage> images = (List<DepartImage>) request.getAttribute("dImages");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>工作室信息管理 - <%=request.getParameter("id")==null?"新增":"修改" %></title>

<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/global.css" rel="stylesheet"  type="text/css"/>

<script src="<%=request.getContextPath()%>/theme/js/slides.min.jquery.js"></script>

</head>
<body>
<script type="text/javascript">
//多图片轮播效果
$(function(){
	$('#slides').slides({
		preload: true,
		preloadImage: '<%=request.getContextPath()%>/theme/images/active_img/loading.gif',
		play: 5000,
		pause: 2500,
		hoverPause: true,
		animationStart: function(){
			$('.caption').animate({
				bottom:-35
			},100);
		},
		animationComplete: function(current){
			$('.caption').animate({
				bottom:0
			},400);
			if (window.console && console.log) {
				// example return of current slide number
				console.log(current);
			};
		}
	});
});

	$(document).ready(function(){
		$("#back").click(function(){
			location.href = "depart.action";
		});	
	});


	function check(){
		var yhDepartName = document.getElementById("departname").value;
		if(yhDepartName.length==0|| yhDepartName.replace(/\s+/g,"")=="" || yhDepartName==null){
			alert("请输入工作室名称");
			return false;
		}
		return true;
	}


	//tableId 表的id， 当前增加按钮对象
	//isNew针对文件是新增的还是修改的 true是新增 false是修改
   	function addRow(tableId, addBtn, isNew){
		var trId = addBtn.parentElement.parentElement.id;
		var tableId = "#" + tableId;
		var vTb=$(tableId);//得到表格ID=mydata1的jquery对象       
		//所有的数据行有一个.CaseRow的Class,得到数据行的大小
		var vNum=$(tableId +" tr").filter(".table_row1").size();//表格有多少个数据行
	    var vTr=$(tableId + " #" + trId); //得到表格中的第一行数据         
		var vTrClone=vTr.clone(true);//创建副本行对象vTrClone一	
		vTrClone[0].id="trFileDataRow"+vNum;//設置 第一個Id為當前獲取索引；防止重複添加多個ID為trFileDataRow1的數據行；一次添加一個；
		if ('true' == isNew){
			var inputValue = vTrClone.find("input");
			for (var i = 0; i < inputValue.size() - 2; i++){   //删除增加按钮不用去掉value
				inputValue[i].value = "";	
			}
		}else{
			 var divValue = vTrClone.find("div");
			 divValue[0].outerHTML = "<div><input type='text' class='itemManagerInput' name='fileDescs' value='图片说明'/><input type='file' name='files' style='height:40px;width:500px' /></div>";	
			 
		}
		vTrClone.appendTo(vTb);//把副本单元格对象添加到表格下方         	
	}
	
	var delIdNum = 0; //用来记录删除文件id的下标
	//true 是文件类型的删除， false表示是投票类型的删除
	
	function delRow(tableId, btn){
		var vNum=$("#" + tableId + " tr").filter(".table_row1").size();//表格有多少个数据行;      			
		//取得当前按钮所在的TR  
    	var vTr = btn.parentElement.parentElement;
		var vNum=$("#" + tableId +" tr").filter(".table_row1").size();
		//取得TR索引，从0为表的第一行  
  		var index=vTr.rowIndex; 
		if (tableId == 'mytable3' && vNum == 2){
			alert('请至少保留一行');
			return;
		}
		if(vNum == 1)
		{
			alert('请至少保留一行');
			return;
		}
    	var tab=document.getElementById(tableId);
		  
  		//删除当前行  
		var oldListIds = $("input[name='oldReportListIds']");
		if (typeof(oldListIds) != 'undefined' && oldListIds != null
			&& typeof(oldListIds[index]) != 'undefined' && oldListIds[index] != null){
			var oldListId = oldListIds[index].value;
			if (typeof(oldListId) != 'undefined' && oldListId != null){
				if (confirm('确认删除？') == true){
			//		console.debug("进入了删除了 " + oldListId + " : " + delIdNum);
					$("input[name='oldFileDelIds']")[delIdNum].value = oldListId;
					tab.deleteRow(index);
					delIdNum++;
				}
			}else{
				tab.deleteRow(index);
			}	
		}else{
			tab.deleteRow(index);
		} 
	}

	//滑动图片那里单击删除，进行图片删除
	function deleteImage(imageId){
		//if(confirm("此操作不可恢复！确定要删除吗？")){
//			 var msg = $.ajax({type:"POST",
//	          url:"depart-image-delete.action?id="+imageId,
//	         async:false
//	       }).responseText;
//		   	alert(msg);
//		   	if ("删除成功！" == msg){
//			   //document.getElementById(imageId).hide();
//			   $("#" + imageId).hide();
//			}
			document.thisForm.action = "<%=request.getContextPath()%>/depart/depart-image-delete.action?id="+imageId;
			document.thisForm.submit(); 
	//	}
		
	}
</script>



<form name="thisForm" method="post" action="depart-save.action?id=${depart.id}" onSubmit="return check()" enctype="multipart/form-data">
    	<div class="conBox">
        <div class="conTitle">工作室详细信息</div>
        <div class="conMiddle">
              <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
            	<tr>
                  <td>
                     <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                       <tr class="greyColor">
                        <td class="typeNameTd" style="width:150px">工作室名称</td>
                        <td class="memberAddTd" align="left" width="720">
                               <input type="text" class="itemManagerInput" name="depart.name" id="departname" value="${depart.name}"  />
                           </td>
                       </tr>
                         <tr class="whiteColor">
                        <td class="typeNameTd">工作室简介</td>
                        <td class="memberAddTd" align="left"><textarea name="depart.note" id="depart.note" rows="7" style="width:720px;">${depart.note}</textarea></td>
                 </tr>
                  <tr class="greyColor">
                  <td class="typeNameTd" >工作室发展历程</td>
                   <td class="memberAddTd" align="left">
                   <textarea name="depart.development" rows="11" style="width:720px;">${depart.development}</textarea>
                   </td>
                  </tr>
                  <tr class="greyColor">
                  <td class="typeNameTd" >图片预览及删除</td>
                   <td  class="memberAddTd" align="left">
                   
						<div id="container">
                            <div id="example">
                                <img src="<%=request.getContextPath()%>/theme/images/active_img/new-ribbon.png" width="112" height="112" alt="New Ribbon" id="ribbon">
                                <div id="slides">
                                    <div class="slides_container">
                   
										<%
                                              if (null != images){
                                                  for(int i = 0; i <= images.size() - 1; i++){	
                                        %>
                                    
                                        <div id="<%=images.get(i).getImageid()%>">
                                            <a href="#" title=""><img src="<%=request.getContextPath()%><%=images.get(i).getImagepath()%>" width="570" height="380"></a>
                                            <div class="caption" style="bottom:0;">
                                            	
                                                <p><%=images.get(i).getExplain() == null ? "" : images.get(i).getExplain()%>&nbsp;&nbsp;&nbsp;<a href="#" onClick="deleteImage('<%=images.get(i).getImageid()%>')">删除</a></p>
                                            </div>
                                        </div>
                                        
										 <%
                                                    }
                                                 }
                                         %>
                   
                                    </div>
                                    <a href="#" class="prev"><img src="<%=request.getContextPath()%>/theme/images/active_img/arrow-prev.png" width="24" height="43" alt="Arrow Prev"></a>
                                    <a href="#" class="next"><img src="<%=request.getContextPath()%>/theme/images/active_img/arrow-next.png" width="24" height="43" alt="Arrow Next"></a>
                                </div>
                                <img src="<%=request.getContextPath()%>/theme/images/active_img/example-frame.png" width="500" height="350" alt="Example Frame" id="frame">
                            </div>
                        </div>
                   
                   
                  </td>
                  </tr>                  
                  
                  <tr class="whiteColor">
                  <td class="typeNameTd" >图片上传和修改<p style="color:red; font-size:15px">最佳比例<br>宽：高 = 3:2</p></td>
                   <td  class="memberAddTd" align="left">
                   	<!--	<input type="text" class="itemManagerInput_m" />
                  		<input type="file" name="reportFiles" class="itemManagerInput" style="width:358px" />  -->
                        <table width="100%" border="0" cellspacing="1" cellpadding="1" id = "mytable1" class="table_frame">
							<%if (null == images){%>
                                <tr id="trFileDataRow0" class="table_row1">            
                                    <td align="left">
                                    	<input type="text" class="itemManagerInput" name="fileDescs" />   
                                        <input type="file" style="height:40px; width:200px" name="files"/>
                                   </td>
                                   <td  align="left">
                                        <input type="button" name="delBtn"  class="button" onClick="delRow('mytable1', this)" value="删除"/>
                                        <input type="button" name="addBtn" onClick="addRow('mytable1', this,'true')" value="增加" class="button" />
                                   </td>
                                </tr>
                            <%}else{
                                for (int i = 0; i <= images.size() - 1; i++){
									DepartImage image = images.get(i);
                            %>
                                    <tr id="trFileDataRow<%=i%>" class="table_row1">            
                                        <td align="left" width="65%"> 
                                        	<div>                      
                                        		<input type="text" class="itemManagerInput" name="oldFileDescs" value="<%=image.getExplain() == null ? "" : image.getExplain()%>" />
                                                 <input type="hidden" name="oldFileIds" value="<%=image.getImageid()%>"/>   
                                            </div>    
                                       </td>
                                       <td align="left">
                                            
                                            <input type="button" name="addBtn" onClick="addRow('mytable1', this, 'false')" value="增加" class="base_btn" />
                                       </td>
                                    </tr>
                            <%			
                                }
                            }
                            %>
                        </table>
                  	</td>
                </tr>
            </table>

                </td>
              </tr>
            </table>
            
          <div class="subBtnBox">
          <input type="submit" class="base_btn" onClick="return check();" value="提交" />
        <input type="button"  class="base_btn" value="返回" onClick="window.location.href='depart.action'"/>
        
          </div>
        </div>
        <div class="conBottom"></div>
      </div>
      
</form>
</body>
</html>