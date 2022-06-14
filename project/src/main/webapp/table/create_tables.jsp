<%@page import="projects.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
String q1="create table users(name varchar(100),email varchar(100)primary key,mobilenumber integer,password varchar(100),address varchar(200),city varchar(100),state varchar(100),country varchar(100))";
String q2="create table products(id integer,name varchar(200),category varchar(200),price integer,active varchar(100),image varchar(250))";
String q3="create table carts(email varchar(100),product_id integer,quantity integer,price integer,total integer,address varchar(500),city varchar(100),state varchar(200),country varchar(100),mobileNumber bigint,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionId varchar(100),status varchar(100))";
String q4="create table coupons(couponid int,couponname varchar(100),event varchar(100),startdate date,enddate date,discount varchar(100))";
System.out.println(q1);
System.out.println(q2);
System.out.println(q3);
System.out.println(q4);
//st.execute(q1);
//st.execute(q2);
//st.execute(q3);
st.execute(q4);
System.out.print("Table is created");
con.close();
}
catch(Exception e)
{
System.out.print(e);
}
%>