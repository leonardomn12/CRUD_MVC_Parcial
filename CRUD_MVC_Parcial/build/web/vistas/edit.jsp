<%-- 
    Document   : edit
    Created on : 23/03/2022, 10:35:53 p. m.
    Author     : USUARIO
--%>

<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=PT+Sans&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <style>
            .btn-primary{
                background-color: #FF9E1B !important;
                border-color: #BFBDBE !important;
                color: #ffffff !important;
                transition: 0.5s !important;
            }

            .btn-primary:hover{
                background-color: #000000 !important;
                border-color: #BFBDBE !important;
                color: #FCFCFC !important;
                transition: 0.5s;
            }

            body{
                background-color: #025373 !important;
            }

            .container{
                margin-top: 105px;
                background-color:#CDCDCF;
                border-radius: 0.3em;
                padding: 4vh 4vh;
            }
        </style>
        <title>Modificar personas</title>
    </head>
    <body>
        <div>
            <%
                PersonaDAO dao = new PersonaDAO();
                int id = Integer.parseInt((String) request.getAttribute("idper"));
                Persona p = (Persona) dao.list(id);
            %>
            <h1>Editar persona</h1>
            <div class="container">
                <form action="Controlador">
                    Cédula:<br>
                    <input class="form-control" type = "text" name = "txtDni" value="<%=p.getDni()%>"><br>
                    Nombres:<br>
                    <input class="form-control" type = "text" name = "txtNom" value="<%=p.getNom()%>"><br>
                    <input class="form-control" type="hidden" name="txtId" value="<%=p.getId()%>">
                    <input class="btn btn-primary" type = "submit" name = "accion" value = "Actualizar"><br>
                    <div class="mt-3">
                        <a class="btn btn-dark" href="Controlador?accion=listar">Regresar</a>
                    </div>

                </form>
            </div>

        </div>
    </body>
</html>
