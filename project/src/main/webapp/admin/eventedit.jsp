<%@page import="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title></title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
</style>
</head>
<body>
<%
String eventid=request.getParameter("eventid");
try
{
	Connection con=ConnectionProvider.getCon();
	   Statement st=con.createStatement();
	   ResultSet rs=st.executeQuery("select * from events where eventid='"+eventid+"'");
	   while(rs.next())
	{
		
%>
<form action="eventeditaction.jsp" method="post">
<input type="hidden" name="eventid" value="<% out.println(eventid);%>">
<div class="left-div">
 <h3>Enter Event Name</h3>
<input class="input-style" type="text" name="eventname" value="<%=rs.getString(2) %>" required>
<hr>
</div>

<div class="right-div">
<h3>Enter startdate</h3>
 <input class="input-style" type="date" name="startdate" value="<%=rs.getString(3) %>" required>
<hr>
</div>
<div class="left-div">
<h3>Enter End date</h3>
 <input class="input-style" type="date" name="enddate" value="<%=rs.getString(4) %>" required>
<hr>
</div>
 <button class="button">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<%
}
}
catch(Exception e)
{
System.out.println(e);
}%>

</body>
<br><br><br>
</body>
</html>