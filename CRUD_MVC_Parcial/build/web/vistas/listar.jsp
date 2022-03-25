<%-- 
    Document   : listar
    Created on : 23/03/2022, 10:36:01 p. m.
    Author     : USUARIO
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.List"%>
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
        </style>
        <title>Lista de personas</title>
    </head>
    <body>
        <div>
            <h1>Personas</h1>
            <div class="mb-3">
                <a class="btn btn-primary" href="Controlador?accion=add">Agregar persona nueva</a>
            </div>


            <table class="table table-light">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>CÉDULA</th>
                        <th>NOMBRES</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                <%
                    PersonaDAO dao = new PersonaDAO();
                    List<Persona> list = dao.listar();
                    Iterator<Persona> iter = list.iterator();
                    Persona per = null;
                    while (iter.hasNext()) {
                        per = iter.next();

                %>
                <tbody>
                    <tr>
                        <td><%= per.getId()%></td>
                        <td><%=per.getDni()%></td>
                        <td><%=per.getNom()%></td>
                        <td>
                            <a class="btn btn-warning" href="Controlador?accion=edit&id=<%=per.getId()%>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=delete&id=<%=per.getId()%>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
