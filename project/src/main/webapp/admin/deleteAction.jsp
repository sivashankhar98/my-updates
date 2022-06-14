<%@page import="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
    st.executeUpdate("delete from products where id = '"+id+"'");
	response.sendRedirect("delete.jsp?msg=done");
    
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("delete.jsp?msg=wrong");
}
%>