<%-- 
    Document   : emp_logout
    Created on : 22 Jul, 2019, 3:58:46 PM
    Author     : rajen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Logout</title>
                <link rel="icon" href="tab icon.png">

    </head>
    <body>
        <%
            HttpSession session1 = request.getSession();
        session1.invalidate();
        response.sendRedirect("index.jsp");
            %>
    </body>
</html>
