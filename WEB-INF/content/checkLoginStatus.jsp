<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.UserManager" %>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="sunit.database.DAO"%>
<%@ page import="sunit.accesscontrol.object.User"%>
<%@ page import="sunit.app.gzunicom.controller.structure.sms.MemberSMSValidateCodeUtil" %>
<%@ page import="com.sunit.kzcz.interfaceclient.wsstub.axis2.WebInterfaceLocator"%>
<%@ page import="com.sunit.kzcz.interfaceclient.wsstub.axis2.WebInterfacePortType"%>
<%@ page import="sunit.innerinterface.returnvalues.CodeDef"%>
<%@ page import="sunit.innerinterface.util.WebServicesUrl"%>
<%@ page import="sunit.innerinterface.PublicInterfaceImp"%>
<%
	DAO dao = new DAO();
	try{
		dao.begin();

		String retUrl = request.getHeader("Referer");
		String msg = "";
		if(retUrl!=null){
			try{
				String userid=request.getParameter("userid")==null?"":request.getParameter("userid");
				String flag=request.getParameter("flag")==null?"0":request.getParameter("flag");
				UserManager um = new UserManager();
				User user = um.getUserByName(userid);
				if (user != null) {
					if(user.getIs_dls()==3){//如果是会员登录，加调用WS判断
						//调用登录接口
						WebInterfacePortType itf = new WebInterfaceLocator().getwebInterfaceSOAP11port0(new WebServicesUrl().getWebInterfaceURL());
						int reVal = itf.doMemberLogin(user.getUserID(),user.getPassword().toUpperCase(), 0, request.getRemoteAddr());
						if(reVal<0){
							//-1：通用错误,-2：密码错误,-3：帐号锁定,-4：销户,-5：没有此账号,-6：账号已挂失
							//密码错误
							if(reVal==-2){
								msg = itf.getReturnMessage(CodeDef.CASE_WEB_LOGIN_VALIDATECODE,
										CodeDef.MODE_WEB, new String[]{});
							}else if(reVal==-3){
								msg = itf.getReturnMessage(CodeDef.CASE_ALL_LOGIN_ACCOUNT_EXCEPTION,
										CodeDef.MODE_WEB, new String[]{});
							}else if(reVal==-4){
								msg = itf.getReturnMessage(CodeDef.CASE_ALL_LOGIN_MEMBER_CANCELED,
										CodeDef.MODE_WEB, new String[]{});
							}else if(reVal==-5){
								msg = itf.getReturnMessage(CodeDef.CASE_ALL_LOGIN_MEMBER_NOT_FOUND,
										CodeDef.MODE_WEB, new String[]{});
							}else if(reVal==-6){
								msg = itf.getReturnMessage(CodeDef.CASE_ALL_LOGIN_MEMBER_LOSSED,
										CodeDef.MODE_WEB, new String[]{});
							}else if(reVal==-7){
								msg = itf.getReturnMessage(CodeDef.CASE_ALL_PATTERN_ERROR,
										CodeDef.MODE_WEB, new String[]{});
							}else{
								msg = itf.getReturnMessage(CodeDef.CASE_ALL_LOGIN_ERROR,
										CodeDef.MODE_WEB, new String[]{});
							}
						}else{
							if(flag.equals("0")){
								//发送短信
								//得到用户主手机号码
								PublicInterfaceImp imp = new PublicInterfaceImp();
								String userMainMobile = imp.getMemberMainMobileByMemberID(user.getUserID());
								int reValSMS = MemberSMSValidateCodeUtil.insertSMSValidateCode(user.getUserID());
								if(reValSMS==0){
									msg = "短信验证码已发送至"+userMainMobile;
								}else if(reValSMS==2){
									msg = "申请短信验证码失败(1分钟内只能发送一次)";
								}else if(reValSMS==3){
									msg = "您的主手机号码不正确";
								}else{
									msg = "申请短信验证码失败，请重新点击申请";
								}
							}
						}
					}else{//非会员直接发送到INFO_USER的MOBILE_NO
						if(flag.equals("0")){
							//发送短信
							int reValSMS = MemberSMSValidateCodeUtil.insertSMSValidateCode(user.getUserID());
							if(reValSMS==0){
								msg = "短信验证码已发送至"+user.getMobile_no();
							}else if(reValSMS==2){
								msg = "申请短信验证码失败(1分钟内只能发送一次)";
							}else if(reValSMS==3){
								msg = "您的主手机号码不正确";
							}else{
								msg = "申请短信验证码失败，请重新点击申请";
							}
						}
					}
				}else{
					msg = "用户不存在或系统发生异常，请关闭浏览器后重新登录尝试！";
				}
				out.print(msg);
			}catch(Exception err){
				out.print("系统出错，请联系联通管理员");
			}
		}else{
			out.print("非法请求");
		}
	}catch(Exception e){
		out.print("系统出错，请联系联通管理员");
	}finally{
		dao.close();
	}
%>