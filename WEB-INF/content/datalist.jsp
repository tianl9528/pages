<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="java.sql.*"%>
<%@ page trimDirectiveWhitespaces="true"%>


<%
	//连接SQL Server的数据库 
	String driverName = "oracle.jdbc.driver.OracleDriver";
	String dbURL = "jdbc:oracle:thin:@localhost:1521:orcl";
	String userName = "scott";
	String userPwd = "123456";
	Connection dbConn;

	//String tbName = request.getParameter("tbName");
	//StringBuffer sqlStrBuff = new StringBuffer();
	//sqlStrBuff.append("select * from town");
	
	//String sqlStr = sqlStrBuff.toString();
        String sqlStr = request.getParameter("sqlStr");
        System.out.println(sqlStr);
        //System.out.println("========="+sqlStr);
       // sqlStr=new String(((String)sqlStr).getBytes("iso-8859-1"),"utf-8"); 

        System.out.print(sqlStr);
	// System.out.println( request.getAttribute("searchname"));
	try {
		Class.forName(driverName);
		dbConn = DriverManager.getConnection(dbURL, userName, userPwd);

		System.out.println("Connection Successful!");
		System.out.println(sqlStr);

		//String login_name=request.getParameter("login_name");
		// System.out.println(login_name);	
		//向用户表中查询该用户是否存在。

		Statement stmtQuery = dbConn.createStatement();

		ResultSet rs = stmtQuery.executeQuery(sqlStr);

		ResultSetMetaData mtdt = rs.getMetaData();

		int nmt = mtdt.getColumnCount();
		System.out.println(nmt);
		int recordCount = 0;
		if (rs != null) {
			//out.println("<resultCode>1</resultCode>");
			//out.println("<items>");

			while (rs.next()) {

				String rowStr = "<item ";

				for (int i = 0; i < nmt; i++) {
					String columnName = mtdt.getColumnName(i + 1);
										
					String columnValue=new String();
					columnValue=new String(((String)columnValue).getBytes("iso-8859-1"),"utf-8");
					columnValue= rs.getString(columnName);
					
					if (columnValue != null)
						columnValue = columnValue.trim();
					else
						columnValue = " ";

					rowStr += columnName + " = '" + columnValue + "' ";

				}

				rowStr += " />";

				out.println(rowStr);

				recordCount++;

			}
			//out.println("SUCCESS");
			//out.println("</items>");

		} else {
			out.println("<resultCode>0</resultCode>");
			System.out.println("没有同名账户存在！<br>");
			//out.println("FAILED");
		}

		//out.println("<recordCount>" + recordCount + "</recordCount>");
		
		stmtQuery.close();
		dbConn.close();

	} catch (Exception e) {
		out.println("<resultCode>-1</resultCode>");
		e.printStackTrace();
	}
%>
