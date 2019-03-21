<%-- 
    Document   : listaArtes
    Created on : 27/02/2019, 21:12:38
    Author     : TI
--%>
<%@page import="Bean.Detalhe"%>
<%@page import="Dao.Controle"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../../../favicon.ico">
        <title>Fomulario|Detalhe</title>
        <!-- Principal CSS do Bootstrap -->
        <link href="dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Estilos customizados para esse template -->
        <link href="form-validation.css" rel="stylesheet">
    </head>
    <body> 
        <h1>Lista de Obras de Artes</h1>

        <div class="container">
            <div class="row">


                <%
                    Controle c = new Controle();
                    int i = 0;
                    if (!c.listaObras().isEmpty()) {
                        for (Detalhe ar : c.listaObras()) {
                            i++;
                            out.println("<div class='card mb-3' style='max-width: 540px;'>");
                            out.println("<div class='row no-gutters'>");
                            out.println("<div class='col-md-4'>");
                            out.println("<img src='logo/" + i + ".jpg' class='card-img-top' alt='Responsive image'>");
                            out.println("</div>");
                            out.println("<div class='col-md-8'>");
                            out.println("<div class='card-body'>");
                            out.println("<h5 class='card-title'>" + ar.getTitulo().toUpperCase() + "</h5>");
                            out.println("<p class='card-text'>Autor.: " + ar.getAuthor() + " Data.: " + ar.getPeriodo() + "</p>");
                            out.println("<p class='card-text'><small class='text-muted'>Tecnica.:" + ar.getTecnica() + "</small></p>");
                            out.println("</div>");
                            out.println("</div>");
                            out.println("</div>");
                            out.println("</div>");                     
                        }
                    }
                %>  
            </div>
        </div>
    </body>
</html>