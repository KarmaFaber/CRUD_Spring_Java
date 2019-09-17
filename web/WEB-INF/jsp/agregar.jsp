
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>agregar.jsp</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
        
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Agregar nuevo registro</h4>
                </div> 
                <div class="card-body">
                    <form method="POST"> 
                        
                        <label>DNI</label>
                        <input type="text" name="dni" class="form-control" maxlength="9"><br/>
                        <label>NOMBRE</label>
                        <input type="text" name="nombre" class="form-control"><br/>
                        <label>APELLIDOS</label>
                        <input type="text" name="apellidos" class="form-control"><br/>
                        <label>EDAD</label>
                        <input type="number" name="edad" class="form-control"><br/>
                        <label>SUELDO</label>
                        <input type="number" name="sueldo" class="form-control" step="0.01"><br/>
                        <input type="submit" value="agregar" class="btn btn-success"><br/>
                        <a href="index.htm">Regresar</a>
                    </form>
                </div>
            </div>
        </div> 
    </body>
</html>
