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
<h3 class="alert">event Added Successfully!</h3>
<%}%>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%}%>
<%
int eventid=1;
try
{
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select max(eventid) from events");
    while(rs.next())
    {
    	eventid=rs.getInt(1);
    	eventid=eventid+1;
    }
}
catch(Exception e)
{
   System.out.println(e);	
}
%>
<form action="eventaction.jsp" method="post">
<h3 style="color: red;">Event ID: <%out.println(eventid); %> </h3>
<input type="hidden" name="eventid" value="<%out.print(eventid); %>">
<div class="left-div">
 <h3>Enter Event Name</h3>
 <input class="input-style" type="text" name="eventname" placeholder="Enter event" required>
<hr>
</div>
<div class="right-div">
<h3>Enter start date</h3>
<input class="input-style" type="date" name="startdate" placeholder="Enter starting date" required>
<hr>
</div>
<div class="left-div">
<h3>Enter End date</h3>
<input class="input-style" type="date" name="enddate" placeholder="Enter ending date" required>
<hr>
</div>
 <button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</body>
</html>