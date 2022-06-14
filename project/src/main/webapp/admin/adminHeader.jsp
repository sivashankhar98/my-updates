<%@page errorPage="error.jsp" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
    <%String email=session.getAttribute("email").toString(); %>
   
       <center>
       <h2>
         Online shopping (Red Mobiles)
       </h2>
       </center>
            <a href="addNewProduct.jsp">Add New Product <i class='fas fa-plus-square'></i></a>
            <a href="allProductEditProduct.jsp">All Products & Edit Products <i class='fab fa-elementor'></i></a>
            <a href="delete.jsp">Delete Products <i class='fas fa-trash' style="font-size:17px;color:red"></i>
            <a href="coupons.jsp">Coupons</a>
            <a href="">Orders Received <i class="fas fa-archive"></i></a>
            <a href="COUPONE.jsp">Coupon Edit</i></a>
            <a href="deletecoupon.jsp">Coupon Delete</a>
            <a href="../logout.jsp">Logout <i class='fas fa-share-square' style="color:red"></i></a>
          </div>
           <br>
           <!--table-->
