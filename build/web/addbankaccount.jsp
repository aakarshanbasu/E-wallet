<%-- 
    Document   : addbankaccount
    Created on : 4 Oct, 2019, 4:29:25 PM
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
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Bank Account</title>
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
.bank {
    color:#8a8a8a;
    text-decoration: none;
    transition: color 0.5s;
    font-size: 30px;
   
}
.bank:hover {
    color: black;
    cursor: pointer;
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
.upi{
    text-align: center;
    font-family: ink free;
}
.upiform{
    text-align: center;
}
input[type=text], input[type=password] {
  width: 80%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
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
</div>
        <hr>
        
        <h4 style="font-family: ink free">Select your bank from below</h4>
        
        <%
            try{
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","rpdprasad");
            Statement stm = con.createStatement();
            Statement s1 = con.createStatement();
            Statement s2 = con.createStatement();

            ResultSet res=stm.executeQuery("select * from bank ORDER BY bank_name");
                            String bank[]=new String[50];   //{"Allahabad Bank","Andhra Bank","Axis Bank","Bandhan Bank","Bank of Baroda","Bank of India","Bank of Maharashtra","Bhartiya Mahila Bank","Canara Bank","Catholic Syrian Bank",};
int index=0;
            while(res.next())
            {            
                String bank_name=res.getString("bank_name");
                bank[index]=res.getString("bank_name");
                index++;
                    if(bank_name.equalsIgnoreCase("allahabad bank"))
                    {  
        %>                <img  src="allahabad bank.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id00').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }
        if(bank_name.equalsIgnoreCase("andhra bank"))
                    {
                        
        %>                <img  src="andhra bank.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id01').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }
        if(bank_name.equalsIgnoreCase("axis bank"))
                    {
                        
        %>                <img  src="axis bank.png" height="45px" width="45px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id02').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }
if(bank_name.equalsIgnoreCase("bandhan bank"))
                    {
                        
        %>                <img  src="bandhan bank.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id03').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }
                if(bank_name.equalsIgnoreCase("bank of baroda"))
                    {
                        
        %>                <img  src="bank of baroda.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id04').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }
if(bank_name.equalsIgnoreCase("bank of india"))
                    {
                        
        %>                <img  src="bank of india.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id05').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }
if(bank_name.equalsIgnoreCase("bank of maharashtra"))
                    {
                        
        %>                <img  src="bank of maharashtra.png" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id06').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }
if(bank_name.equalsIgnoreCase("bhartiya mahila bank"))
                    {
                        
        %>                <img  src="bharatiya mahila bank.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id07').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }
if(bank_name.equalsIgnoreCase("canara bank"))
                    {
                        
        %>                <img  src="canara bank.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id08').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }
if(bank_name.equalsIgnoreCase("catholic syrian bank"))
{
                        
        %>                <img  src="catholic syrian bank.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id09').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }
if(bank_name.equalsIgnoreCase("central bank of india"))
                    {
                        
        %>                <img  src="central bank of india.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id10').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("city union bank"))
                    {
                        
        %>                <img  src="city union bank.png" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id11').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("corporation bank"))
                    {
        %>                <img  src="corporation bank.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id12').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("dcb bank"))
                    {  
        %>                <img  src="dcb bank.png" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id13').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("dena bank"))
                    {   
        %>                <img  src="dena bank.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id14').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("dhanlaxmi bank"))
                    {   
        %>                <img  src="dhanlaxmi bank.png" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id15').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("federal bank"))
                    {   
        %>                <img  src="federal bank.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id16').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("hdfc bank"))
                    {   
        %>                <img  src="hdfc bank.png" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id17').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("icici bank"))
                    {   
%>                <img  src="icici bank.png" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id18').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("idbi bank"))
                    {  
                        
%>                <img  src="idbi bank.png" height="40px" width="40px" alt="bank_logo"/>
        
        <a type="submit" onclick="document.getElementById('id19').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }
if(bank_name.equalsIgnoreCase("idfc first bank"))
                    {  
                        
%>                <img  src="idfc first bank.png" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id20').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("indian bank"))
                    {  
                        
%>                <img  src="indian bank.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id21').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("indian overseas bank"))
                    {  
                        
%>                <img  src="indian overseas bank.png" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id22').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }
if(bank_name.equalsIgnoreCase("indusind bank"))
                    {  
                        
%>                <img  src="indusind bank.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id23').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("jammu & kashmir bank"))
                    {   
%>                <img  src="j&k bank.png" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id24').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("karnataka bank"))
                    {  
                        
%>                <img  src="karnataka bank.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id25').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("karur vysya bank"))
                    {   
%>                <img  src="karur vysya bank.png" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id26').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("kotak mahindra bank"))
                    { 
%>                <img  src="kotak mahindra.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id27').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("lakshmi vilas bank"))
                    {  
%>                <img  src="lakshmi vilas bank.jpg" height="40px" width="40px" alt="bank_logo"/>
        
        <a type="submit" onclick="document.getElementById('id28').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("nainital bank"))
                    {  
%>                <img  src="nanital bank.jpg" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id29').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("oriental bank of commerce"))
                    {  
%>                <img  src="obc.png" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id30').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("punjab national bank"))
                    {   
%>                <img  src="pnb.png" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id31').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("punjab and sind bank"))
                    {  
%>                <img  src="punjab and sindh bank.png" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id32').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("rbl bank"))
                    {   
%>                <img  src="rbl bank.png" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id33').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("south indian bank"))
                    {  
%>                <img  src="south indian bank.png" height="40px" width="40px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id34').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("state bank of bikaner & jaipur"))
                    {
%>                <img  src="sbi.png" height="40px" width="55px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id35').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("state bank of hyderabad"))
                    { 
%>                <img  src="sbi.png" height="40px" width="55px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id36').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("state bank of india"))
                    { 
%>                <img  src="sbi.png" height="40px" width="55px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id37').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("state bank of mysore"))
                    {  
%>                <img  src="sbi.png" height="40px" width="55px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id38').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("state bank of patiala"))
                    { 
%>                <img  src="sbi.png" height="40px" width="55px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id39').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("state bank of travancore"))
                    {  
%>                <img  src="sbi.png" height="40px" width="55px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id40').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("syndicate bank"))
                    {  
%>                <img  src="syndicate bank.png" height="40px" width="55px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id41').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("uco bank"))
                    { 
%>                <img  src="uco.png" height="40px" width="55px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id42').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("union bank of india"))
                    {  
%>                <img  src="union bank.png" height="40px" width="55px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id43').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("united bank of india"))
                    {   
%>                <img  src="united bank.png" height="40px" width="55px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id44').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("vijaya bank"))
                    {  
%>                <img  src="vijya bank.jpg" height="40px" width="55px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id45').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }if(bank_name.equalsIgnoreCase("yes bank"))
                    {  
%>                <img  src="yes bank.jpg" height="40px" width="55px" alt="bank_logo"/>
        <a type="submit" onclick="document.getElementById('id46').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
                    }
if(bank_name.equalsIgnoreCase("tamilnad mercantile bank limited")){

                        %>
<img src="tamilnad.png"  height="40 px" width="40px" alt="bank_logo"/>
<a type="submit" onclick="document.getElementById('id47').style.display='block'" class="bank"><%=bank_name%><br></a>
<%
    }
%>
        
                <%
            }

%>
<div id="id00" class="modal">
    <%
            ResultSet bankid=stm.executeQuery("select bank_id from bank where bank_name='Allahabad Bank'");
            if(bankid.next())
            {    
                int id=bankid.getInt("bank_id");
                ResultSet bankacc=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc.next())
                    {
%>
            <span onclick="document.getElementById('id00').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc.getString("fname");
        String lname=bankacc.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc.getString("branch");
        String acc=bankacc.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Allahabad Bank";
        String upi=bankacc.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id00').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>


<div id="id01" class="modal">
    <%
            ResultSet bankid1=stm.executeQuery("select bank_id from bank where bank_name='Andhra Bank'");
            if(bankid1.next())
            {    
                int id=bankid1.getInt("bank_id");
                ResultSet bankacc1=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc1.next())
                    {
%>
            <span onclick="document.getElementById('id01').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc1.getString("fname");
        String lname=bankacc1.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc1.getString("branch");
        String acc=bankacc1.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Andhra Bank";
        String upi=bankacc1.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
            
}
}
}

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id01').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>


<div id="id02" class="modal">
    <%
            ResultSet bankid2=stm.executeQuery("select bank_id from bank where bank_name='Axis Bank'");
            if(bankid2.next())
            {    
                int id=bankid2.getInt("bank_id");
                ResultSet bankacc2=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc2.next())
                    {
%>
            <span onclick="document.getElementById('id02').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc2.getString("fname");
        String lname=bankacc2.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc2.getString("branch");
        String acc=bankacc2.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Axis Bank";
        String upi=bankacc2.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id02').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>


<div id="id03" class="modal">
    <%
            ResultSet bankid3=stm.executeQuery("select bank_id from bank where bank_name='Bandhan Bank'");
            if(bankid3.next())
            {    
                int id=bankid3.getInt("bank_id");
                ResultSet bankacc3=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc3.next())
                    {
%>
            <span onclick="document.getElementById('id03').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc3.getString("fname");
        String lname=bankacc3.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc3.getString("branch");
        String acc=bankacc3.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Bandhan Bank";
        String upi=bankacc3.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id03').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>


<div id="id04" class="modal">
    <%
            ResultSet bankid4=stm.executeQuery("select bank_id from bank where bank_name='Bank of Baroda'");
            if(bankid4.next())
            {    
                int id=bankid4.getInt("bank_id");
                ResultSet bankacc4=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc4.next())
                    {
%>
            <span onclick="document.getElementById('id04').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc4.getString("fname");
        String lname=bankacc4.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc4.getString("branch");
        String acc=bankacc4.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Bank of Baroda";
        String upi=bankacc4.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id04').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id05" class="modal">
    <%
            ResultSet bankid5=stm.executeQuery("select bank_id from bank where bank_name='Bank of India'");
            if(bankid5.next())
            {    
                int id=bankid5.getInt("bank_id");
                ResultSet bankacc5=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc5.next())
                    {
%>
            <span onclick="document.getElementById('id05').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc5.getString("fname");
        String lname=bankacc5.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc5.getString("branch");
        String acc=bankacc5.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Bank of India";
        String upi=bankacc5.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id05').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id06" class="modal">
    <%
            ResultSet bankid6=stm.executeQuery("select bank_id from bank where bank_name='Bank of Maharashtra'");
            if(bankid6.next())
            {    
                int id=bankid6.getInt("bank_id");
                ResultSet bankacc6=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc6.next())
                    {
%>
            <span onclick="document.getElementById('id06').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc6.getString("fname");
        String lname=bankacc6.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc6.getString("branch");
        String acc=bankacc6.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Bank of Maharashtra";
        String upi=bankacc6.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id06').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id07" class="modal">
    <%
            ResultSet bankid7=stm.executeQuery("select bank_id from bank where bank_name='Bhartiya Mahila Bank'");
            if(bankid7.next())
            {    
                int id=bankid7.getInt("bank_id");
                ResultSet bankacc7=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc7.next())
                    {
%>
            <span onclick="document.getElementById('id07').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc7.getString("fname");
        String lname=bankacc7.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc7.getString("branch");
        String acc=bankacc7.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Bhartiya Mahila Bank";
        String upi=bankacc7.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id07').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id08" class="modal">
    <%
            ResultSet bankid8=stm.executeQuery("select bank_id from bank where bank_name='Canara Bank'");
            if(bankid8.next())
            {    
                int id=bankid8.getInt("bank_id");
                ResultSet bankacc8=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc8.next())
                    {
%>
            <span onclick="document.getElementById('id08').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc8.getString("fname");
        String lname=bankacc8.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc8.getString("branch");
        String acc=bankacc8.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Canara Bank";
        String upi=bankacc8.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id08').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id09" class="modal">
    <%
            ResultSet bankid9=stm.executeQuery("select bank_id from bank where bank_name='Catholic Syrian Bank'");
            if(bankid9.next())
            {    
                int id=bankid9.getInt("bank_id");
                ResultSet bankacc9=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc9.next())
                    {
%>
            <span onclick="document.getElementById('id09').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc9.getString("fname");
        String lname=bankacc9.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc9.getString("branch");
        String acc=bankacc9.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Catholic Syrian Bank";
        String upi=bankacc9.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id09').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id10" class="modal">
    <%
            ResultSet bankid10=stm.executeQuery("select bank_id from bank where bank_name='Central Bank of India'");
            if(bankid10.next())
            {    
                int id=bankid10.getInt("bank_id");
                ResultSet bankacc10=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc10.next())
                    {
%>
            <span onclick="document.getElementById('id10').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc10.getString("fname");
        String lname=bankacc10.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc10.getString("branch");
        String acc=bankacc10.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Central Bank of India";
        String upi=bankacc10.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id10').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>


<div id="id11" class="modal">
    <%
            ResultSet bankid11=stm.executeQuery("select bank_id from bank where bank_name='City Union Bank'");
            if(bankid11.next())
            {    
                int id=bankid11.getInt("bank_id");
                ResultSet bankacc11=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc11.next())
                    {
%>
            <span onclick="document.getElementById('id11').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc11.getString("fname");
        String lname=bankacc11.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc11.getString("branch");
        String acc=bankacc11.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="City Union Bank";
        String upi=bankacc11.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id11').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id12" class="modal">
    <%
            ResultSet bankid12=stm.executeQuery("select bank_id from bank where bank_name='Corporation Bank'");
            if(bankid12.next())
            {    
                int id=bankid12.getInt("bank_id");
                ResultSet bankacc12=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc12.next())
                    {
%>
            <span onclick="document.getElementById('id12').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc12.getString("fname");
        String lname=bankacc12.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc12.getString("branch");
        String acc=bankacc12.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Corporation Bank";
        String upi=bankacc12.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id12').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id13" class="modal">
    <%
            ResultSet bankid13=stm.executeQuery("select bank_id from bank where bank_name='DCB Bank'");
            if(bankid13.next())
            {    
                int id=bankid13.getInt("bank_id");
                ResultSet bankacc13=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc13.next())
                    {
%>
            <span onclick="document.getElementById('id13').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc13.getString("fname");
        String lname=bankacc13.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc13.getString("branch");
        String acc=bankacc13.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="DCB Bank";
        String upi=bankacc13.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id13').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id14" class="modal">
    <%
            ResultSet bankid14=stm.executeQuery("select bank_id from bank where bank_name='Dena Bank'");
            if(bankid14.next())
            {    
                int id=bankid14.getInt("bank_id");
                ResultSet bankacc14=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc14.next())
                    {
%>
            <span onclick="document.getElementById('id14').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc14.getString("fname");
        String lname=bankacc14.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc14.getString("branch");
        String acc=bankacc14.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Dena Bank";
        String upi=bankacc14.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id14').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id15" class="modal">
    <%
            ResultSet bankid15=stm.executeQuery("select bank_id from bank where bank_name='Dhanlaxmi Bank'");
            if(bankid15.next())
            {    
                int id=bankid15.getInt("bank_id");
                ResultSet bankacc15=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc15.next())
                    {
%>
            <span onclick="document.getElementById('id15').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc15.getString("fname");
        String lname=bankacc15.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc15.getString("branch");
        String acc=bankacc15.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Dhanlaxmi Bank";
        String upi=bankacc15.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id15').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id16" class="modal">
    <%
            ResultSet bankid16=stm.executeQuery("select bank_id from bank where bank_name='Federal Bank'");
            if(bankid16.next())
            {    
                int id=bankid16.getInt("bank_id");
                ResultSet bankacc16=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc16.next())
                    {
%>
            <span onclick="document.getElementById('id16').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc16.getString("fname");
        String lname=bankacc16.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc16.getString("branch");
        String acc=bankacc16.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Federal Bank";
        String upi=bankacc16.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id16').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>


<div id="id17" class="modal">
    <%
            ResultSet bankid17=stm.executeQuery("select bank_id from bank where bank_name='HDFC Bank'");
            if(bankid17.next())
            {    
                int id=bankid17.getInt("bank_id");
                ResultSet bankacc17=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc17.next())
                    {
%>
            <span onclick="document.getElementById('id17').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc17.getString("fname");
        String lname=bankacc17.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc17.getString("branch");
        String acc=bankacc17.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="HDFC Bank";
        String upi=bankacc17.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id17').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id18" class="modal">
    <%
            ResultSet bankid18=stm.executeQuery("select bank_id from bank where bank_name='ICICI Bank'");
            if(bankid18.next())
            {    
                int id=bankid18.getInt("bank_id");
                ResultSet bankacc18=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc18.next())
                    {
%>
            <span onclick="document.getElementById('id18').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc18.getString("fname");
        String lname=bankacc18.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc18.getString("branch");
        String acc=bankacc18.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="ICICI Bank";
        String upi=bankacc18.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id18').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>

<div id="id19" class="modal">
    <%
            ResultSet bankid19=stm.executeQuery("select bank_id from bank where bank_name='IDBI Bank'");
            if(bankid19.next())
            {    
                int id=bankid19.getInt("bank_id");
                ResultSet bankacc19=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc19.next())
                    {
%>
            <span onclick="document.getElementById('id19').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc19.getString("fname");
        String lname=bankacc19.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc19.getString("branch");
        String acc=bankacc19.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="IDBI Bank";
        String upi=bankacc19.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id19').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id20" class="modal">
    <%
            ResultSet bankid20=stm.executeQuery("select bank_id from bank where bank_name='IDFC First Bank'");
            if(bankid20.next())
            {    
                int id=bankid20.getInt("bank_id");
                ResultSet bankacc20=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc20.next())
                    {
%>
            <span onclick="document.getElementById('id20').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc20.getString("fname");
        String lname=bankacc20.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc20.getString("branch");
        String acc=bankacc20.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="IDFC First Bank";
        String upi=bankacc20.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id20').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id21" class="modal">
    <%
            ResultSet bankid21=stm.executeQuery("select bank_id from bank where bank_name='Indian Bank'");
            if(bankid21.next())
            {    
                int id=bankid21.getInt("bank_id");
                ResultSet bankacc21=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc21.next())
                    {
%>
            <span onclick="document.getElementById('id21').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc21.getString("fname");
        String lname=bankacc21.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc21.getString("branch");
        String acc=bankacc21.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Indian Bank";
        String upi=bankacc21.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id21').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id22" class="modal">
    <%
            ResultSet bankid22=stm.executeQuery("select bank_id from bank where bank_name='Indian Overseas Bank'");
            if(bankid22.next())
            {    
                int id=bankid22.getInt("bank_id");
                ResultSet bankacc22=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc22.next())
                    {
%>
            <span onclick="document.getElementById('id22').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc22.getString("fname");
        String lname=bankacc22.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc22.getString("branch");
        String acc=bankacc22.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Indian Overseas Bank";
        String upi=bankacc22.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id22').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id23" class="modal">
    <%
            ResultSet bankid23=stm.executeQuery("select bank_id from bank where bank_name='IndusInd Bank'");
            if(bankid23.next())
            {    
                int id=bankid23.getInt("bank_id");
                ResultSet bankacc23=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc23.next())
                    {
%>
            <span onclick="document.getElementById('id23').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc23.getString("fname");
        String lname=bankacc23.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc23.getString("branch");
        String acc=bankacc23.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="IndusInd Bank";
        String upi=bankacc23.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id23').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id24" class="modal">
    <%
            ResultSet bankid24=stm.executeQuery("select bank_id from bank where bank_name='Jammu & Kashmir Bank'");
            if(bankid24.next())
            {    
                int id=bankid24.getInt("bank_id");
                ResultSet bankacc24=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc24.next())
                    {
%>
            <span onclick="document.getElementById('id24').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc24.getString("fname");
        String lname=bankacc24.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc24.getString("branch");
        String acc=bankacc24.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Jammu & Kashmir Bank";
        String upi=bankacc24.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id24').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id25" class="modal">
    <%
            ResultSet bankid25=stm.executeQuery("select bank_id from bank where bank_name='Karnataka Bank'");
            if(bankid25.next())
            {    
                int id=bankid25.getInt("bank_id");
                ResultSet bankacc25=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc25.next())
                    {
%>
            <span onclick="document.getElementById('id25').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc25.getString("fname");
        String lname=bankacc25.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc25.getString("branch");
        String acc=bankacc25.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Karnataka Bank";
        String upi=bankacc25.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id25').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>


<div id="id26" class="modal">
    <%
            ResultSet bankid26=stm.executeQuery("select bank_id from bank where bank_name='Karur Vysya Bank'");
            if(bankid26.next())
            {    
                int id=bankid26.getInt("bank_id");
                ResultSet bankacc26=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc26.next())
                    {
%>
            <span onclick="document.getElementById('id26').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc26.getString("fname");
        String lname=bankacc26.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc26.getString("branch");
        String acc=bankacc26.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Karur Vysya Bank";
        String upi=bankacc26.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id26').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>


<div id="id27" class="modal">
    <%
            ResultSet bankid27=stm.executeQuery("select bank_id from bank where bank_name='Kotak Mahindra Bank'");
            if(bankid27.next())
            {    
                int id=bankid27.getInt("bank_id");
                ResultSet bankacc27=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc27.next())
                    {
%>
            <span onclick="document.getElementById('id27').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc27.getString("fname");
        String lname=bankacc27.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc27.getString("branch");
        String acc=bankacc27.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Kotak Mahindra Bank";
        String upi=bankacc27.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id27').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id28" class="modal">
    <%
            ResultSet bankid28=stm.executeQuery("select bank_id from bank where bank_name='Lakshmi Vilas Bank'");
            if(bankid28.next())
            {    
                int id=bankid28.getInt("bank_id");
                ResultSet bankacc28=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc28.next())
                    {
%>
            <span onclick="document.getElementById('id28').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc28.getString("fname");
        String lname=bankacc28.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc28.getString("branch");
        String acc=bankacc28.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Lakshmi Vilas Bank";
        String upi=bankacc28.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id28').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>


<div id="id29" class="modal">
    <%
            ResultSet bankid29=stm.executeQuery("select bank_id from bank where bank_name='Nainital Bank'");
            if(bankid29.next())
            {    
                int id=bankid29.getInt("bank_id");
                ResultSet bankacc29=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc29.next())
                    {
%>
            <span onclick="document.getElementById('id29').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc29.getString("fname");
        String lname=bankacc29.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc29.getString("branch");
        String acc=bankacc29.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Nainital Bank";
        String upi=bankacc29.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id29').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id30" class="modal">
    <%
            ResultSet bankid30=stm.executeQuery("select bank_id from bank where bank_name='Oriental Bank of Commerce'");
            if(bankid30.next())
            {    
                int id=bankid30.getInt("bank_id");
                ResultSet bankacc30=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc30.next())
                    {
%>
            <span onclick="document.getElementById('id30').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc30.getString("fname");
        String lname=bankacc30.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc30.getString("branch");
        String acc=bankacc30.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Oriental Bank of Commerce";
        String upi=bankacc30.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id30').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>


<div id="id31" class="modal">
    <%
            ResultSet bankid31=stm.executeQuery("select bank_id from bank where bank_name='Punjab National Bank'");
            if(bankid31.next())
            {    
                int id=bankid31.getInt("bank_id");
                ResultSet bankacc31=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc31.next())
                    {
%>
            <span onclick="document.getElementById('id31').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc31.getString("fname");
        String lname=bankacc31.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc31.getString("branch");
        String acc=bankacc31.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Punjab National Bank";
        String upi=bankacc31.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id31').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id32" class="modal">
    <%
            ResultSet bankid32=stm.executeQuery("select bank_id from bank where bank_name='Punjab and Sind Bank'");
            if(bankid32.next())
            {    
                int id=bankid32.getInt("bank_id");
                ResultSet bankacc32=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc32.next())
                    {
%>
            <span onclick="document.getElementById('id32').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc32.getString("fname");
        String lname=bankacc32.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc32.getString("branch");
        String acc=bankacc32.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Punjab and Sind Bank";
        String upi=bankacc32.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id32').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id33" class="modal">
    <%
            ResultSet bankid33=stm.executeQuery("select bank_id from bank where bank_name='RBL Bank'");
            if(bankid33.next())
            {    
                int id=bankid33.getInt("bank_id");
                ResultSet bankacc33=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc33.next())
                    {
%>
            <span onclick="document.getElementById('id33').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc33.getString("fname");
        String lname=bankacc33.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc33.getString("branch");
        String acc=bankacc33.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="RBL Bank";
        String upi=bankacc33.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id33').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id34" class="modal">
    <%
            ResultSet bankid34=stm.executeQuery("select bank_id from bank where bank_name='South Indian Bank'");
            if(bankid34.next())
            {    
                int id=bankid34.getInt("bank_id");
                ResultSet bankacc34=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc34.next())
                    {
%>
            <span onclick="document.getElementById('id34').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc34.getString("fname");
        String lname=bankacc34.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc34.getString("branch");
        String acc=bankacc34.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="South Indian Bank";
        String upi=bankacc34.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id34').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id35" class="modal">
    <%
            ResultSet bankid35=stm.executeQuery("select bank_id from bank where bank_name='State Bank of Bikaner & Jaipur'");
            if(bankid35.next())
            {    
                int id=bankid35.getInt("bank_id");
                ResultSet bankacc35=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc35.next())
                    {
%>
            <span onclick="document.getElementById('id35').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc35.getString("fname");
        String lname=bankacc35.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc35.getString("branch");
        String acc=bankacc35.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="State Bank of Bikaner & Jaipur";
        String upi=bankacc35.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id35').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>



<div id="id36" class="modal">
    <%
            ResultSet bankid36=stm.executeQuery("select bank_id from bank where bank_name='State Bank of Hyderabad'");
            if(bankid36.next())
            {    
                int id=bankid36.getInt("bank_id");
                ResultSet bankacc36=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc36.next())
                    {
%>
            <span onclick="document.getElementById('id36').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc36.getString("fname");
        String lname=bankacc36.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc36.getString("branch");
        String acc=bankacc36.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="State Bank of Hyderabad";
        String upi=bankacc36.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id36').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>


<div id="id37" class="modal">
    <%
            ResultSet bankid37=stm.executeQuery("select bank_id from bank where bank_name='State Bank of India'");
            if(bankid37.next())
            {    
                int id=bankid37.getInt("bank_id");
                ResultSet bankacc37=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc37.next())
                    {
%>
            <span onclick="document.getElementById('id37').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc37.getString("fname");
        String lname=bankacc37.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc37.getString("branch");
        String acc=bankacc37.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="State Bank of India";
        String upi=bankacc37.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id37').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>


<div id="id38" class="modal">
    <%
            ResultSet bankid38=stm.executeQuery("select bank_id from bank where bank_name='State Bank of Mysore'");
            if(bankid38.next())
            {    
                int id=bankid38.getInt("bank_id");
                ResultSet bankacc38=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc38.next())
                    {
%>
            <span onclick="document.getElementById('id38').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc38.getString("fname");
        String lname=bankacc38.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc38.getString("branch");
        String acc=bankacc38.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="State Bank of Mysore";
        String upi=bankacc38.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id38').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>


<div id="id39" class="modal">
    <%
            ResultSet bankid39=stm.executeQuery("select bank_id from bank where bank_name='State Bank of Patiala'");
            if(bankid39.next())
            {    
                int id=bankid39.getInt("bank_id");
                ResultSet bankacc39=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc39.next())
                    {
%>
            <span onclick="document.getElementById('id39').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc39.getString("fname");
        String lname=bankacc39.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc39.getString("branch");
        String acc=bankacc39.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="State Bank of Patiala";
        String upi=bankacc39.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id39').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>


<div id="id40" class="modal">
    <%
            ResultSet bankid40=stm.executeQuery("select bank_id from bank where bank_name='State Bank of Travancore'");
            if(bankid40.next())
            {    
                int id=bankid40.getInt("bank_id");
                ResultSet bankacc40=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc40.next())
                    {
%>
            <span onclick="document.getElementById('id40').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc40.getString("fname");
        String lname=bankacc40.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc40.getString("branch");
        String acc=bankacc40.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="State Bank of Travancore";
        String upi=bankacc40.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id40').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>


<div id="id41" class="modal">
    <%
            ResultSet bankid41=stm.executeQuery("select bank_id from bank where bank_name='Syndicate Bank'");
            if(bankid41.next())
            {    
                int id=bankid41.getInt("bank_id");
                ResultSet bankacc41=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc41.next())
                    {
%>
            <span onclick="document.getElementById('id41').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc41.getString("fname");
        String lname=bankacc41.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc41.getString("branch");
        String acc=bankacc41.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Syndicate Bank";
        String upi=bankacc41.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id41').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>

            
            
<div id="id42" class="modal">
    <%
            ResultSet bankid42=stm.executeQuery("select bank_id from bank where bank_name='UCO Bank'");
            if(bankid42.next())
            {    
                int id=bankid42.getInt("bank_id");
                ResultSet bankacc42=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc42.next())
                    {
%>
            <span onclick="document.getElementById('id42').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc42.getString("fname");
        String lname=bankacc42.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc42.getString("branch");
        String acc=bankacc42.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="UCO Bank";
        String upi=bankacc42.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id42').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>
            
            
<div id="id43" class="modal">
    <%
            ResultSet bankid43=stm.executeQuery("select bank_id from bank where bank_name='Union Bank of India'");
            if(bankid43.next())
            {    
                int id=bankid43.getInt("bank_id");
                ResultSet bankacc43=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc43.next())
                    {
%>
            <span onclick="document.getElementById('id43').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc43.getString("fname");
        String lname=bankacc43.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc43.getString("branch");
        String acc=bankacc43.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Union Bank of India";
        String upi=bankacc43.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id43').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>
            
            
<div id="id44" class="modal">
    <%
            ResultSet bankid44=stm.executeQuery("select bank_id from bank where bank_name='United Bank of India'");
            if(bankid44.next())
            {    
                int id=bankid44.getInt("bank_id");
                ResultSet bankacc44=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc44.next())
                    {
%>
            <span onclick="document.getElementById('id44').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc44.getString("fname");
        String lname=bankacc44.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc44.getString("branch");
        String acc=bankacc44.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="United Bank of India";
        String upi=bankacc44.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id44').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>
            
            
            
<div id="id45" class="modal">
    <%
            ResultSet bankid45=stm.executeQuery("select bank_id from bank where bank_name='Vijaya Bank'");
            if(bankid45.next())
            {    
                int id=bankid45.getInt("bank_id");
                ResultSet bankacc45=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc45.next())
                    {
%>
            <span onclick="document.getElementById('id45').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc45.getString("fname");
        String lname=bankacc45.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc45.getString("branch");
        String acc=bankacc45.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Vijaya Bank";
        String upi=bankacc45.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id45').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>
            
            
            
<div id="id46" class="modal">
    <%
            ResultSet bankid46=stm.executeQuery("select bank_id from bank where bank_name='Yes Bank'");
            if(bankid46.next())
            {    
                int id=bankid46.getInt("bank_id");
                ResultSet bankacc46=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc46.next())
                    {
%>
            <span onclick="document.getElementById('id46').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc46.getString("fname");
        String lname=bankacc46.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc46.getString("branch");
        String acc=bankacc46.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Yes Bank";
        String upi=bankacc46.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id46').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>

<div id="id47" class="modal">
    <%
            ResultSet bankid47=stm.executeQuery("select bank_id from bank where bank_name='Tamilnad Mercantile Bank Limited'");
            if(bankid47.next())
            {    
                int id=bankid47.getInt("bank_id");
                ResultSet bankacc47=s1.executeQuery("select * from bank_acc where bank_id='"+id+"' and mobile_no='"+name+"'");
                if(bankacc47.next())
                    {
%>
            <span onclick="document.getElementById('id47').style.display='none'"
class="close" title="Close">&times;</span>
<div class="modal-content animate">
    <%
    String fname=bankacc47.getString("fname");
        String lname=bankacc47.getString("lname");
        String nameto=fname+" "+lname;
    String branch=bankacc47.getString("branch");
        String acc=bankacc47.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        String bank_name="Tamilnad Mercantile Bank Limited";
        String upi=bankacc47.getString("upi_pin");
            if(upi==null)
            {
        %>
        <br><div class="upi">Create UPI Pin for your bank account</div>
               <form class="upiform" method="post" action="addupi.jsp" onsubmit="return validate(this);">
                        <!--<input type="text" name="upi" placeholder="Create UPI Pin" required=""><br>-->
            <input type="text" name="fname" placeholder="Enter First Name" required=""><br>
            <input type="text" name="lname" placeholder="Enter Last Name" required=""><br>
            <input type="text" name="bank_name" placeholder="Enter Bank Name" required=""><br>
                        <input type="text" name="acc_no" placeholder="Enter Account Number" required=""><br>
            <input type="password" name="upi" placeholder="Create UPI Pin" required=""><br>
            <input type="password" name="upi_confirm" placeholder="Confirm UPI Pin" required=""><br>
            <button type="submit">Create PIn</button><br><br>
            
        </form>        
    <%
            }
else{
ResultSet check=s2.executeQuery("select acc_no from user_details where mobile_no='"+name+"' and acc_no='"+acc+"'");
if(check.next())
{
%>
  <script type="text/javascript">
                alert('Account already exists');
                window.location="home.jsp";
</script>
        <%
}
else
{
stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");
        %>
        <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> has been added&nbsp;
        <p><form action="home.jsp" method="post">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <br> <button type="submit">OK</button>       
       </form>
    </p>
        </div>
</div>
                    <%
                        }
            
}
            }

else
{
%>
    <div class="modal-content animate">
         <span onclick="document.getElementById('id47').style.display='none'"
class="close" title="Close">&times;</span>
    <div style="font-family: ink free;">&nbsp;No Linked Bank accounts found!&nbsp;      
</div>           
</div>                
    <%
}
}
%>
            </div>
<%
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