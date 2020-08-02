<%-- 
    Document   : tocontact
    Created on : 9 Oct, 2019, 10:28:15 AM
    Author     : rajen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        HttpSession session1 = request.getSession(false);
        if ( session != null)
        {
           String name= (String)session.getAttribute("n");
           
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>To Account</title>
        <link rel="icon" href="logo_crop_2.jpg">
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
input[type=text] {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 0px;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
input[type=number] {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 0px;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
input[type=password] {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 0px;
  /*border: 1px solid #ccc;*/
  box-sizing: border-box;
}
button:hover {
  opacity: 0.8;
}
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
  background-color: #fefefe;
  border: 1px solid black;
  margin-left: 550px ;
  margin-top: 120px;
  margin-right: 550px ;/*15% from the top and centered 
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
        
<!--        <div class="animate">
            <center>
            
            <i style="color: green; font-size: 50px;"class="fas fa-check"></i>
            <p style="color: green">Transaction successful</>
            </center>
            
        </div>-->
        <div>
    <center>
        <form action="sendmoney_acc.jsp" method="post">
            <input type="text" placeholder="Enter IFSC Code" name="ifsc" required><br>
            <input type="number" placeholder="Enter Account Number" name="acc" required><br>
            <input type="number" placeholder="Confirm Account Number" name="acc_confirm" required><br>
            <input type="text" placeholder="Enter Account Holder Name" name="holder" required><br>
            <input type="number" name="mobile" placeholder="Enter Mobile Number (Optional)"><br>
                        <input type="number" placeholder="Enter Amount to Transfer" name="amt" required><br>
            <input type="password" name="upi" placeholder="Enter UPI Pin" required><br><br>
            <button type="submit" style="background-color: white; border: 0px;"><i style="color: #2771d5; font-size: 50px;"class="fas fa-check"></i></button><br><br>
            <!--<button type="submit"  style="background-color: #2771d5 ;color: white;  padding: 14px 20px;margin: 8px 0;border: none;cursor: pointer;width: 10%;">Proceed</button>-->
    
        
        </form>
    </center>
        </div>
        
        
        
                      
                
            </div>
    </body>
</html>
<%
    }
%>
