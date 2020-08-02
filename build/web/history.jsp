<%-- 
    Document   : history
    Created on : 19 Oct, 2019, 6:59:16 AM
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
        <title>Transaction History</title>
        <style>
            
/*            table {
                background-image: url("bookshelf.jpg");
            }*/
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
                <link rel="icon" href="logo_crop_2.jpg">

    </head>
    <body>
        <div class="header">
    <!--<h2 style="font-family: sans-serif">E-->     
    <br>
    <img src="logo_crop_2.jpg" alt=""/> 
  <p style="font-family: ink free; font-size: 45px">Payments made easy!!</p>
</div>
        <hr>
        <div class="back"><a href="home.jsp" style="font-family: ink free; margin-left: 1000px; text-decoration: none; color:black;">Go To Home</a></div>
        
         <%
        try{
            
    Class.forName("oracle.jdbc.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","rpdprasad");
            Statement stm = con.createStatement();
            
            ResultSet res=stm.executeQuery("select * from transaction_contacts where sender="+name+"");     
                %>
    <center>
                <div style="font-family: ink free; align-content: center;color: black;margin-top: 50px;font-size: 45px">Debit History
                    
            <table>
                            <th> Transaction ID </th>
                            <th> Amount</th>
                            <th> Date </th>
                            <th> Credited to </th>
                            
                            
        <%
while(res.next())
{
            %>
            <tr>
                <td><%=res.getInt("tid")%></td>
                <td><%=res.getString("amt")%></td>
                <td><%=res.getString("tdate")%></td>

                <%
                    
                String x=res.getString("receiver");
                
                           ResultSet res2=stm.executeQuery("select * from user_details where mobile_no="+x+" ");
                           String rname="";
                           if(res2.next())
                           {
                               String fn=res2.getString("fname");
                               String l=res2.getString("lname");
                               rname=fn+" "+l;
                           }

                %>                
                <td><%=rname%></td>
            </tr>
                          <%
                              }
                          %>
            </table>
                </div>
           
    </center>
<%

ResultSet res3=stm.executeQuery("select * from transaction_contacts where receiver="+name+"");
          

                %>
    <center>
                <div style="font-family: ink free; align-content: center;color: black;margin-top: 50px;font-size: 45px">Credit History
            <table>
                            <th> Transaction ID </th>
                            <!--<th> Debited from</th>-->
                            <th> Amount</th>
                            <th> Date </th>
                            <th> Received from </th>
                            
                            <!--<th> Number of Copies </th>-->
                            <!--<th> Status </th>--> 
        <%
                
//         stm.executeQuery("update books_in_library set status='Unavailable' where number_of_copies = 0");
  while(res3.next())    
        {
            %>
             <tr>
                <td><%=res3.getInt("tid")%></td>
               <td><%=res3.getString("amt")%></td>
                               <td><%=res3.getString("tdate")%></td>

                <%
                    
                String x=res3.getString("sender");
                
                           ResultSet res4=stm.executeQuery("select * from user_details where mobile_no="+x+" ");
                           String rname="";
                           if(res4.next())
                           {
                               String fn=res4.getString("fname");
                               String l=res4.getString("lname");
                               rname=fn+" "+l;
                           }

                %>                
                <td><%=rname%></td>

                

             </tr>
            <%
             
}
           %>
            </table></div></center>
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