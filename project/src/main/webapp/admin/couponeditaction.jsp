<%@page import="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String couponid=request.getParameter("couponid");
String couponname=request.getParameter("couponname");
String event=request.getParameter("event");
String startdate=request.getParameter("startdate");
String enddate=request.getParameter("enddate");
String discount=request.getParameter("discount");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update coupons set couponname = '"+couponname+"', event = '"+event+"',startdate = '"+startdate+"',enddate = '"+enddate+"',discount = '"+discount+"' where couponid = '"+couponid+"'");
	
	response.sendRedirect("COUPONE.jsp?msg=done");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("COUPONE.jsp?msg=wrong");
}
%>