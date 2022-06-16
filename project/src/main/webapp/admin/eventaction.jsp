<%@page import="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String eventid=request.getParameter("eventid");
String eventname=request.getParameter("eventname");
String startdate=request.getParameter("startdate");
String enddate=request.getParameter("enddate");

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into events values(?,?,?,?)");
	ps.setString(1, eventid);
	ps.setString(2, eventname);
	ps.setString(3, startdate);
	ps.setString(4, enddate);
	ps.executeUpdate();
	response.sendRedirect("events.jsp?msg=done");
}
catch(Exception e)
{
	System.out.println(e);
  response.sendRedirect("events.jsp?msg=wrong");
}%>