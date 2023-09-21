<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="" href="resources/css/style.css" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Prueba Servlets</title>

    <style>
        body
        {
            background-image:url(resources/img/background-min.jpg);
            height: 100vh;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body class="">
<main class="container">

    <div class="row align-items-center justify-content-center vh-100 ">
        
        <div class="col-auto">
            
            <div class="card shadow">
                <h5 class="card-header">Conversor de divisa &#129689;</h5>

                <div class="card-body">

                    <form action="converter" method="post">

                        <input type="number" class="form-control mt-3" name="value">   
                        
                        <button type="submit" class="btn btn-primary mt-3" name="euros">Convertir a euros</button>
                        <button type="submit" class="btn btn-primary mt-3" name="dollars">Convertir a dolares</button>
                    </form>

                    <br>

                    <%
                        String result = (String) session.getAttribute("result");
                        String alertType = (String ) session.getAttribute("alertType");

                        if(result != null)
                        {
                    %>

                            <div class="alert alert-<%= alertType %> mt-3" role="alert">
                            <%
                                out.println(result);
                                session.removeAttribute("result");
                            %>
                            </div>
                    <%
                        } 
                    %>
                </div>

                <div class="card-footer text-center">
                    Made with &#128150; by Jose Manuel Ruiz
                  </div>

            </div>
        </div>
        
    </div>
</main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>