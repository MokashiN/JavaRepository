<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="y" %>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.1/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="http://v4.pingendo.com/assets/bootstrap/themes/default.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<body background="#ff0000">

	<script type="text/javascript"
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

	<script type="text/javascript"
		src="https://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/js/bootstrap.js"></script>
	<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="myPage">Collaboration Center</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myPage">HOME</a></li>
        <li class="active"><a href="<y:url value='/start'/>"> Chat</a></li>
        <li class="active"><a href="<y:url value='/Login'/>"> Login</a></li>
        <li><a href="register">Register With Us</a></li>
         <li><a href="addPerson">Email</a></li>
        <li><a href="other">Forum and Blog</a></li>
        <li><a href="other1">Job Opportunities</a></li>
        <li><a href="AboutUs">About Us</a></li>
      </ul>
    </div>
  </div>
</nav>