<%@page import="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String couponid=request.getParameter("couponid");
String couponname=request.getParameter("couponname");
String event=request.getParameter("event");
String startdate=request.getParameter("startdate");
String enddate=request.getParameter("enddate");
String discount=request.getParameter("discount");

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into coupons values(?,?,?,?,?,?)");
	ps.setString(1, couponid);
	ps.setString(2, couponname);
	ps.setString(3, event);
	ps.setString(4, startdate);
	ps.setString(5, enddate);
	ps.setString(6, discount);
	ps.executeUpdate();
	response.sendRedirect("coupons.jsp?msg=done");
}
catch(Exception e)
{
	System.out.println(e);
  response.sendRedirect("coupons.jsp?msg=wrong");
}%>