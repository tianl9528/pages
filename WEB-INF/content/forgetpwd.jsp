<%@ page contentType="text/html; charset=utf-8" language="java" %>
<!DOCTYPE html>
<%
	String base_root = request.getContextPath();
%>
<html>
<head>
    <title>广东省专业镇信息服务平台注册页面</title>
    <meta charset="utf-8">
        <!-- Bootstrap -->
    <script type="text/javascript" src="<%=base_root%>/theme/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=base_root%>/theme/js/bootstrap.min.js"></script>
<link href="<%=base_root%>/theme/css/bootstrap.min.css" rel="stylesheet" /> 
<link href="<%=base_root%>/theme/css/register.css" rel="stylesheet" /> 
	<script type="text/javascript">
	$(document).ready(function()
	{
		var flag=false;
		$('#logname').blur(function(e){
			var logname = $("#logname").val();
			if(logname == ""){
				$('#nametip').text("请输入注册名");
			}
		});
		$('#logname').focus(function(e)
				{
					$('#nametip').text("");
				});
		$('#email').blur(function(e)
		{
			var emailstr = $('#email').val();
			var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
			if(!(reg.test(emailstr)))
			{
			$('#tip').text("邮箱格式错误");
			flag=false;
			}
			if(emailstr=='')
			{
			flag=false;
			$('#tip').text("");
			}
			if(reg.test(emailstr))
			{
			flag=true;
			}
		
		});
		$('#email').focus(function(e)
		{
			$('#tip').text("");
		});
		
		$('#next').click(function(e){
			e.preventDefault();
			if(flag)
			{
			//发送ajax 请求找回密码
			var logname = $("#logname").val();
			var verificationEmail = $("#email").val();
			
			$("#form1").submit();
				//$('#first').hide();
				//$('#second').show();
			
			}
		});
	}
	);
	</script>
	<style type="text/css">
	.content{
	margin:0 auto;
	width:990px;
	overflow:hidden;
	}
	.head{
	padding:15px 0;
	border-bottom:2px solid #398439;
	}
	.container{
	border: #9CD491 1px solid;
	border-radius: 3px;
	padding: 0 30px;
	margin: 30px 0 0 0;
	width:900px;
	height:300px;
	}
	#tip,#nametip
	{
	color:red;
	}
	</style>
</head>

  <body>
    <body style="background-color:white"> 
	
	<div class="content">
		<div class="head">
						<img src="<%=base_root%>/theme/images/loginimg/logo04.png"/>
		</div>
		<center>
			<div class="container">
				<h3 style="font-weight:bold;text-align:left;color:red;">找回密码</h3>
				<div class="col-lg-3">
					<img src="<%=base_root%>/theme/images/loginimg//forgetico.jpg"/>
				</div>				
				<div class="col-lg-8" id="first" >
					<form class="form-horizontal" role="form" id="form1" method="post" action="findpwd.action">
			
							
							<div class="form-group" >
								<label class="col-lg-8" style="text-align:left">请输入您在注册时使用的注册名及Email地址：</label>						     
							</div>
							
							<div class="form-group" >
								<div class="col-lg-8">
									<input type="text" class="form-control" id="logname"  name="logname" placeholder="注册名">
								</div>
								<p id="nametip"></p>
							</div>
							
							<div class="form-group" >
								<div class="col-lg-8">
									<input type="text" class="form-control" id="email" name="verificationEmail" placeholder="注册时所用的邮箱">
								</div>
								<p id="tip"></p>
							</div>
							
							<div class="form-group">
								<div class="col-lg-offset-2 ">
									<button type="submit" class="btn btn-success col-lg-3" id="next" >下一步</button>
								</div>
							</div>
						
				  </form>
				</div>
				
				<div class="col-lg-8" id="second" style="display:none">
					<p style="font-size:20px;margin-top:60px">
						操作成功，请查看你的注册邮箱，并按照提示修改密码。
					</p>
				</div>
				
			</div>
		 </center>
	</div>	
  
	<div class="footer text-center" >
        <div style="padding:40px 0 20px 0">
                         <p >
                    <a href="http://www.boc.cn/custserv/cs1/200812/t20081209_135605.html">网站地图</a><i>|</i>
                  
                    <a href="http://www.boc.cn/custserv/cs1/200812/t20081209_135606.html">版权声明</a><i>|</i>
                  
                    <a href="http://www.boc.cn/custserv/cs1/200812/t20081209_135607.html">使用条款</a><i>|</i>
                  
                    <a href="http://www.boc.cn/custserv/cs1/200812/t20081212_257687.html">联系我们</a>
                      </p>
                      <p>@广东省农业专业镇信息服务平台</p>
                     Powered By 广东友元国土信息工程有限公司
     	</div>
     </div>
  </body>
</html>