<%-- 
    Document   : teste
    Created on : 15/03/2019, 13:11:40
    Author     : TI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Resultado</h1>
        <%
            out.println(request.getParameter("tipo"));
            out.println(request.getParameter("tipo"));
            out.println(request.getParameter("tipo"));
        %>
    </body>
</html>
