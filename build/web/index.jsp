<%-- 
    Document   : index
    Created on : 2 Oct, 2019, 2:20:40 PM
    Author     : rajen
--%>
<%--<jsp:include page="login_server.jsp"/>--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

<title>E-Wallet</title>
<link rel="icon" href="logo_crop_2.jpg">
<style>
body {

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

#navbar {
  overflow: hidden;
background-color: white;
  /*background-image: url(logo_crop_2.jpg);*/
}

#navbar a {
  float: right;
  display: block;
  color: black;
  text-align: left;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 20px;
}

#navbar a:hover {
  background-color: #ddd;
  color: black;
}

#navbar a.active {
  background-color: #4CAF50;
  color: white;
}
.left-side {
    font-family: ink free;
    font-size: 17px;
    color: #070202d5;
}
.content {
  padding: 16px;
}

.sticky {
  position: fixed;
  top: 0;
  width: 80.3%;
}

.sticky + .content {
  padding-top: 60px;
}


/* Dropdown Button */
.dropbtn {
    background-color: white;
  /*color: white;*/
  padding: 20px;
  font-size: 16px;
  border: none;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  /*box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);*/
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #ddd;}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {display: block;}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {}

.bank p {
    text-align: left;
    font-size: 22px;
    font-family: ink free;
}
.bank h4 {
    font-family: sans-serif;
   
}
.solution {
    /*background-color: whitesmoke;*/
}
.solution p {
    text-align: left;
    font-size: 22px;
    font-family: ink free;
    alignment-adjust: middle;
    margin-left: 800px;
}
.solution h4 {
    font-family: sans-serif;
       margin-left: 800px;

}
.make_payments
{
    /*background-color: whitesmoke;*/
    /*font-size: 170px;*/
}
.make_payments i{
/*font-size: 170px;*/    
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
.signup p{
    font-family: ink free;
    font-size: 22px;
}
.signup h4 {
    font-family: sans-serif;
}
.login h4 {
    font-family: sans-serif;
       margin-left: 800px;

}

/*login*/
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
  padding-top: 15px;
  opacity: 0,5;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin-left: 550px ;
  margin-right: 500px ;/*15% from the top and centered 
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
  
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

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)}
  to {-webkit-transform: scale(1)}
}

@keyframes animatezoom {
  from {transform: scale(0)}
  to {transform: scale(1)}
}
.al{
    cursor: pointer;
}
.inside {
    border: 1px solid black;
    text-align:  center;
/*            margin-left: 100px;
    margin-right: 100px;*/
    
}
input[type=text], input[type=password] {
  width: 80%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
input:click{
    border: 1px solid #2771d5;
/*    border-top-color: none;
        border-left-color: none;
    border-right-color: none;
    border-bottom : 1px solid #2771d5;*/

}
form {
    border: 3px solid ;
    border-color: lightgray;
    border-width: 1.5px;
    border-radius: 2%;
    width: 28%;
    /*margin-top: 80px;*/
    }
 button {
    background-color: #2771d5 ;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 25%;
  
}

button:hover {
  opacity: 0.8;
}
</style>
</head>
<body>

<div class="header">
    <!--<h2 style="font-family: sans-serif">E-->     
    <br>
    <!--<img src="logo_crop_2.jpg" alt=""/>-->
    <img src="logo_crop_2.jpg" alt="Company logo"/> 
  <p style="font-family: ink free; font-size: 45px">Payments made easy!!</p>
</div>
<hr>
<div id="navbar">
<!--  <a href="javascript:void(0)">Home</a>
  <a href="javascript:void(0)">News</a>
  <a href="javascript:void(0)">Contact</a>-->
  
  <!--</div>-->
<!--      <div class="dropdown">
          <button class="dropbtn">Login</button>
  <div class="dropdown-content">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
</div>
</div>-->
    
<!--  <div class="dropdown">
        <button class="dropbtn">Sign up</button>
          <div class="dropdown-content">
  <a href="javascript:void(0)">Home</a>
  <a href="javascript:void(0)">News</a>
  <a href="javascript:void(0)">Contact</a>
    </div>
    </div>-->
<!--<ul class="nav navbar-nav">
                    <li class="navbar-brand left-side" >E-Wallet</li>
                </ul>-->
  <!--<a href="login.html">Login</a>-->
  <!-- Button to open the modal login form -->
<a class="al" onclick="document.getElementById('id01').style.display='block'">Login</a>

<!-- The Modal -->
<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'"
class="close" title="Close">&times;</span>

  <!-- Modal Content -->
  <form class="modal-content animate" action="login_server.jsp" method="post">
      <div class="inside">
    <div class="imgcontainer">
        <img src="customer.png" alt="Avatar" class="avatar"><br>
        <p style="font-family: ink free;">Welcome Back!! Enter you mobile number to continue</p>
    </div>
      
    <div class="container">
        <label for="mob"></label>
        <input type="text" placeholder="Mobile Number" name="mob" required>
<br>
      <label for="psw"><b></b></label><br>
      <input type="password" placeholder="Enter Password" name="psw" required>
<br>
<button type="submit" name="loginbtn">Login</button><br>
<!--      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>-->
    </div>

    
      </div>
  </form>
</div>
    


<a class="al" href="signup.jsp">Sign Up</a>




  
</div>
<!--<div class="content">
  <h3>Sticky Navigation Example</h3>
  <p>The navbar will stick to the top when you reach its scroll position.</p>
  <p>Some text to enable scrolling.. Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
  <p>Some text to enable scrolling.. Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
  <p>Some text to enable scrolling.. Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
  <p>Some text to enable scrolling.. Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
  <p>Some text to enable scrolling.. Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
  <p>Some text to enable scrolling.. Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
  <p>Some text to enable scrolling.. Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
</div>-->

<script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>

<img src="bank 1 crop.jpg" alt="bank" align="right" width="30%">

<div class="bank">
    <h4>A bank account is all you need.</h4>      

      <p>Just link your bank account with us <br>
      and make hassle-free, secure payments <br>
      directly from your bank account 24/7. <br>
      Your money is always in your bank, <br>
      not locked in a wallet.</p>
      <br><br><br>
</div>
<img src="payments.jpg" alt="bank" align="left" width="30%">
<div class="solution">
    <h4>Single solution to multiple payments.</h4>      

    <p>From electricity bills, DTH recharge, <br>
        landline bills to sending & requesting money.<br> 
          You can do all this and more using E-wallet.</p>
    <br><br><br><br>
</div>

<!--<div class="make_payments">
    
    <p  class="make_payments_header" style="text-align: center ; font-family: ink free">Make Instant Payments</p>
    <a href="login.html" style="font-family: ink free; font-size: 20px"><i class="far fa-paper-plane"></i>&nbsp;Send Money&nbsp;</a>
</div>-->
<br>
<div class="  user-select login-links" >
        <center>
            <p>Make Instant Payments</p> 
            
            <a style="font-family: ink free; font-size: 20px"><i class="far fa-paper-plane">&nbsp;Send Money&nbsp;</i></a>
                <a style="font-family: ink free; font-size: 20px"><i class="far fa-money-bill-alt">&nbsp;Pay Bills&nbsp;</i></a>
                <br>
                <br>
            </center>
    </div>
<br><br>

<div class="signup">
    <a class="al" href="signup.jsp"><img src="signup.png" alt="signup" align="right"></a>

    <h4>New to E-wallet? Signup now<br>(our registration process is simple and quick)</h4>
    <p>Sign up right now
       to avoid <br>those queues next time you make <br>
       a bill payment and much more!!</p>
    <br><br>

</div>
<a class="al" onclick="document.getElementById('id01').style.display='block'"><img src="login.png" alt="login" align="left"></a>
<div class="login">
    <h4>Existing User? Login now (Glad to have you back!!)</h4>
    <br><br><br><br>
<!--    <p>Sign up right now
       to avoid <br>those queues next time you make <br>
       a bill payment and much more!!</p>-->
    
</div>
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

</script>
</body>
</html>
