<%-- 
    Document   : login_server
    Created on : 2 Oct, 2019, 1:11:13 PM
    Author     : rajen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%--<%@page import="java.sql.Connection"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login_check</title>
<link rel="icon" href="logo_crop_2.jpg">
    </head>
    <body>
        
        <%
            try{
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","rpdprasad");
            Statement stm = con.createStatement();

    String mobile_number=request.getParameter("mob");
        String password=request.getParameter("psw");
            ResultSet mob_check=stm.executeQuery("select * from user_login where mobile_no='"+mobile_number+"' and pass='"+password+"'");
            if(mob_check.next())
            {
                 HttpSession session1 = request.getSession();
            
            session.setAttribute("n",mobile_number);
            
                    %>
        <script type="text/javascript">
                                    alert('You are now logged in!');
                                    window.location = "home.jsp";
                                </script> 
                                <%
                                    
                }
else
{
%>
        <script type="text/javascript">
                                    alert('Incorrect Mobile Number or Password');
                                    window.location = "index.jsp";
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
