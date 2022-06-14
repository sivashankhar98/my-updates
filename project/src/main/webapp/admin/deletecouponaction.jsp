<%@page import="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String couponid=request.getParameter("couponid");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
    st.executeUpdate("delete from coupons where couponid = '"+couponid+"'");
	response.sendRedirect("deletecoupon.jsp?msg=done");
    
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("deletecoupon.jsp?msg=wrong");
}
%>