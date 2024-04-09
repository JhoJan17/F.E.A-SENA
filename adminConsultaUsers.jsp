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
              <li><a class="dropdown-item" href="Controlador?menu=RegistroUsers&accion=Inicio">Registro de Usuarios</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item active" href="Controlador?menu=ConsultaUsers&accion=Listar">Ver Usuarios</a></li>
            </ul>
          </li>
        </ul>
      </section>

      <section id="seccionPerfil">
        <div class="formularioPerfil">
          <form id="formCU1" method="post" action="Controlador?menu=Perfil">
            <div class="col-sm-8">
              <table class="table tableUsers table-hover">
                  <thead>
                      <tr>
                          <th>CÉDULA</th>
                          <th>NOMBRES</th>
                          <th>APELLIDOS</th>
                          <th>TELEFONO</th>
                          <th>EMAIL</th>
                          <th>ROL</th>
                      </tr>
                  </thead>
                  <tbody>
                    <%
                      List<Users> usuarios = (List<Users>)request.getAttribute("usuarios");
                      if(usuarios != null)
                      {
                        for(int i = 0; i < usuarios.size(); i++)
                        {
                          Users users = usuarios.get(i);
                      
                    %>
                    <tr>
                        <td><%= users.getCedula()%></td>
                        <td><%= users.getNombres()%></td>
                        <td><%= users.getApellidos()%></td>
                        <td><%= users.getTelefono()%></td>
                        <td><%= users.getEmail()%></td>
                        <td><%= users.getRol()%></td>
                        <td>
                            <a id="seleccionarUsuario" class="btn btn-primary"  href="Controlador?menu=ConsultaUsers&accion=Seleccionar&id=<%= users.getCedula()%>">SELECCIONAR</a>
                        </td>
                    </tr>
                    <% }}%>
                </tbody>
              </table>
            </div>
          </form>
          <br>
          <form id="formCU2" method="post" action="Controlador?menu=ConsultaUsers">
            <div id="rowcedula" class="input-group flex-nowrap">
              <span class="input-group-text" id="addon-wrapping">C&eacute;dula</span>
              <input type="text" class="form-control" placeholder="C&eacute;dula" aria-label="Username"
                value="${usuarioSelect.getCedula()}" name="cedula" disabled>
            </div>
            <br>
            <div class="input-group flex-nowrap">
              <span class="input-group-text" id="addon-wrapping">Nombres</span>
              <input type="text" class="form-control allowedit" placeholder="Nombres" aria-label="Username"
              value="${usuarioSelect.getNombres()}" name="nombre" disabled>
              <label class="whitespace"></label>
              <span class="input-group-text" id="addon-wrapping">Apellidos</span>
              <input type="text" class="form-control allowedit" placeholder="Apellidos" aria-label="Username"
              value="${usuarioSelect.getApellidos()}" name="apellido" disabled>
            </div>
            <br>
            <div class="input-group flex-nowrap">
              <span class="input-group-text" id="addon-wrapping">Email</span>
              <input type="text" class="form-control allowedit" placeholder="Email"
              value="${usuarioSelect.getEmail()}" name="email" disabled>
              <label class="whitespace"></label>
              <span class="input-group-text" id="addon-wrapping">Tel&eacute;fono</span>
              <input type="text" class="form-control allowedit" placeholder="Tel&eacute;fono"
              value="${usuarioSelect.getTelefono()}" name="telefono" disabled>
            </div>
            <br>
            <div id="rowrol" class="input-group flex-nowrap">
              <span class="input-group-text" id="addon-wrapping">ROL</span>
              <input type="text" class="form-control" placeholder="ROL" aria-label="Username"
              value="${usuarioSelect.getRol()}" name="Rol" disabled>
            </div>
          </form>
        </div>
        <div class="botonesFormulario">
          <button type="submit" name="accion" value="Actualizar" id="btnActualizar" disabled form="formCU2">Actualizar</button>
        </div>
      </section>
      



    </body>
    <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="js/admin1.js" type="text/javascript"></script>
    <script src="js/admin3.js" type="text/javascript"></script>
    </html>