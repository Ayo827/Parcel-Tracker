<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 1/14/2022
  Time: 1:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Track Courier Dashboard</title>
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
    <h2>Welcome to your dashboard </h2>
    <hr/>
    <a href="Update/add_parcel.jsp">
        <button class="btn btn-primary add-courier">Add Courier</button>
    </a>
    <a href="Update/update_parcel.jsp">
        <button class="btn btn-primary update-courier">Update Parcel</button>
    </a>
    <a href="Update/delete_parcel.jsp">
        <button class="btn btn-primary update-courier">Delete Parcel</button>
    </a>
    <a href='/logout'> <button class="btn btn-primary logout" onclick="btnLogout">Logout</button></a>
<br/><br>

<h3>Couriers</h3>
<!--<table class="table">-->
<table class="table table-bordered">
    <thead class="thead-inverse">
    <tr>
        <th>Parcel ID</th>
        <th>Dispatched On</th>
        <th>Expected Delivery</th>
        <th>Status</th>
    </tr>
    </thead>
    <tbody>
    <%-- <% _.each(couriers, function(courier) { %> --%>
    <tr onclick="document.location = '#/courier-details/' + ''" style="cursor: pointer">
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>

    </tbody>

</table>
<a onclick="history.back()" class="btn btn-primary back">Back</a>
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
