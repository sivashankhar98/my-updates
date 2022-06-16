<%@page import="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String couponid=request.getParameter("couponid");
String description=request.getParameter("description");
String eventid=request.getParameter("eventid");
String categoryid=request.getParameter("categoryid");
String discount=request.getParameter("discount");

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into coupons values(?,?,?,?,?)");
	ps.setString(1, couponid);
	ps.setString(2, description);
	ps.setString(3, eventid);
	ps.setString(4, categoryid);
	ps.setString(5, discount);
	ps.executeUpdate();
	response.sendRedirect("coupon.jsp?msg=done");
}
catch(Exception e)
{
	System.out.println(e);
  response.sendRedirect("coupon.jsp?msg=wrong");
}%>