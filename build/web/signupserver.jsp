<%-- 
    Document   : signupserver
    Created on : 2 Oct, 2019, 7:32:13 PM
    Author     : rajen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <link rel="icon" href="logo_crop_2.jpg">
    </head>
    <body>
        <%
            try{
         Class.forName("oracle.jdbc.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","rpdprasad");
            Statement stm = con.createStatement();
            String btnclicked=request.getParameter("signupbtn");
            if(!btnclicked.equals(null)){
            int errors=0;
            
            String mobile_number=request.getParameter("mobile_no");
            String password=request.getParameter("psw");
            String confirm_password=request.getParameter("confirm_psw");
            int ln=mobile_number.length();
            ResultSet res=stm.executeQuery("select mobile_no from user_login where mobile_no='"+mobile_number+"'");
            if(res.next())
            {
                errors++;
                %>
                <script type="text/javascript">
                    alert('Mobile Number already exists!');
                    window.location = "signup.jsp";
                </script> 
                <%
            }
            if(ln!=10)
            {
                 errors++;
                 %>
                <script type="text/javascript">
                    alert('Mobile Number should be of 10 digits!');
                                        window.location = "signup.jsp";

                </script>
                <%
            }
            if((password.length())<6)
            {
                errors++;
                %>
                <script type="text/javascript">
                    alert('Password should be atleast 6 characters long!');
                                        window.location = "signup.jsp";

                </script>            
                <%
}
            if(!password.equals(confirm_password))
    {
errors++;
%>
<script type="text/javascript">
                    alert('Passwords do not match!');
                                        window.location = "signup.jsp";

                </script>   
<%
}

if(errors==0)
{
stm.executeQuery("insert into user_login values('"+mobile_number+"','"+password+"')");
%>
<script type="text/javascript">
                    alert('You are registered successfully and will now be redirected to your account!');
                                        window.location = "home.jsp";

                </script> 
                <%
}
}
}
catch(Exception e)
{

}
        %>
    </body>
</html>
