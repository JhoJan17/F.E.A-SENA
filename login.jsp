<%-- 
    Document   : login
    Created on : 27/03/2024, 8:21:40 a. m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>F.E.A LogIn</title>
        <!-- Favicon-->
        <link rel="icon" type="image/jpg"lo href="img/FEA icon.png"/>
        <link href="css/login.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet" />
        <link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" rel="stylesheet" />
        <link href="css/bootstrap.css" rel="stylesheet" />
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body>
        <div class="container">
            <div class="body d-md-flex align-items-center justify-content-between">
                <div class="box-1 mt-md-0 mt-5">
                    <img src="img/Background login.png" class="" alt="">
                </div>
                <div class=" box-2 d-flex flex-column h-100">
                    <div class="mt-5">
                        <p class="mb-1 h-1">Iniciar Sesión.</p>
                        <p class="text-muted mb-2">Explora las diferentes funcionalidades que tenemos para tí en nuestro sistema de administración de medicamentos F.E.A (Farmacia el Aprendiz).</p>
                        <br>
                        <form method="post" action="LoginValidator">
                            <div class="mb-3">
                              <label for="exampleInputEmail1" class="form-label">Cédula</label>
                              <input type="number" class="form-control" name="cedula" required>
                            </div>
                            <div class="mb-3">
                              <label for="exampleInputPassword1" class="form-label">Contraseña</label>
                              <input type="password" class="form-control" name="password" required>
                            </div>
                            <div class="mb-3 form-check">
                              <input type="checkbox" class="form-check-input" id="exampleCheck1">
                              <label class="form-check-label" for="exampleCheck1">Mostrar Contraseña</label>
                            </div>
                            <button type="submit" class="btnlogin btn-primary" name="btnLogin" value="Ingresar">Vamos Allá</button>
                          </form>
                    </div>
                </div>
                <a class="fas fa-times" href="index.jsp"></a>
            </div>
        </div>
    </body>
    <script src="js/login.js" type="text/javascript"></script>
</html>
