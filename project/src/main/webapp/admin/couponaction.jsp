<%@page import="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String couponname=request.getParameter("couponname");
String event=request.getParameter("event");
String discount=request.getParameter("discount");
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into coupons values(?,?,?)");
	ps.setString(1, couponname);
	ps.setString(2, event);
	ps.setString(3, discount);
	ps.executeUpdate();
	response.sendRedirect("coupons.jsp?msg=valid");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("coupons.jsp?msg=invalid");
}
%>