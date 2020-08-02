<%-- 
    Document   : check balance
    Created on : 8 Oct, 2019, 7:36:08 PM
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
                <title>Check Balance</title>
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
.a1:hover {
    cursor:pointer;
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
input[type=password] {
  width: 80%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 0px;
  /*border: 1px solid #ccc;*/
  /*box-sizing: border-box;*/
}
.button {
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
    <img src="logo_crop_2.jpg" alt=""/> 
  <p style="font-family: ink free; font-size: 45px">Payments made easy!!</p>
  <hr>
</div>
        <%
        
try{
    Class.forName("oracle.jdbc.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","rpdprasad");
            Statement stm = con.createStatement();
            Statement s1 = con.createStatement();            
            ResultSet res=stm.executeQuery("select * from user_details where mobile_no='"+name+"'");
            if(res.next())
            {
                String acc_no=res.getString("acc_no");
                String bank_name=res.getString("bank_name");
                int acc_length=acc_no.length();
                int no_of_stars=acc_length-4;
                String acc=acc_no.substring((acc_length-4));
                ResultSet res1=s1.executeQuery("select * from bank_acc where mobile_no='"+name+"' and acc_no='"+acc_no+"'");
                if(res1.next())
                {
//                    String balance=res1.getString("balance");
                    %>
                    <div class="a1" onclick="document.getElementById('id01').style.display='block'">
                        <a>
                        <%
                        if(bank_name.equals("Allahabad Bank")){
                        %>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="allahabad bank.jpg" alt="bank_logo" height="40px" width="40px"/>&nbsp;
                        <%
                        }
                        
                        
                        
                        %>
                        <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc%>
            
                    </a> </div>
            <div id="id01"  class="modal">
                <div class="modal-content animate"><center>
                        <form class="upiform" method="post" action="balance.jsp"><br>
                            <input type="password" name="upi" placeholder="Enter UPI Pin" required><br>
            <button type="submit" style="background-color: white; border: 0px;"><i style="color: blue; font-size: 50px;"class="fas fa-check"></i></button><br>
            
                </form>        </center>
                </div>
                
            </div>
        
        
        
        <%
                }
            }
else{
%>
        <script type="text/javascript">
                                    alert('Your Bank Account is not Linked!');
                                    window.location = "home.jsp";
                                </script> 
                                <%
}
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