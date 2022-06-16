<%@page import="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String couponid=request.getParameter("couponid");
String description=request.getParameter("description");
String eventid=request.getParameter("eventid");
String categoryid=request.getParameter("categoryid");
String discount=request.getParameter("discount");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update coupons set description = '"+description+"', eventid = '"+eventid+"',categoryid = '"+categoryid+"', discount = '"+discount+"' where couponid = '"+couponid+"'");
	
	response.sendRedirect("COUPONE.jsp?msg=done");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("COUPONE.jsp?msg=wrong");
}
%>