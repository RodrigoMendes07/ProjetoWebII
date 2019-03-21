<%-- 
    Document   : forUsuario
    Created on : 07/03/2019, 16:45:12
    Author     : TI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">       
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="https://getbootstrap.com.br/favicon.ico">

        <title>Formulario | Usuario</title>

        <!-- Principal CSS do Bootstrap -->
        <link href="dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Estilos customizados para esse template -->
        <link href="dist/css/form-validation.css" rel="stylesheet">
    </head>
    <body class="bg-light">

        <div class="container">
            <div class="py-5 text-center">
                <!--   <img class="d-block mx-auto mb-4" src="../../assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
                --><h2>Formulário para cadastro de usuários</h2>
                <p class="lead"></p>
            </div>
            <div class="row">
                <div class="col-md-8 order-md-1">
                    <h4 class="mb-3">Endereço de cobrança</h4>
                    <form action="CadUsuario" method="post" class="needs-validation" novalidate>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="primeiroNome">Nome</label>
                                <input type="text" class="form-control" name="nome" id="primeiroNome" placeholder="" value="" required>
                                <div class="invalid-feedback">
                                    É obrigatório inserir um nome válido.
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="sobrenome">Sobrenome</label>
                                <input type="text" class="form-control" name="sobreNome" id="sobrenome" placeholder="" value="" required>
                                <div class="invalid-feedback">
                                    É obrigatório inserir um sobre nome válido.
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="email">Email<span class="text-muted">(Opcional)</span></label>
                            <input type="email" class="form-control" name="email" id="email" placeholder="e-mail@exemplo.com">
                            <div class="invalid-feedback">
                                Por favor, insira um endereço de e-mail válido, para atualizações de entrega.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="login">Login</label>
                            <input type="text" class="form-control" name="login" id="login" minlength="08" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor, insira um Login com no minimo 08 caracteres.
                            </div>
                        </div>               
                        <div class="mb-3">
                            <label for="senha">Senha</label>
                            <input type="password" class="form-control" name="senha" id="login" minlength="08" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor, insira uma senha com no minimo 08 caracteres.
                            </div>
                        </div>    
                        <hr class="mb-4">
                    
                        <%
                            if (session.getAttribute("msg") != null ) {  
                               
                              out.println("<div class='alert alert-primary' role = 'alert'>"+session.getAttribute("msg")+"</div >");
                              session.invalidate(); 
                              
                            } else {
                                
                                                     
                            }
                        %>

                        <button class="btn btn-primary btn-lg btn-block" type="submit">Continue o checkout</button>
                    </form>
                </div>
            </div>

            <footer class="my-5 pt-5 text-muted text-center text-small">
                <p class="mb-1">&copy; 2017-2018 Nome da companhia</p>
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
                 function funcao01 (){
                            alert("Teste");
                        }
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