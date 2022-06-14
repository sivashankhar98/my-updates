<%@page import="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title></title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">coupon Added Successfully!</h3>
<%}%>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%}%>
<%
int couponid=1;
try
{
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select max(couponid) from coupons");
    while(rs.next())
    {
    	couponid=rs.getInt(1);
    	couponid=couponid+1;
    }
}
catch(Exception e)
{
   System.out.println(e);	
}
%>
<form action="couponaction.jsp" method="post">
<h3 style="color: red;">COUPON ID: <%out.println(couponid); %> </h3>
<input type="hidden" name="couponid" value="<%out.print(couponid); %>">


<div class="left-div">
 <h3>Enter Coupon Name</h3>
 <input class="input-style" type="text" name="couponname" placeholder="Enter coupon" required>
 
<hr>
</div>
<div class="right-div">
 <h3>Enter event</h3>
 <input class="input-style" type="text" name="event" placeholder="Enter event" required>
 
<hr>
</div>
<div class="left-div">
<h3>Enter start date</h3>
<input class="input-style" type="date" name="startdate" placeholder="Enter starting date" required>
 
<hr>
</div>
<div class="right-div">
<h3>Enter End date</h3>
<input class="input-style" type="date" name="enddate" placeholder="Enter ending date" required>
 
<hr>
</div>


<div class="left-div">
<h3>Enter discount</h3>
<input class="input-style" type="number" name="discount">
</div>
 <button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</body>
</html>