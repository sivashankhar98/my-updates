<!DOCTYPE html>
<html>
<head>
<title>coupons</title>
</head>
<body>
   <form action="couponaction.jsp" method="post">
   <input type="text" name="couponname" placeholder="Enter coupon name" required>
    <input type="text" name="event" placeholder="Enter event" required>
     <input type="text" name="discount" placeholder="Enter discount price" required>
       <input type="submit" value="Add">
   </form> 
<%
 String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>coupon added succefully</h1>
<%} %>

<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

</body>
</html>