<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD en NetBeans</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
         <link href="https://fonts.googleapis.com/css?family=Merienda|Ruge+Boogie&display=swap" rel="stylesheet">
    </head>

    <body>
        
         <div class="container mt-4">
              <div class="conteiner text-center" style="font-family: 'Ruge Boogie', cursive;">
                  <div class="jumbotron"><h3>CRUD_Spring</h3><br/><h5>Create, Read, Update and Delete</h5></div>
        </div>
            <div class="card border-info">
               
                <div class="card-body" style="font-family: 'Merienda', cursive;">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>DNI</th>
                                <th>NOMBRE</th>
                                <th>APELLIDOS</th>
                                <th>EDAD</th>
                                <th>SUELDO</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                             <a href="agregar.htm"> <i class="fas fa-user-plus"></i> agregar empleado </a>
                            <c:forEach var="dato" items="${lista}">
                            <tr>
                                <th>${dato.DNI}</th>
                                <th>${dato.NOMBRE}</th>
                                <th>${dato.APELLIDOS}</th>
                                <th>${dato.EDAD}</th>
                                <th>${dato.SUELDO} €</th>
                                <th>
                                   
                                    <a href="editar.htm?dni=${dato.DNI}"> <i class="fas fa-user-edit"></i>  </a> | 
                                    <a href="delete.htm?dni=${dato.DNI}"> <i class="fas fa-user-times"></i> </a>
                                </th>
                            </tr>
                            </c:forEach>
                        </tbody>    
                    </table>
                </div>
            </div>
        </div>
         
    </body>
</html>
