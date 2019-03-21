<%-- 
    Document   : forObrasArte
    Created on : 13/03/2019, 21:55:22
    Author     : TI
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="https://getbootstrap.com.br/favicon.ico">
        <title>Formulario | Obras de Arte</title>
        <!-- Principal CSS do Bootstrap -->
        <link href="dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Estilos customizados para esse template -->
        <link href="dist/css/form-validation.css" rel="stylesheet">  
    </head>
    <body>
        <div class="container">
            <div class="py-5 text-center">
                <!-- <img class="d-block mx-auto mb-4" src="../../assets/brand/bootstrap-solid.svg" alt="" width="72" height="72"> -->
                <h2>Cadastro De Obras de Arte</h2>
                <p class="lead">Abaixo um formulário para cadastro de informaçoes das obras de um coleção de artes.</p>
            </div>
            <div class="row">
                <div class="col-md-4 order-md-2">
                    <div class="jumbotron">
                        <h1 class="display-4">Olá</h1>
                        <p class="lead"></p>
                        <hr class="my-4">
                        <p></p>
                        <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
                    </div>
                </div>
                <div class="col-md-8 order-md-1">
                    <h4 class="mb-3">Detalhes da Obra</h4>
                    <form action="teste.jsp" method="post" class="needs-validation" novalidate>
                        <div class="mb-3">
                            <label for="titulo">Titulo</label>
                            <input type="text" class="form-control" placeholder="" name="titulo" value="" required>
                            <div class="invalid-feedback">
                                É obrigatório inserir um titulo.
                            </div>
                        </div>
                        <h4 class="mb-3">Periodo da obra</h4>
                        <div class="row">                       
                            <div class="col-md-6 mb-3">
                                <label for="data">Data De</label>
                                <input type="date" class="form-control" placeholder="" name="dataDe" value="" required>
                                <div class="invalid-feedback">
                                    É obrigatório inserir uma data.
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="data">Data A</label>
                                <input type="date" class="form-control" placeholder="" name="dataA" value="" required>
                                <div class="invalid-feedback">
                                    É obrigatório inserir uma data.
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="tecnica">Tecnica</label>
                            <input type="text" class="form-control" placeholder="" name="tecnica" value="" required>
                            <div class="invalid-feedback">
                                É obrigatorio a descrição tecnica utilizada.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="dimensoes">Dimensões fisicas</label>
                            <input type="text" class="form-control" placeholder="" name="dimensoes" value="" required>
                            <div class="invalid-feedback">
                                É obrigatori o preenchimento deste campo.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="author">Author</label>
                            <input type="text" class="form-control" placeholder="" name="author" value="" required>
                            <div class="invalid-feedback">
                                É obrigatori o preenchimento deste campo.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="procedimento">Procedimento</label>
                            <input type="text" class="form-control" placeholder="" name="procedimento" value="" >
                            <div class="invalid-feedback">
                                É obrigatori o preenchimento deste campo.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="tipo">Tipo</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="tipo" id="inputGroupSelect01">
                                    <% 
                                      out.println("<option value='1'>Teste 1</option>");
                                      out.println("<option value='2'>Teste 2</option>");
                                      out.println("<option value='3'>Teste 3</option>");
                                    %>
                                </select>
                            </div>
                            <div class="invalid-feedback">
                                É obrigatori o preenchimento deste campo.
                            </div>
                        </div>                    
                        <hr class="mb-4">
                        <button class="btn btn-primary btn-lg btn-block" type="submit">Gravar Formulario</button>
                    </form>
                </div>
            </div>
            <footer class="my-5 pt-5 text-muted text-center text-small">
                <p class="mb-1">&copy;2019 - Todos os diretos reservados.</p>
                <ul class="list-inline">
                    <li class="list-inline-item"><a href="#">Privacidade</a></li>
                    <li class="list-inline-item"><a href="#">Termos</a></li>
                    <li class="list-inline-item"><a href="#">Suporte</a></li>
                </ul>
            </footer>
        </div>
        <!-- Principal JavaScript do Bootstrap
        ================================================== -->
        <!-- Foi colocado no final para a página carregar mais rápido -->
        <script src="dist/js/jquery-3.3.1.min.js"></script>
        <script>window.jQuery || document.write('<script src="dist/js/jquery-3.3.1.min.js"><\/script>')</script>
        <script src="dist/js/popper.min.js"></script>
        <script src="dist/js/bootstrap.min.js"></script>
        <script src="dist/js/holder.min.js"></script>
        <script>
            // Exemplo de JavaScript para desativar o envio do formulário, se tiver algum campo inválido.
            (function () {
                'use strict';

                window.addEventListener('load', function () {
                    // Selecione todos os campos que nós queremos aplicar estilos Bootstrap de validação customizados.
                    var forms = document.getElementsByClassName('needs-validation');

                    // Faz um loop neles e previne envio
                    var validation = Array.prototype.filter.call(forms, function (form) {
                        form.addEventListener('submit', function (event) {
                            if (form.checkValidity() === false) {
                                event.preventDefault();
                                event.stopPropagation();
                            }
                            form.classList.add('was-validated');
                        }, false);
                    });
                }, false);
            })();
        </script>
    </body>
</html>