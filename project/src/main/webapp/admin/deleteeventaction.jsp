<%@page import="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String eventid=request.getParameter("eventid");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
    st.executeUpdate("delete from events where eventid = '"+eventid+"'");
	response.sendRedirect("deleteevent.jsp?msg=done");
    
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("deleteevent.jsp?msg=wrong");
}
%>