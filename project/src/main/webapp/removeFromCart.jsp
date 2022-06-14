
<%@page import="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String Email=session.getAttribute("email").toString();
String Product_id=request.getParameter("id");
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from carts where Email='"+Email+"' and Product_id='"+Product_id+"' and Address is NULL");
	response.sendRedirect("myCart.jsp?msg=removed");
	}
catch(Exception e)
{
	System.out.println(e);
	}
%>
	