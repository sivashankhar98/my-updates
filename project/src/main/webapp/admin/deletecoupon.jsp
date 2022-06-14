<%@page import="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Delete coupon</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
</style>
</head>
<body>
 <h2><a class="back" href="COUPONE.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>

<form action="deletecouponaction.jsp" method="post">
<div class="center-div">
 <h3>Enter Coupon ID</h3>
 <input class="input-style" type="text" name="couponid" required>
<hr>
</div>
 <button class="button">Delete<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">coupon Successfully Deleted!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">coupon doesn't exist </h3>
<%} %> 
</body>
<br><br><br>
</body>
</html>