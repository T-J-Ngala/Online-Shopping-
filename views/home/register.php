<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Login JONATHAN ELECTRONIX</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/login.css">
</head>

<?php 

 //require_once('header.php');

?>
<body style="background: #214a80;">
    <div class="login-dark" style="height: 695px;">
        <form method="post" action="">
            <h2 class="sr-only">Login Form</h2>
            <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
            <div class="form-group"><input class="form-control" type="text" name="name" placeholder="Name" required></div>
            <div class="form-group"><input class="form-control" type="text" name="surname" placeholder="Surname" required></div>
            <div class="form-group"><input class="form-control" type="text" name="address" placeholder="Address" required></div>
            <div class="form-group"><input class="form-control" type="text" name="cell" placeholder="Phone Number" required></div>
            <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Email" required></div>
            <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password" required></div>
            <div class="form-group"><button type="submit" name="Submit" class="btn btn-primary btn-block">Register</button></div>
        </form>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>

</html>