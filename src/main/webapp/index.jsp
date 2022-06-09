<!DOCTYPE html>
<htmL>
<head>
    <title>Track Courier</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.1.1/css/bootstrap.min.css">
</head>
<body>
<div class="Container">
    <div class="home-page">
        <h1>Track Courier</h1>
        <hr/>
        <a href="login.jsp" class="btn btn-primary">Login</a>
        <a href="signup.jsp" class="btn btn-primary">Signup</a>

        <a href="dashboard.jsp" class="btn btn-primary">Manage Couriers</a>
        <br/><br/>

        <h4>Track Your Courier</h4>
        <form class="track-courier-form">
            <label>Courier ID</label><br/>
            <input type="text" name="courier" class='courier-id'/> <span class="parcel_not_exits" style="color:red" />
            <br/><br/>
            <button type="submit" class="btn btn-primary">Track</button>
        </form>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.2/jquery.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.4.2/underscore-min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/backbone.js/0.9.2/backbone-min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBahcCcZwj05QXi1AGOO1FlxRnfD05kaKU&libraries=places"></script>

</body>
</htmL>