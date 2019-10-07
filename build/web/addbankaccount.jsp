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
        <title>Welcome to E-wallet</title>
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
            ResultSet res=stm.executeQuery("select * from bank ORDER BY bank_name");
                            String bank="";

            while(res.next())
            {
                String bank_name=res.getString("bank_name");
                    if(bank_name.equalsIgnoreCase("allahabad bank"))
                    {
                        bank="Allahabad Bank";
                        String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="allahabad bank.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }
        if(bank_name.equalsIgnoreCase("andhra bank"))
                    {
String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="andhra bank.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }
        if(bank_name.equalsIgnoreCase("axis bank"))
                    {
String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="axis bank.png" height="45px" width="45px" alt="bank_logo"/>
<%
                    }
if(bank_name.equalsIgnoreCase("bandhan bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="bandhan bank.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }
                if(bank_name.equalsIgnoreCase("bank of baroda"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="bank of baroda.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }
if(bank_name.equalsIgnoreCase("bank of india"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="bank of india.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }
if(bank_name.equalsIgnoreCase("bank of maharashtra"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="bank of maharashtra.png" height="40px" width="40px" alt="bank_logo"/>
<%
                    }
if(bank_name.equalsIgnoreCase("bhartiya mahila bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="bharatiya mahila bank.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }
if(bank_name.equalsIgnoreCase("canara bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="canara bank.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }
if(bank_name.equalsIgnoreCase("catholic syrian bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="catholic syrian bank.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }
if(bank_name.equalsIgnoreCase("central bank of india"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="central bank of india.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("city union bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="city union bank.png" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("corporation bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="corporation bank.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("dcb bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="dcb bank.png" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("dena bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="dena bank.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("dhanlaxmi bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="dhanlaxmi bank.png" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("federal bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="federal bank.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("hdfc bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
        %>                <img  src="hdfc bank.png" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("icici bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="icici bank.png" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("idbi bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="idbi bank.png" height="40px" width="40px" alt="bank_logo"/>
<%
                    }
if(bank_name.equalsIgnoreCase("idfc first bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="idfc first bank.png" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("indian bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="indian bank.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("indian overseas bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="indian overseas bank.png" height="40px" width="40px" alt="bank_logo"/>
<%
                    }
if(bank_name.equalsIgnoreCase("indusind bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="indusind bank.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("jammu & kashmir bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="j&k bank.png" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("karnataka bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="karnataka bank.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("karur vysya bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="karur vysya bank.png" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("kotak mahindra bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="kotak mahindra.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("lakshmi vilas bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="lakshmi vilas bank.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("nainital bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="nanital bank.jpg" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("oriental bank of commerce"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="obc.png" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("punjab national bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="pnb.png" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("punjab and sind bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="punjab and sindh bank.png" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("rbl bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="rbl bank.png" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("south indian bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="south indian bank.png" height="40px" width="40px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("state bank of bikaner & jaipur"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="sbi.png" height="40px" width="55px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("state bank of hyderabad"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="sbi.png" height="40px" width="55px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("state bank of india"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="sbi.png" height="40px" width="55px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("state bank of mysore"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="sbi.png" height="40px" width="55px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("state bank of patiala"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="sbi.png" height="40px" width="55px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("state bank of travancore"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="sbi.png" height="40px" width="55px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("syndicate bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="syndicate bank.png" height="40px" width="55px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("uco bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="uco.png" height="40px" width="55px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("union bank of india"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="union bank.png" height="40px" width="55px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("united bank of india"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="united bank.png" height="40px" width="55px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("vijaya bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="vijya bank.jpg" height="40px" width="55px" alt="bank_logo"/>
<%
                    }if(bank_name.equalsIgnoreCase("yes bank"))
                    {String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        
%>                <img  src="yes bank.jpg" height="40px" width="55px" alt="bank_logo"/>
<%
                    }
if(bank_name.equalsIgnoreCase("tamilnad mercantile bank limited")){
String id=res.getString("bank_id");
                        int bankid=Integer.parseInt(id);
                        %>
<img src="tamilnad.png"  height="40 px" width="40px" alt=""/>
<%
    }
%><a type="submit" onclick="document.getElementById('id06').style.display='block'" class="bank"><%=bank_name%><br></a>
        
                <%
            }
%><div id="id06" class="modal"><%
            ResultSet r=stm.executeQuery("select bank_id from bank where bank_name='"+bank+"'");
            if(r.next())
            {
                int id=r.getInt("bank_id");
ResultSet re=stm.executeQuery("select * from bank_acc where bank_id="+id+" and mobile_no='"+name+"'");
            if(re.next())
            {
                
%>
                
<!--            <span onclick="document.getElementById('id06').style.display='none'"
class="close" title="Close">&times;</span>-->
<div class="modal-content animate">
    <div style="font-family: ink free;">&nbsp;The Following Bank Account linked to your mobile number : <%=name%> will be added. Continue?&nbsp;
    <%
    String fname=re.getString("fname");
        String lname=re.getString("lname");
        String nameto=fname+" "+lname;
    String branch=re.getString("branch");
        String acc=re.getString("acc_no");
        int acc_length=acc.length();
        int no_of_stars=acc_length-4;
        String acc_no=acc.substring((acc_length-4));
        %>
        <p><form action="acc_server">
            Name : <%=nameto%><br>
            Branch : <%=branch%><br>
            Account Number : <%
            for(int i=1;i<no_of_stars;i++)
            out.print("*");
            %><%=acc_no%>
            <button type="submit">Yes</button>
        </form>
        </p>
    
    </div>
    
</div>
            </div><%

}
}
}

            

            catch(Exception e)
            {
                e.printStackTrace();
            }
            %>
                        
            <div id="id06" class="modal">
<!--            <span onclick="document.getElementById('id06').style.display='none'"
class="close" title="Close">&times;</span>-->
<div class="modal-content animate">
    <div style="font-family: ink free;">&nbsp;Fetching information from your bank&nbsp;</div>
    
</div>
            </div>
<!--            <script>
// Get the modal
var modal = document.getElementById('id06');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

</script>-->
    </body>
</html>
<%
    }
%>