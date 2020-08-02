<%-- 
    Document   : sendmoney
    Created on : 9 Oct, 2019, 10:53:07 AM
    Author     : rajen
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Random"%>
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
        <title>To Contact</title>
                                <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

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
input[type=password] {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 0px;
  /*border: 1px solid #ccc;*/
  box-sizing: border-box;
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
    <!--<h2 style="font-family: sans-serif">E-->     
   
    </head>
    <body>
                <div class="header">
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
            String mob=request.getParameter("mob_no");
            int amt=Integer.parseInt(request.getParameter("amt"));
            String upi=request.getParameter("upi");            
            ResultSet res=stm.executeQuery("select * from user_details where mobile_no='"+mob+"'");
            if(res.next())
            {
                String accR=res.getString("acc_no");
                String rfname=res.getString("fname");
                String rlname=res.getString("lname");                
                ResultSet res1=stm.executeQuery("select * from bank_acc where mobile_no='"+name+"' and upi_pin='"+upi+"'");
                if(res1.next())
                {
                    int balanceS=res1.getInt("balance");
                    if(balanceS<amt)
                    {
                        %>
<!--                  <script type="text/javascript">
                                    alert('Insufficient Balance');
                                    window.location = "home.jsp";
                                </script>   -->

<div class="animate">
            <center>
            
                <i class="fas fa-exclamation" style="font-size: 50px; color :red"></i></i>
            <p style="color: red">Insufficient Balance</p>
                        <a href="tocontact.jsp" style="color: red; text-decoration: none">OK</a>

            </center>
            
        </div>
                <%
                    }
                    else
                    {
                        ResultSet res4=stm.executeQuery("select * from bank_acc where mobile_no='"+mob+"' and acc_no='"+accR+"'");
                        if(res4.next())
                        {
                            int balanceR=res4.getInt("balance");
                            balanceR=balanceR+amt;
                            balanceS=balanceS-amt;
                            stm.executeQuery("update bank_acc set balance='"+balanceS+"' where mobile_no='"+name+"'");
                            stm.executeQuery("update bank_acc set balance='"+balanceR+"' where mobile_no='"+mob+"'");
                            Random r=new Random();
                            int i=r.nextInt();
                            if(i<0){
               i=(-1)*i;
           }
DateFormat df=new SimpleDateFormat("dd/MM/yyyy");
                                        Date date=new Date();
                                        String x=df.format(date);
                                        Calendar cal = Calendar.getInstance();
                                        cal.setTime(date);
//                                        cal.add(Calendar.DATE, 7);
//                                        Date ret = cal.getTime();
//                                        String future = df.format(ret);
                            stm.executeQuery("call inserttr_contacts("+i+",'"+name+"','"+mob+"',"+amt+",'"+x+"')");
//                            stm.executeQuery("");

                            %>
<!--                  <script type="text/javascript">
                                    alert('Transaction successful');
                                    window.location = "home.jsp";
                                </script>   -->
<div class="animate">
            <center>
            
            <i style="color: green; font-size: 50px;"class="fas fa-check"></i>
            <p style="color: green">Transaction successful</p>
                        <a href="home.jsp" style="color: green; text-decoration: none">OK</a>

            </center>
            
        </div>
                <%
                        }
                    }
                }
                else
                {
                    %>
<!--                  <script type="text/javascript">
                                    alert('Incorrect UPI Pin');
                                    window.location = "tocontact.jsp";
                                </script>   -->


<div class="animate">
            <center>
            
                <i class="fas fa-exclamation" style="font-size: 50px; color :red"></i></i>
            <p style="color: red">Incorrect UPI Pin</p>
            
            <a href="tocontact.jsp" style="color: red; text-decoration: none">OK</a>
            </center>
            
        </div>



                <%
                                }
                %>

               
        <%
//            session.setAttribute("m",mob);
            }
else{
%>
<script type="text/javascript">
                                    alert('The user does not use E-wallet! Try transfering to bank account.');
                                    window.location = "home.jsp";
                                </script> 
<%
}
        }
        catch(Exception e){
       e.printStackTrace();
        }
        
        
        
        
        
        %>
        
        
        
        
    </body>
</html>
<%
    }
%>
