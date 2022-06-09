<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 1/14/2022
  Time: 1:41 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Track Courier</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.1.1/css/bootstrap.min.css">
    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>-->
    <style>
        /*.add-courier-table th, .add-courier-table td {
            border-top: none;
        }*/
        /*.add-courier-table th {
            margin-right: 0;
        }*/
    </style>
</head>
<body>
<div class="Container">
    <h3>Signup Page</h3>
    <form class="signup-form"  action="Register" method="post">
        <p name="wrong"></p>
        <label>Username</label>
        <input type="text" id="username" name="username" /><span class="signup-username" style="color: red"/>

        <label>Name</label>
        <input type="text" id="name" name="name" /><span class="signup-name" style="color: red"/>

        <label>Email ID</label>
        <input type="text" id="email_id" name="email_id" /><span class="signup-email" style="color: red"/>

        <label>Password</label>
        <input type="password" id="password" name="password"  /><span class="signup-password" style="color: red"/>

        <label>Confirm Password</label>
        <input type="password" id="confirm_password" name="confirm_password"   /><span class="signup-confirm" style="color: red"/>
        <br/>
<%--        <button type="submit"  class="btn btn-primary">Sign Up</button>--%>
        <input type="submit" class="btn btn-primary" value="Submit" />
        <a class="btn btn-primary back" onclick="history.back()">Back</a>
    </form>
</div>
<script>
    var searchBox;
    var courierLattitude;
    var courierLongitude;
    function initSearch() {
        var input = document.getElementById('find-places');
        searchBox = new google.maps.places.SearchBox(input);

        searchBox.addListener('places_changed', function() {
            var places = searchBox.getPlaces();
            courierLattitude = places[0].geometry.location.lat();
            courierLongitude = places[0].geometry.location.lng();
        });
    }

    function generateCourierId(length) {
        var text = "";
        var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        for(var i = 0; i < length; i++) {
            text += possible.charAt(Math.floor(Math.random() * possible.length));
        }
        return text;
    }
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.2/jquery.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.4.2/underscore-min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/backbone.js/0.9.2/backbone-min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBahcCcZwj05QXi1AGOO1FlxRnfD05kaKU&libraries=places"></script>
</body>
</html>
