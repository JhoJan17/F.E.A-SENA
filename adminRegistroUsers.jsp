<%@page import="java.util.List"%>
<%@page import="Modelo.Users"%>
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
      <link href="css/admin2.css" rel="stylesheet" />
      <link href="css/admin3.css" rel="stylesheet" />
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
            <a class="nav-link" aria-current="page" href="Controlador?menu=ConsultaUsers&accion=GoPerfil">Perfil</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link active dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button"
              aria-expanded="false">Administración de Usuarios</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item active" href="Controlador?menu=RegistroUsers&accion=Inicio">Registro de Usuarios</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="Controlador?menu=ConsultaUsers&accion=Listar">Ver Usuarios</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
        </ul>
      </section>

      <section id="seccionPerfil">
        <div class="formularioPerfil">
          <form id="formRU" method="post" action="Controlador?menu=RegistroUsers">
            <div id="rowcedula" class="input-group flex-nowrap">
              <span class="input-group-text" id="addon-wrapping">C&eacute;dula</span>
              <input type="number" class="form-control" placeholder="C&eacute;dula" aria-label="Username"
                value="${usuarioSelect.getCedula()}" name="cedula" id="cedula" onchange="verificarCedula(), validarCedula(), activarBtnRegistrar()">
            </div>
            <br>
            <div class="input-group flex-nowrap">
              <span class="input-group-text" id="addon-wrapping">Nombres</span>
              <input type="text" class="form-control allowedit" placeholder="Nombres" aria-label="Username"
              value="${usuarioSelect.getNombres()}" name="nombres" id="nombres" onchange="activarBtnRegistrar()">
              <label class="whitespace"></label>
              <span class="input-group-text" id="addon-wrapping">Apellidos</span>
              <input type="text" class="form-control allowedit" placeholder="Apellidos" aria-label="Username"
              value="${usuarioSelect.getApellidos()}" name="apellidos" id="apellidos" onchange="activarBtnRegistrar()">
            </div>
            <br>
            <div class="input-group flex-nowrap">
              <span class="input-group-text" id="addon-wrapping">Email</span>
              <input type="text" class="form-control allowedit" placeholder="Email"
              value="${usuarioSelect.getEmail()}" name="email" id="email" onchange="activarBtnRegistrar()">
              <label class="whitespace"></label>
              <span class="input-group-text" id="addon-wrapping">Tel&eacute;fono</span>
              <input type="number" class="form-control allowedit" placeholder="Tel&eacute;fono"
                     value="${usuarioSelect.getTelefono()}" name="telefono" id="telefono" onchange="verificarTelefono(), activarBtnRegistrar()">
            </div>
            <br>
            <div id="rowrol" class="input-group flex-nowrap">
              <span class="input-group-text" id="addon-wrapping">ROL</span>
              <select class="form-select" aria-label="Default select example" id="rol" name="rol" onchange="activarBtnRegistrar()">
                <option selected value="">Selecciona un ROL</option>
                <option value="Administrador">ADMINISTRADOR</option>
                <option value="Supervisor">SUPERVISOR</option>
                <option value="Vendedor">VENDEDOR</option>
              </select>
            </div>
            <br>
            <div id="mensaje" style="display: none;" class="alert alert-danger" role="alert"></div>
            <div id="mensaje2" style="display: none;" class="alert alert-danger" role="alert"></div>

            <dialog id="mensajeEmergente">
              <p>¡REGISTRO EXITOSO!</p>
              <button type="submit" name="accion" value="Registrar" form="formRU" onclick="cerrarMensaje()">Cerrar</button>
            </dialog>
          </form>
        </div>
        <div class="botonesFormulario">
          <button id="btnRegistrar" onclick="mostrarMensaje()" disabled>Registrar</button>
          
        </div>
      </section>


    </body>
    <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="js/admin2.js" type="text/javascript"></script>
    </html>