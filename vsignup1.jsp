<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Natures Charm
Description: A two-column, fixed-width design.
Version    : 1.0
Released   : 20080125

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>GreenGrocers'</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<link rel="stylesheet" type="text/css" href="tabcontent.css" />
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
  
<script type="text/javascript" src="tabcontent.js"></script>
 <style> 
  .myButton {
	-moz-box-shadow: 0px 1px 0px 0px #fff6af;
	-webkit-box-shadow: 0px 1px 0px 0px #fff6af;
	box-shadow: 0px 1px 0px 0px #fff6af;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffec64), color-stop(1, #ffab23));
	background:-moz-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-webkit-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-o-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-ms-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:linear-gradient(to bottom, #ffec64 5%, #ffab23 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffec64', endColorstr='#ffab23',GradientType=0);
	background-color:#ffec64;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #ffaa22;
	display:inline-block;
	cursor:pointer;
	color:#333333;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:7px 44px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffee66;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23), color-stop(1, #ffec64));
	background:-moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23', endColorstr='#ffec64',GradientType=0);
	background-color:#ffab23;
}
.myButton:active {
	position:relative;
	top:1px;
}
     
      #map {
        width: 920px;
        height: 600px;
      }
.style12 {font-size: 12px}
 </style>

<script type="text/javascript" src='js/jquery-1.10.0.min.js'></script>




</head>
<body>
<!-- start header -->
<div id="header">
	<div id="logo">
		<h1><a href="#">GreenGrocers' </a></h1>
		<h2><a href="">A healthy outside starts from inside</a></h2>
	</div>
	<div id="menu">
		<ul>
			<li><a href="index.jsp" accesskey="1" title="">Home</a></li>
			<li><a href="#" accesskey="2" title="">Blog</a></li>
			<li><a href="#" accesskey="3" title="">Photos</a></li>
			<li class="active"><a href="vsignup.jsp" accesskey="4" title="">Vendor signup</a></li>
			<li><a href="#" accesskey="5" title="">Sign Up</a></li>
		</ul>
	</div>
</div>
<!-- end header -->


<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="content">
		<div class="post">
			<h1 class="title">Welcome to New Vendor Signup</h1>
			
			<div class="entry">

<form action="vsignup2.jsp" method="get">
<table width="861" height="333" >
  <tr>
    <td width="145">&nbsp;Login Name</td>
    <td width="291">&nbsp;<input name="logna" type="text" value="<%= request.getParameter("t1")%>" readonly="true" /> Available</td>
</tr>

<tr>    <td width="175">&nbsp;Owner Name</td>
    <td width="230">&nbsp;<input name="ona" type="text" /></td>
    <td width="175">&nbsp;Vendor Name</td>
    <td width="230">&nbsp;<input name="vna" type="text" /></td>
 
  </tr>

  <tr>
    <td>&nbsp;Password</td>
    <td>&nbsp;<input name="pwd" type="password" /></td>
    <td>&nbsp;Confirm Password</td>
    <td>&nbsp;<input name="cpwd" type="password" /></td>
  </tr>

  <tr>
    <td>&nbsp;Phone</td>
    <td>&nbsp;<input name="phn1" type="text" /></td>
    <td>&nbsp;Mobile</td>
    <td>&nbsp;<input name="phn2" type="text" /></td>
  </tr>
  
  <tr>
    <td>&nbsp;Mail ID </td>
    <td>&nbsp;<input name="ma" type="text" /></td>
    <td>&nbsp;Address</td>
    <td rowspan="3">&nbsp;<textarea name="addr" cols="30" rows="6"></textarea></td>
  </tr>

<tr>
	   <td>Latitude</td>
	   <td><input name="lat" type="text" id="lat"></td> 
	   <td></td>
</tr>
<tr>
	   <td>Longitude</td>
	   <td><input name="lng" type="text" id="lng"></td> 
	   <td></td>
</tr> 

	   
  <tr>
    <td height="27">&nbsp;Security Question</td>
    <td><select name="secq">
      <option>What is your favorite song?</option>
      <option>What is your favorite movie?</option>
      <option>What is your school name?</option>
      <option>What is name the of your bestfriend?</option>
      </select></td>
    <td>&nbsp;Security Answer</td>
    <td>&nbsp;<input name="seca" type="text" /></td>
  </tr>
  <tr>
    <td colspan="4" align="center">&nbsp;<input type="submit" value="Submit" />
	&nbsp;<input type="reset" value="Reset" /></td>
</table>

				</form>
	
	<br />



 <div id="map"></div>

<script>

      // This example displays a marker at the center of Australia.
      // When the user clicks the marker, an info window opens.

var markers = [];

      function initMap() {
        var baseLatLong = {lat: 20.2860587, lng: 85.8345398};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: baseLatLong
        });

        

        google.maps.event.addListener(map, 'click', function(event) {
         placeMarker(map,event.latLng);
         //console.log(event);
      });


        // START :: Current Location

        var infoWindow1 = new google.maps.InfoWindow({map: map});
        // Try HTML5 geolocation.
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };



              var currentPosition  = new google.maps.LatLng(pos.lat, pos.lng);
              var otherPoint = new google.maps.LatLng(baseLatLong.lat, baseLatLong.lng);

             // alert(calcDistance(currentPosition , otherPoint));


            console.log(pos);

            infoWindow1.setPosition(pos);
            infoWindow1.setContent('Current Location : Latitude:'+pos.lat + " Longitude:"+ pos.lng);
            map.setCenter(pos);
          }, function() {
            handleLocationError(true, infoWindow1, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow1, map.getCenter());
        }

        //END :: Current Location

      }


      function placeMarker(map, location) {

        removeMarkers();
        
          var marker = new google.maps.Marker({
              position: location, 
              map: map
          });
          //console.log(location);
      
      document.getElementById("lat").value=location.lat();
      document.getElementById("lng").value=location.lng();

          var contentData = '<div id="content">'+
            '<div id="siteNotice">'+
            '</div>'+
            '<h1 id="firstHeading" class="firstHeading">Location</h1>'+
            '<div id="bodyContent">'+
            '<p><b>Latitude: '+location.lat()+'</b></p>' +  
            '<p><b>Longitude: '+location.lng()+'</b></p>' + 
            '</div>'+
            '</div>';
        var infowindow2 = new google.maps.InfoWindow({
          content: contentData
        });

        marker.addListener('click', function() {
          infowindow2.open(map, marker);
        });


        //Add marker to the array.
         markers.push(marker);

      }


      function removeMarkers() {
        //Loop through all the markers and remove
        for (var i = 0; i < markers.length; i++) {
            markers[i].setMap(null);
        }
        markers = [];
    };

      //Function for Current Location
      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
      }


      //calculates distance between two points in km's
      function calcDistance(p1, p2){
        return (google.maps.geometry.spherical.computeDistanceBetween(p1, p2) / 1000).toFixed(2);
      }


/*
      var rad = function(x) {
        return x * Math.PI / 180;
      };

      var getDistance = function(p1, p2) {
        var R = 6378137; // Earth’s mean radius in meter
        var dLat = rad(p2.lat() - p1.lat());
        var dLong = rad(p2.lng() - p1.lng());
        var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
          Math.cos(rad(p1.lat())) * Math.cos(rad(p2.lat())) *
          Math.sin(dLong / 2) * Math.sin(dLong / 2);
        var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
        var d = R * c;
        return d; // returns the distance in meter
      };*/

    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDBRwuvgr8Thn-kajeeHeMwr6speR549AI&libraries=geometry&callback=initMap">
    </script>

			

			</div>
			
		</div>
		
	</div>
	<!-- end content -->
	<!-- start sidebar -->
	
	<!-- end sidebar -->
</div>
<div style="clear: both; height: 30px">&nbsp;</div>
<!-- end page -->
<div id="footer">
	<jsp:include page="footer.jsp" />
</div>
</body>
</html>
