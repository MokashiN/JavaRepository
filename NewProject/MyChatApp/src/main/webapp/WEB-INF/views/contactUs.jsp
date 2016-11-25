<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.1/css/font-awesome.min.css" rel="stylesheet" type="text/css">
 
 
  <link href="http://v4.pingendo.com/assets/bootstrap/themes/default.css" rel="stylesheet" type="text/css">
  
  
  <link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script
src="http://maps.googleapis.com/maps/api/js">
</script>

<script>
var myCenter=new google.maps.LatLng(51.508742,-0.120850);

function initialize()
{
var mapProp = {
  center:myCenter,
  zoom:5,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker=new google.maps.Marker({
  position:myCenter,
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>

<body class="bg-inverse text-nowrap">
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Xplore!</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#">Products</a></li>
				<li><a href="<c:url value='/cs'/>">Contact Us</a></li>
				<li><a href="#">About Us</a></li>
			</ul>
			 <ul class="nav navbar-nav navbar-right">
      <li><a href="<c:url value='/register'/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
		
	</nav>
  <div class="bg-danger p-y-3 section" draggable="true">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h1 class="pi-draggable pi-item" draggable="true">COMPANY</h1>
          <p>
            <strong>Company name, Inc.</strong>
            <br>795 Folsom Ave, Suite 600
            <br>San Francisco, CA 94107
            <br>
            <abbr title="Phone">P:</abbr>(123) 456-7890</p>
          <div class="m-y-2 m-y-lg row text-center">
            <div class="col-xs-4 text-left">
              <a><i class="fa fa-3x fa-facebook text-primary"></i></a>
            </div>
            <div class="col-xs-4 text-left">
              <a><i class="fa fa-3x fa-twitter text-primary"></i></a>
            </div>
            <div class="col-xs-4 text-left">
              <a><i class="fa fa-3x fa-instagram text-primary"></i></a>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <h1 class="pi-draggable pi-item" draggable="true">CONTACT</h1>
          <form>
            <fieldset class="form-group">
              <label for="exampleInputEmail1">Your name</label>
              <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Your name">
            </fieldset>
            <fieldset class="form-group">
              <label for="exampleInputEmail1">Email address</label>
              <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
            </fieldset>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
        </div>
      </div>
    </div>
  </div>
  
  <div class="section">
  
      <div class="row">
   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15084.029653020038!2d72.85185608514168!3d19.06341167448486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c8df0b86ea1b%3A0xce7eea4b1bbdf296!2sBandra+Kurla+Complex%2C+Bandra+East%2C+Mumbai%2C+Maharashtra!5e0!3m2!1sen!2sin!4v1468582432798" width="1500" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
   </div>
   </div>
     
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/js/bootstrap.js"></script>


</body>