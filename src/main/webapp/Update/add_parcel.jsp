<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 1/14/2022
  Time: 2:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head><title>
    Add Courier
</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.1.1/css/bootstrap.min.css">

</head>

<body>
<h1>Add Courier</h1>
<p>{{message}}</p>
<br>
<hr/>

<form class="add-courier-form" method="post" action="/insert_courier">
    <button type="submit"  class="btn btn-primary">Add Courier</button>
    <a class="btn btn-primary back" onclick="history.back()">Back</a>
    <br />
    <br/>
    <table class="table table-bordered">
        <tbody>
        <tr>
            <th>From Person</th>
            <td><input type="text" name="sender_name" required/></td>
        </tr>
        <tr>
            <th>To Person</th>
            <td><input type="text" name="reciever_name" required/></td>
        </tr>
        <tr>
            <th>Color</th>
            <td><input type="text" name="color"/></td>
        </tr>
        <tr>
            <th>Weight</th>
            <td><input type="text" name="weight" placeholder="0.00" required/></td>
        </tr>
        <tr>
            <th>Unit</th>
            <td><select name="unit" aria-required="true">
                <option disabled selected>---Please Select a unit---</option>
                <option selected>Kilogram (kg)</option>
                <option>Tonne (T)</option>
                <option>Gram (g)</option>
                <option>Centigram (cg)</option>
                <option>Carat (ct)</option>
                <option>Pound (lb)</option>
                <option>ounce (oz)</option>
                <option>Milligram (mg)</option>
                <option>Decigram (dg)</option>
                <option>Dekagram (dag)</option>
            </select></td>
        </tr>
        <tr>
            <th>Price</th>
            <td><input type="text" name="service_price" placeholder="in NAIRA" required/></td>
        </tr>
        <tr>
            <th>Currency</th>
            <td><select name="currency" aria-required="true">
                <option disabled selected>---Please Select a currency---</option>
                <option selected>Naira (&#x20A6;)</option>
                <option>USD (&#36;)</option>
                <option>Pound Sterling (&#163;)</option>

            </select></td>
        </tr>
        <tr>
            <th>Dispatched On</th>
            <td><input type="date" name="dispatched_on" required/></td>
        </tr>
        <tr>
            <th>Expected Delivery</th>
            <td><input type="date" name="expected_delivery" required/></td>
        </tr>
        <tr>
            <th>Sender Address</th>
            <td><textarea name="sender_address" required></textarea></td>
        </tr>
        <tr>
            <th>Receiver Address</th>
            <td><textarea name="receiver_address" required></textarea></td>
        </tr>
        <tr>
            <th>Sender Phone No</th>
            <td><input type="text" name="sender_phone_no" required/></td>
        </tr>
        <tr>
            <th>Receiver Phone No</th>
            <td><input type="text" name="receiver_phone_no" required/></td>
        </tr>
        <tr>
            <th>Current Location</th>
            <td><input type="text" name="current_location" id="find-places" placeholder="Search Location" required/></td>
        </tr>
        </tbody>
    </table>

</form>
<!-- Home Page -->  <script>
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