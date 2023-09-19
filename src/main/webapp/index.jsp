<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <title>Prueba Servlets</title>
</head>
<body>
<main class="container">

    <div class="row mt-3 ">
        <div class="col-2"></div>
        
        <div class="col-8">
            
            <div class="card shadow">
                <h5 class="card-header">Conversor de divisa &#129689;</h5>

                <div class="card-body">

                    <form action="conversor" method="post">

                        <input type="number" class="form-control mt-3" name="value">   
                        
                        <button type="submit" class="btn btn-primary mt-3" name="euros">Convertir a euros</button>
                        <button type="submit" class="btn btn-primary mt-3" name="dollars">Convertir a dolares</button>
                    </form>

                    <br>

                    <span class="mt-3"><%= request.getAttribute("result") %></span>

                </div>

                <div class="card-footer">
                    Made with &#128150; by Jose Manuel Ruiz
                  </div>

            </div>
        </div>
        
        <div class="col-2"></div>
    </div>
</main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>