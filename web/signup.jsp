<%-- 
    Document   : signup
    Created on : 2 Oct, 2019, 11:03:49 AM
    Author     : rajen
--%>
<%--<jsp:include page="signupserver.jsp"/>--%>   
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <link rel="icon" href="logo_crop_2.jpg">
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
  font-family: ink free;
  font-size: 50px;
}
.signupform {
    border: 1.5px solid black;
    margin-left: 150px;
        margin-right: 150px;

}
.container {
    font-family: ink free;
    font-size: 30px;
}
input[type=text], input[type=password] {
  width: 80%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
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
  opacity: 0.9;
}
        </style>
    </head>
    <body>
        <%
//            for(int i=0;i<100000;i++)
//                        for(int j=0;j<100;j++)

        %>
        
<div class="header">
    <!--<h2 style="font-family: sans-serif">E-->     
    <br>
    <img src="logo_crop_2.jpg" alt=""/> 
  <p style="font-family: ink free; font-size: 45px">Payments made easy!!</p>
  <hr>
  <p>Sign Up</p>
</div>
        
        <!--signup form-->
        
        <div class="signupform">
            <form action="signupserver.jsp" method="post">
                <%--<jsp:include page="errors.jsp"/>--%>
                <center>

  <div class="container" >
      <br> <label for="mobile_no"><b>Mobile Number</b></label><br>
      <input class="bor" type="text" placeholder="Enter Mobile Number" name="mobile_no" required><br><br>

      <label for="psw"><b>Password</b></label><br>
      <input class="bor" type="password" placeholder="Enter Password" name="psw" required><br><br>
      
      <label for="confirm_psw"><b>Confirm Password</b></label><br>
      <input class="bor" type="password" placeholder="Confirm Password" name="confirm_psw" required><br>
        
      <button type="submit" name="signupbtn">Sign Up</button><br><br>
      
  </div>

                </center>
</form>
        </div>     
                <br>
    </body>
</html>
