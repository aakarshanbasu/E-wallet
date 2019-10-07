<%-- 
    Document   : acc_server
    Created on : 5 Oct, 2019, 12:43:25 PM
    Author     : rajen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
        <title>Welcome to E-wallet</title>
        <link rel="icon" href="logo_crop_2.jpg">
        <style>
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
  margin-left: 520px ;
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
        <div id="id06" class="modal">
<!--            <span onclick="document.getElementById('id06').style.display='none'"
class="close" title="Close">&times;</span>-->
<div class="modal-content animate">
    <div style="font-family: ink free;">&nbsp;Fetching information from your bank&nbsp;</div>
    <% 
     String bank=request.getParameter("bank");
          
          
try{
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","rpdprasad");
            Statement stm = con.createStatement();
            
            stm.executeQuery("insert into user_details values("")");
            
}
catch(Exception e)
{
    e.printStackTrace();
}
    %>
</div>
            </div>
    </body>
</html>
<% 
}
%>