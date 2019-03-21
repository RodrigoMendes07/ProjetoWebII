<%-- 
    Document   : jspAjax
    Created on : 12/03/2019, 21:30:26
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
        <h1>Controle de Usuarios</h1>
        <form name="myForm" >
            Nome: <input type="text" name="nome" /><br/>
            Senha:<input type="password" name="senha" /><br/>
            <input type="button"
                   onclick="ajaxFunction(nome.values,senha.values);" value="OK" /><br/>
        </form>
        <div id ="resposta"></div>
        
        <script src="bootstrap/js/bootstrap.min.js">
        </script>
    </body>
    
    
</html>