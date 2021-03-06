<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ARTECT</title>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body>
    <!--NAVIGATION-->
    <nav class="navbar navbar-default">
        <!--LOGO AND TOGGLE-->
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#jpelinks" aria-expanded="false">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                <a class="navbar-brand" href="#">
                    <img alt="Brand" src="img/logo.png">
                </a>
            </div>
            <div class="collapse navbar-collapse" id="jpelinks">
                <ul class="nav navbar-nav">
                    <li><a href="index.html" class="active" onclick="displayForm(); hideResultDiv(); resetForm()">HOME</a></li>
                    <li><a href="#">HELP</a></li>
                </ul>
            </div>
        </div>
    </nav>
	 <!--FOOTER-->
    <footer id="myfooter">
        <hr>
        <p>&copy; 2017. Joint Preparatory Examination Board.</p>
    </footer>

    <script src="js/jquery-3.1.1.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>