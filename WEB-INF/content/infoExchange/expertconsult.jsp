<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String base_root = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>专家咨询</title>

<link href="<%=base_root%>/theme/css/expert.css" rel="stylesheet">

<style>
.ui-dialog .ui-dialog-buttonpane .ui-dialog-buttonset button{ width:100px; height:30px; }
.text{
	width:200px;
}	
</style>

<script type="text/javascript">
function consult(thisobj){
	var expertid = $(thisobj).closest(".exp").find(".expid").val();
	var role = "${user_role}";
	if(role == "游客"||role=="待审核用户"){
		$( "#tip" ).dialog({
			autoOpen: false,
			height: 180,
			width: 300,
			modal: true,
			buttons: {
				"登录": function() {							
					window.location.href="/gdzyzmm/login.action";
				},
				"取消": function() {
					$( this ).dialog( "close" );
				}
			},
			close: function() {
				
			}
		});
		
		$( "#tip" ).dialog( "open" );
	}
	else{
		//alert(expertid);
		window.location.href="/gdzyzmm/infoExchange/consult.action?expertid="+expertid;	
	}
}
</script>
</head>
<body> 
	 <div style="padding:20px 10px 0 10px">
	 	<div id="tip" title="提示" style="display:none;">
			<p>您当前的身份是${user_role}，权限不足</p>
		</div>
        <div class="panel panel-default">
        	<div class="panel-heading myFont15">
				专家团队
			</div>
			<div class="panel-body" style="padding: 10px;">
				<div class="topexpert">
            		<span class="pic7">
                		<img src="<%=request.getContextPath()%>/theme/image/consult/e_ylp.jpg">
            		</span>
                	<span class="cont7">
                 	 	<dl>
                    		<dt>杂交水稻之父：袁隆平</dt>
                   	 		<dd>中国杂交水稻育种专家，杂交水稻之父，中国工程院院士。现任中国国家杂交水稻工程技术中心主任暨湖南杂交水稻研究中心主任、西南大学农学与生物科技学院名誉院长、湖南农业大学教授、中国农业大学客座教授、怀化职业技术学院名誉院长、湖南生物机电职业技术学院名誉院长、
							联合国粮农组织首席顾问、世界华人健康饮食协会荣誉主席、湖南省科协副主席和湖南省政协副主席。2006年4月当选美国科学院外籍院士，2011年获得马哈蒂尔科学奖。		</dd>
                		</dl>
                	</span>
        		</div>
        		<div class="moreexpert">
            		<div class="bookline left"></div>
            		<div class="expertsa">
            			<c:if test="${!empty expertlist}">
            			<c:forEach items="${expertlist}" var="expert" varStatus="stat"> 
                    	<div class="experts margintop20">
                       		<span class="epic"> 
                         	<img src="<%=request.getContextPath()%>${expert.images_url}" onerror="this.src='<%=request.getContextPath()%>/theme/images/de_user.gif'" />                       
                        	</span>
                      		<dl class="exp">
                        		<dt style="margin-left:10px;text-align:center;">${expert.professor.professiontitle}</dt>
                        		<dd style="margin-left:10px;text-align:center;margin-top:5px;margin-bottom:5px;">${expert.user_name}</dd>
                      			<dd class="c" style="margin-left:10px;">
                      			从事${expert.professor.research_one}研究<br><br>
                      			现任职于${expert.professor.workplace}
                      			</dd>
                      			<input type="hidden" class="expid" value="${expert.user_id}"/>
                      			<dd><button type="submit" class="btn btn-success"  style="margin-left:10px;" onclick="consult(this)">我要咨询</button></dd>
                  			</dl>
                		</div>
                		</c:forEach>
                		</c:if>
                		<c:if test="${empty expertlist}">没有数据
                		</c:if>                            
            		</div>
        		</div>
			</div>
        </div>    
    </div>
</body>
</html>