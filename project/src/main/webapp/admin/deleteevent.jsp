<%@page import="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Delete Event</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
</style>
</head>
<body>
 <h2><a class="back" href="EVENT.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>

<form action="deleteeventaction.jsp" method="post">
<div class="center-div">
 <h3>Enter Event ID</h3>
 <input class="input-style" type="text" name="eventid" required>
<hr>
</div>
 <button class="button">Delete<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Event Successfully Deleted!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Event doesn't exist </h3>
<%} %> 
</body>
<br><br><br>
</body>
</html>