<%-- 
    Document   : addupi
    Created on : 8 Oct, 2019, 8:59:04 AM
    Author     : rajen
--%>

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
    </head>
    <body>
<%
try{
    Class.forName("oracle.jdbc.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","rpdprasad");
            Statement stm = con.createStatement();
            String upi=request.getParameter("upi");
            String upi_confirm=request.getParameter("upi_confirm");
            String acc=request.getParameter("acc_no");
            String fname=request.getParameter("fname");
            String lname=request.getParameter("lname");
            String bank_name=request.getParameter("bank_name");
            if(upi.length()!=4)
            {
                %>
  <script type="text/javascript">
                alert('Enter a 4 digit UPI Pin');
                window.location="addbankaccount.jsp";
</script>
        <%
            }
else if(!upi.equals(upi_confirm)){
%>
  <script type="text/javascript">
                alert('PINs do not match');
                window.location="addbankaccount.jsp";
</script>      
        <%
}
else{
stm.executeQuery("update bank_acc set upi_pin='"+upi+"' where mobile_no='"+name+"' and acc_no='"+acc+"'");
            stm.executeQuery("insert into user_details values('"+name+"','"+fname+"','"+lname+"','"+bank_name+"','"+acc+"')");

            %>
<script type="text/javascript">
                alert('UPI Pin for your account has been created and account has been successfully added');
                window.location="home.jsp";
                </script>
        <%
     }       
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