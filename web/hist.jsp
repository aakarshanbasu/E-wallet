<%-- 
    Document   : hist
    Created on : 24 Nov, 2019, 10:53:55 AM
    Author     : rajen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
table,th,td {
                border: 1px solid black;
                margin-top: 50px;
                font-family: ink free;
                font-size: 30px;
/*                text-align:  center;*/
            }
            td{
                width: 200px;
                                text-align:  center;

            }
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
        <div class="back"><a href="home.jsp" style="font-family: ink free; margin-left: 1000px; text-decoration: none; color:black;">Go To Home</a></div>
        <%
            try{
                Class.forName("oracle.jdbc.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","rpdprasad");
            Statement stm = con.createStatement();
            ResultSet res=stm.executeQuery("select * from transaction_contacts where sender="+name+"");
            %>
                                            <div style="font-family: ink free; align-content: center;color: black;margin-top: 50px;font-size: 45px">Debit History</div>

            <%
            while(res.next())
            {
                %>
                <p>
                    Transaction ID&nbsp;<%=res.getInt("tid")%><br>
                <%=res.getString("amt")%>
                Credited to&nbsp;<%=res.getString("receiver")%>
                on&nbsp;<%=res.getString("tdate")%>               

                <br></p>
                <%
            }
ResultSet res5=stm.executeQuery("select * from transaction_contacts where receiver="+name+"");
            %>
                                            <div style="font-family: ink free; align-content: center;color: black;margin-top: 50px;font-size: 45px">Credit History</div>

            <%
            while(res5.next())
            {
                %>
                <p>
                    Transaction ID&nbsp;<%=res5.getInt("tid")%><br>
                <%=res5.getString("amt")%>               
                Received from&nbsp;<%=res5.getString("sender")%>
                on&nbsp;<%=res5.getString("tdate")%>
                <br></p>
                <%
            }

ResultSet res8=stm.executeQuery("select * from transaction_bills where sender="+name+"");
            %>
                                            <div style="font-family: ink free; align-content: center;color: black;margin-top: 50px;font-size: 45px">Bill Payment History</div>

            <%
            while(res8.next())
            {
                %>
                <p>
                    Transaction ID&nbsp;<%=res8.getInt("tid")%><br>
                <%=res8.getString("amt")%>               
                Paid to&nbsp;<%=res8.getString("receiver")%>
                on&nbsp;<%=res8.getString("tdate")%>
                <br></p>
                <%
            }
%>
                <br><br>
                <%
            }
            catch(Exception e)
            {
                
            }
            %>
        
    </body>
</html>
<%
    }
%>