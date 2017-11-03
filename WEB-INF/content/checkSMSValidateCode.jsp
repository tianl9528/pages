<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="sunit.accesscontrol.manager.*"%>
<%@ page import="sunit.accesscontrol.object.*"%>
<%
	String msg="";
	String username=request.getParameter(Config.KEY_USERNAME)==null?"":request.getParameter(Config.KEY_USERNAME);
	if(username!=null && !username.equals("") && !username.equals("null")) {
		UserManager userManager=new UserManager();
		User user=userManager.getUserByName(username);
		if(user!=null) {
			SmSValidateCodeManager smSValidateCodeManager=new SmSValidateCodeManager();
			//发送短信
			//得到用户主手机号码
			int reValSMS = smSValidateCodeManager.insertSMSValidateCode(user);
			if(reValSMS==0){
				msg = "短信验证码已发送至"+user.getMobile_no();
			}else if(reValSMS==2){
				msg = "申请短信验证码失败(1分钟内只能发送一次)";
			}else if(reValSMS==3){
				msg = "您的主手机号码不正确或不存在";
			}else{
				msg = "申请短信验证码失败，请重新点击申请";
			}
		}else {
			msg = "用户不存在或系统发生异常，请关闭浏览器后重新登录尝试！";
		}
	}else {
		msg="输入的用户信息为空";
	}
	out.print(msg);
%>