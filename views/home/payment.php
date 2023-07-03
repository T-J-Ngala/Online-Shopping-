<html>
<head>
    <meta charset="utf-8">
    <base href="<?php echo BASE_URL; ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Payment</title>
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
        <img src="assets/images/credit-card.avif" style="height:120px;width:15rem">
            <h2 class="sr-only">SECURED ONLINE PAYMENT</h2>
            <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
            <div class="form-group">
                <input class="form-control" type="text" name="card_holder" placeholder="Card Holder" required>
            </div>
            <div class="form-group">
                <input class="form-control" type="text" maxlength="16" name="card_number" placeholder="Card Number" required>
            </div>
            <div class="form-group">
                <input class="form-control" type="password" maxlength="4" name="card_code" placeholder="CVC" required>
            </div>
            <div class="form-group">
                <input class="form-control" type="datetime-local" maxlength="4" name="expiration_date"  required>
            </div>

            <div class="form-group"><button type="submit" name="submit" class="btn btn-primary btn-block">Pay Now <i class="icon ion-ios-locked-outline"></i></button></div>
         </form>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>

</html>