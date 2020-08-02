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
        <script type="text/javascript">
        function validate(form){
            var upi=form.upi.value;
            var upi2=form.upi_confirm.value;
            if(upi.length!=4)
            {
                alert('Enter a 4 digit UPI Pin');
                return false;
            }
            if(!upi===upi2)
            {
                alert('PINs do not match');
                return false;
            }
            return true;
        }    
        </script>
    </head>
    <body>


    <% 
     String bank=request.getParameter("bank");
          
          
try{
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","rpdprasad");
            Statement stm = con.createStatement();
            //check if upi pin Exists
            
            
            String fname=request.getParameter("fname");
            String lname=request.getParameter("lname");
            String acc_no=request.getParameter("acc");
//            int acc1=Integer.parseInt(acc_no);
            String bank_name=request.getParameter("bank_name");
            
            ResultSet res=stm.executeQuery("select upi_pin from bank_acc where acc_no="+acc_no+" and upi_pin IS NULL");
            if(res.next()){

        %>
        
        
        
               <div>Create UPI Pin for your bank account</div>
        <form method="post" action="addupi.jsp" onsubmit="return validate(this);">
            <input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="text" name="upi_confirm" placeholder="Confirm UPI Pin" required="">
            <button type="submit">Create PIn</button>
            
        </form>
        
        
        
        
        
    <%
            }
            else{
                //display upi pin already exists and insert into user_details
           
                stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc_no+"')");
                %>
                <script type="text/javascript">
                alert('UPI Pin for your account already exists.Your account has been successfully added');
                window.location("home.jsp");
                </script>
                <%

            }
//}
            
}
catch(Exception e)
{
    e.printStackTrace();
}
    %>

    </body>
</html>
<% 
}
%>