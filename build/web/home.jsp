<%-- 
    Document   : home
    Created on : 2 Oct, 2019, 2:57:39 PM
    Author     : rajen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        HttpSession session1 = request.getSession(false);
        if ( session != null)
        {
           String mobile= (String)session.getAttribute("n");

        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to E-wallet</title>
        <link rel="icon" href="logo_crop_2.jpg">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

        <style>
            body {
  margin: 0;
  font-size: 28px;
  font-family: Arial, Helvetica, sans-serif;
  /*padding: 50px;*/
  margin-left: 150px;
  margin-right: 150px;
}

.header {
  /*background-color: #f1f1f1;*/
  padding: 30px;
  text-align: center;
}
.make_payments a {
    font-size: 150px;
    color: #8a8a8a;
    text-decoration: none;
    transition: color 0.5s;
}
.make_payments a:hover {
color : black;
}
.make_payments_header{
    font-size: 50px;
}


.login-links i{
    font-size: 50px;
    /*margin-top: 250px;*/
}
.login-links a:hover{
    color: black;
    
}
.user-select {
    justify-content: center;
    height: 500 ;
    width: 1500;
}
login-links {

    height: 500 ;
    width: 1500;
}
    
.user-select p{
    font-family: ink free;
    font-size: 50px;
}
.login-links a{
    color: #8a8a8a;
    text-decoration: none;
    transition: color 0.5s;
    font-family: ink free;
    font-size: 50px;
}
.login-links i{
    font-size: 50px;
    /*margin-top: 250px;*/
}
.login-links a:hover{
    color: black;
    cursor:pointer;
}
.user-select {
    justify-content: center;
    height: 500 ;
    width: 1500;
}
login-links {

    height: 500 ;
    width: 1500;
}
/*.land {
    margin-left: 580px;
    margin-top: 50px;
}
.dth{
 margin-left: 1160px;
 margin-top: -250px;
}*/
            /* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
  opacity: 0,5;
}


/* Modal Content/Box */
.modal-content {
  background-color: white;
  margin-left: 500px ;
  margin-right: 500px ;/*15% from the top and centered 
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
  margin-top: 100px;
  /*align-content: left;*/
}
.modal-content1 {
  background-color: white;
  margin-left: 600px ;
  margin-right: 620px ;/*15% from the top and centered 
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
  margin-top: 100px;
  /*align-content: left;*/
}

/* The Close Button */
.close {
  /* Position it in the top right corner outside of the modal */
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

/* Close button on hover */
.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}
/* The Close Button */
.close1 {
  /* Position it in the top right corner outside of the modal */
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

/* Close button on hover */
.close1:hover,
.close1:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate1 {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}
.login-links i{
    font-size: 50px;
    /*margin-top: 250px;*/
}
.login-links1 a:hover{
    color: black;
    
}
.user-select1 {
    justify-content: center;
    height: 500 ;
    width: 1500;
}
login-links1 {

    height: 500 ;
    width: 1500;
}
    
.user-select1 p{
    font-family: ink free;
    font-size: 50px;
}
.login-links1 a{
    color: #8a8a8a;
    text-decoration: none;
    transition: color 0.5s;
    font-family: ink free;
    font-size: 50px;
}
.login-links1 i{
    font-size: 50px;
    /*margin-top: 250px;*/
}
.login-links1 a:hover{
    color: black;
    cursor:pointer;
}
.user-select1 {
    justify-content: center;
    height: 500 ;
    width: 1500;
}
login-links1 {

    height: 500 ;
    width: 1500;
}
/*.land {
    margin-left: 580px;
    margin-top: 50px;
}
.dth{
 margin-left: 1160px;
 margin-top: -250px;
}*/
            /* The Modal (background) */
.modal1 {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
  opacity: 0,5;
}
@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)}
  to {-webkit-transform: scale(1)}
}

@keyframes animatezoom {
  from {transform: scale(0)}
  to {transform: scale(1)}
}
        </style>
    </head>
    <body>
        <div class="header">
    <!--<h2 style="font-family: sans-serif">E-->     
    <br>
    <img src="logo_crop_2.jpg" alt=""/> 
  <p style="font-family: ink free; font-size: 45px">Payments made easy!!</p>
  <hr>
</div>
        <a style="font-family: ink free; margin-left: 1000px; text-decoration: none; color:black;" href="logout.jsp"><i class="fas fa-sign-out-alt"></i>&nbsp;Logout</a>
        <div class="main">
        <div class="  user-select login-links" >
        <center>

            
            <a style="font-family: ink free;" onclick="document.getElementById('id04').style.display='block'"><i class="fas fa-landmark"></i>&nbsp;Money Transfers&nbsp;</a>
            
                <a style="font-family: ink free;"onclick="document.getElementById('id05').style.display='block'"><i class="far fa-money-bill-alt"></i>&nbsp;Bills&nbsp;</a>
                <br>
                <br>
            </center>
    </div>
            <div id="id04" class="modal">
            <span onclick="document.getElementById('id04').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <div class="user-select login-links">
        <br>
            &nbsp;&nbsp;<a href="addbankaccount.jsp"><i class="fas fa-landmark">&nbsp;</i>Add Bank Account&nbsp;</a><br>
            <!--&nbsp;&nbsp;<a href=""><i class="far fa-paper-plane">&nbsp;</i>Set Default Account&nbsp;</a><br>-->
            &nbsp;&nbsp;<a href="tocontact.jsp"><i class="far fa-address-book"></i>&nbsp;To Contact&nbsp;</a><br>            
            &nbsp;&nbsp;<a href="toaccount.jsp"><i class="fas fa-long-arrow-alt-up"></i><i class="fas fa-landmark">&nbsp;</i>To Account&nbsp;</a><br>
            &nbsp;&nbsp;<a  href="check balance.jsp" ><i class="fas fa-rupee-sign">&nbsp;</i>Check Bank Balance&nbsp;</a><br>
            &nbsp;&nbsp;<a  href="hist.jsp" ><i class="fas fa-history"></i>Transaction History&nbsp;</a><br><br>
            <!--&nbsp;&nbsp;<a href=""><i class="fas fa-long-arrow-alt-down"></i>&nbsp;Request Money&nbsp;</a><br><br>-->
        </div>
</div>
            </div>
            
            <div id="id05" class="modal1">
            <span onclick="document.getElementById('id05').style.display='none'"
class="close1" title="Close">&times;</span>
<div class="modal-content1 animate1">
    <div class="user-select1 login-links1">
        <br>
            &nbsp;&nbsp;<a href="electricity.jsp"><i class="fas fa-lightbulb">&nbsp;</i>Electricity&nbsp;</a><br>
            &nbsp;<a href="landline.jsp"><span class="glyphicon glyphicon-phone-alt"></span>Landline&nbsp;</a><br>
            &nbsp;&nbsp;<a href="dth.jsp"><i class="fas fa-satellite-dish"></i>&nbsp;DTH&nbsp;</a><br>  <br>          
<!--            &nbsp;&nbsp;<a href=""><i class="fas fa-long-arrow-alt-up"></i><i class="fas fa-landmark">&nbsp;</i>To Account&nbsp;</a><br>
            &nbsp;&nbsp;<a  href="index.jsp" ><i class="fas fa-rupee-sign">&nbsp;</i>Check Bank Balance&nbsp;</a><br>
            &nbsp;&nbsp;<a href=""><i class="fas fa-long-arrow-alt-down"></i>&nbsp;Request Money&nbsp;</a><br><br>-->
        </div>
</div>
            </div>
        </div>
<!--        <div class="user-select login-links">
            <a href="indx.jsp"><i class="fas fa-landmark">&nbsp;</i>Add Bank Account&nbsp;</a><br>
            <a href=""><i class="far fa-paper-plane">&nbsp;</i>Send Money&nbsp;</a><br>

            <a  href="index.jsp" ><i class="fas fa-rupee-sign">&nbsp;</i>Check Bank Balance&nbsp;</a><br>
        </div>
        
        <div class="user-select login-links ">
            <a href="indx.jsp"><i class="fas fa-lightbulb">&nbsp;</i>Electricity&nbsp;</a></div>
            <div class="user-select login-links land"> <a  href="index.jsp" ><i class="fas fa-blender-phone">&nbsp;</i>Landline&nbsp;</a></div>
            <div class="user-select login-links dth"> <a  href="index.jsp" ><i class="fas fa-satellite-dish">&nbsp;</i>DTH&nbsp;</a></div>

        </div>-->


<script>
// Get the modal
var modal = document.getElementById('id04');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

</script>
        <script>
// Get the modal
var modal1 = document.getElementById('id05');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal1) {
    modal1.style.display = "none";
  }
}

</script>

    </body>
</html>
<%
    
            try{
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","rpdprasad");
            Statement stm = con.createStatement();
            ResultSet res= stm.executeQuery("select * from trg");
            if(res.next())
            {
                String n=res.getString("sender");
                %>
                        <center>                <div>
                    
                                <p style="font-family: ink free;">Exciting Reward coming soon!!<br>The highest number Of transactions done are <%=n%>. <br>
                                Do some transactions now to improve your chances of winning exciting rewards.
                                </p>
                                        
                                
                                
                    </div>
                                        
</center>



<%
            }
            }
            catch(Exception e)
            {
                
            }
    
    
    
    }


%>