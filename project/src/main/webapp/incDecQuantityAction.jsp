
<%@page import ="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
String incdec=request.getParameter("quantity");
int price=0;
int total=0;
int quantity=0;
int final_total=0;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from carts where Email='"+email+"' and Product_id='"+id+"' and Address is NULL");
	while(rs.next())
	{
		price=rs.getInt(4);
		total=rs.getInt(5);
		quantity=rs.getInt(3);
	}
	if(quantity==1 && incdec.equals("dec"))
		response.sendRedirect("myCart.jsp?msg=notPossible");
	else if(quantity !=1 && incdec.equals("dec"))
	{
		total=total-price;
		quantity=quantity-1;
		st.executeUpdate("update carts set Total='"+total+"',Quantity='"+quantity+"' where Email='" +email+" ' and Product_id='"+id+"' and Address is NULL");
		response.sendRedirect("myCart.jsp?msg=dec");
	}
	else
	{
		total=total+price;
		quantity=quantity+1;
		st.executeUpdate("update carts set Total='"+total+"',Quantity='"+quantity+"' where Email='" + email+"' and Product_id='"+id+"' and Address is NULL");
		response.sendRedirect("myCart.jsp?msg=inc");
	}
	}
catch(Exception e)
{
	System.out.println(e);
	}

