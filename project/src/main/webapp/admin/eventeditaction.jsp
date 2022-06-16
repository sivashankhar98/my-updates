<%@page import="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String eventid=request.getParameter("eventid");
String eventname=request.getParameter("eventname");
String startdate=request.getParameter("startdate");
String enddate=request.getParameter("enddate");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update events set eventname = '"+eventname+"',startdate = '"+startdate+"',enddate = '"+enddate+"' where eventid = '"+eventid+"'");
	
	response.sendRedirect("EVENT.jsp?msg=done");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("EVENT.jsp?msg=wrong");
}
%>