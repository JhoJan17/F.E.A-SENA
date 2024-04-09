<%@page import="javax.swing.JOptionPane" %>
  <%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <meta name="description" content="" />
      <meta name="author" content="" />
      <title>F.E.A LogIn</title>
      <!-- Favicon-->
      <link rel="icon" type="image/jpg" href="img/FEA icon.png" />
      <link href="css/bootstrap.css" rel="stylesheet" />
      <link href="css/admin1.css" rel="stylesheet" />
    </head>

    <body>
      <header>
        <img src="img/FEA logo 1.png" alt="Logo" class="logo-header">

        <div class="dropdown">
          <img src="img/perfil icon.png" alt="iconperfil" width="70px">

          <button class="btn btn-secondary dropdown-toggle perfil-btn" type="button" data-bs-toggle="dropdown"
            aria-expanded="false">
            ${userL.getNombres()}
          </button>
          <ul class="dropdown-menu">
            <li>
              <p>${userL.getRol()}</p>
            </li>
            <hr>
            <li><a class="dropdown-item" href="index.jsp"><img class="config-icon" src="img/logout icon.png"
                  alt="config icon" width="20px" ma>Cerrar Sesión</a></li>
          </ul>
        </div>
      </header>

      <section>
        <ul class="nav nav-tabs">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Perfil</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button"
              aria-expanded="false">Administración de Usuarios</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="Controlador?menu=RegistroUsers&accion=Inicio">Registro de Usuarios</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="Controlador?menu=ConsultaUsers&accion=Listar">Ver Usuarios</a></li>
            </ul>
          </li>
        </ul>
      </section>

      <section id="seccionPerfil">
        <div class="formularioPerfil">
          <form id="formP" method="post" action="Controlador?menu=Perfil">
            <div id="rowcedula" class="input-group flex-nowrap">
              <span class="input-group-text" id="addon-wrapping">C&eacute;dula</span>
              <input type="text" class="form-control" placeholder="C&eacute;dula" aria-label="Username"
                value="${userL.getCedula()}" name="cedula" disabled>
            </div>
            <br>
            <div class="input-group flex-nowrap">
              <span class="input-group-text" id="addon-wrapping">Nombres</span>
              <input type="text" class="form-control" placeholder="Nombres" aria-label="Username"
                value="${userL.getNombres()}" name="nombre" disabled>
              <label class="whitespace"></label>
              <span class="input-group-text" id="addon-wrapping">Apellidos</span>
              <input type="text" class="form-control" placeholder="Apellidos" aria-label="Username"
                value="${userL.getApellidos()}" name="apellido" disabled>
            </div>
            <br>
            <div class="input-group flex-nowrap">
              <span class="input-group-text" id="addon-wrapping">Email</span>
              <input type="text" class="form-control allowedit" placeholder="Email"
                value="${userL.getEmail()}" name="email" disabled>
              <label class="whitespace"></label>
              <span class="input-group-text" id="addon-wrapping">Tel&eacute;fono</span>
              <input type="text" class="form-control allowedit" placeholder="Tel&eacute;fono"
                value="${userL.getTelefono()}" name="telefono" disabled>
            </div>
            <br>
            <div class="input-group flex-nowrap">
              <span class="input-group-text" id="addon-wrapping">Contraseña</span>
              <input type="text" class="form-control allowedit" placeholder="Contraseña"
                value="${userL.getContraseña()}" name="password" disabled>
            </div>
            <br>
            <div id="rowrol" class="input-group flex-nowrap">
              <span class="input-group-text" id="addon-wrapping">ROL</span>
              <input type="text" class="form-control" placeholder="ROL" aria-label="Username"
                value="${userL.getRol()}" name="Rol" disabled>
            </div>
          </form>
          <br>
          <button id="btnEditar">Editar</button>
          <button id="btnCancelar" style="display: none;">Cancelar</button>
        </div>
        <div class="botonesFormulario">
          <button type="submit" name="accion" value="Actualizar" id="btnActualizar" disabled form="formP">Actualizar</button>
        </div>
      </section>
      



    </body>
    <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="js/admin1.js" type="text/javascript"></script>
    </html>