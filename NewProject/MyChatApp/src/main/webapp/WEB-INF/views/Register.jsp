<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
  <meta charset="utf-8">
  <title>Sign Up</title>
  <meta name="keywords" content="example, JavaScript Form Validation, Sample registration form">
  <meta name="description" content="This document is an example of JavaScript Form Validation using a sample registration form. ">

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" type="text/css">

  <script>
    function formValidation()  
    {  
    var uid = document.registration.userid;  
    var passid = document.registration.Email;  
    var uname = document.registration.UserRole;  
    var uadd = document.registration.Name;  
    var ucountry = document.registration.Adress;  
    var uzip = document.registration.MobileNo;  
    var dcreated = document.registration.DateCreated;
    var uemail = document.registration.Password;  
    var umsex = document.registration.msex;  
    var ufsex = document.registration.fsex; if(userid_validation(uid,5,12))  
    {  
    if(passid_validation(passid,7,12))  
    {  
    if(allLetter(uname))  
    {  
    if(alphanumeric(uadd))  
    {   
    if(countryselect(ucountry))  
    {  
    if(allnumeric(uzip))  
    {  
    if(ValidateEmail(uemail))  
    {  
    if(validsex(umsex,ufsex))  
    {  
    }  
    }   
    }  
    }   
    }  
    }  
    }  
    }  
    return false;  
      
    } function userid_validation(uid,mx,my)  
    {  
    var uid_len = uid.value.length;  
    if (uid_len == 0 || uid_len >= my || uid_len < mx)  
    {  
    alert("User Id should not be empty / length be between "+mx+" to "+my);  
    uid.focus();  
    return false;  
    }  
    return true;  
    }  
    function passid_validation(passid,mx,my)  
    {  
    var passid_len = passid.value.length;  
    if (passid_len == 0 ||passid_len >= my || passid_len < mx)  
    {  
    alert("Password should not be empty / length be between "+mx+" to "+my);  
    passid.focus();  
    return false;  
    }  
    return true;  
    }  
    function allLetter(uname)  
    {   
    var letters = /^[A-Za-z]+$/;  
    if(uname.value.match(letters))  
    {  
    return true;  
    }  
    else  
    {  
    alert('Username must have alphabet characters only');  
    uname.focus();  
    return false;  
    }  
    }  
    function alphanumeric(uadd)  
    {   
    var letters = /^[0-9a-zA-Z]+$/;  
    if(uadd.value.match(letters))  
    {  
    return true;  
    }  
    else  
    {  
    alert('User address must have alphanumeric characters only');  
    uadd.focus();  
    return false;  
    }  
    }  
    function countryselect(ucountry)  
    {  
    if(ucountry.value == "Default")  
    {  
    alert('Select your country from the list');  
    ucountry.focus();  
    return false;  
    }  
    else  
    {  
    return true;  
    }  
    }  
    function allnumeric(uzip)  
    {   
    var numbers = /^[0-9]+$/;  
    if(uzip.value.match(numbers))  
    {  
    return true;  
    }  
    else  
    {  
    alert('ZIP code must have numeric characters only');  
    uzip.focus();  
    return false;  
    }  
    }  
    function ValidateEmail(uemail)  
    {  
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
    if(uemail.value.match(mailformat))  
    {  
    return true;  
    }  
    else  
    {  
    alert("You have entered an invalid email address!");  
    uemail.focus();  
    return false;  
    }  
    } function validsex(umsex,ufsex)  
    {  
    x=0;  
      
    if(umsex.checked)   
    {  
    x++;  
    } if(ufsex.checked)  
    {  
    x++;   
    }  
    if(x==0)  
    {  
    alert('Select Male/Female');  
    umsex.focus();  
    return false;  
    }  
    else  
    {  
    alert('Form Succesfully Submitted');  
    window.location.reload()  
    return true;  
    }  
    }
  </script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.1/css/font-awesome.min.css" rel="stylesheet" type="text/css">
 
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
</head>

<body onload="document.registration.userid.focus();" class="bg-success text-danger">
<%@include file="header.jsp" %>

  <div class="container">
    <div class="form-group">

      <h1><center>Sign Up</center></h1>
      <div class="form-group">
       <div class="generic-container" ng-controller="UserController as ctrl">
 <div class="container">
  <div class="row">
    <div class="Absolute-Center is-Responsive">
      <div id="logo-container"></div>
      <div class="col-sm-12 col-md-10 col-md-offset-1">
      <br/>
      <div style="border:2px solid;padding:25px;border-radius:5px 5px 5px 5px;box-shadow:2px 2px 2px 2px;background-color:#e6ebff">
      <div class="form-group input-group">
          
            <center><h3>New User? Register Here</a></h3></center>          
          </div>

       
       <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal" name="registration" action="addPerson" method="post" onsubmit="return formValidation();">
          <label for="userid">User id:</label>
          <input type="text"  ng-model="ctrl.user.id" id="id" class="form-control" name="userid" placeholder="Enter User id">
          
          <label for="Email">Email :</label>
          <input type="text" ng-model="ctrl.user.Email" id="Email" class="form-control" name="Email" placeholder="Enter Name">
          
          
          <label for="UserRole">User's Role :</label>
          <input type="text" ng-model="ctrl.user.UserRole" id="UserRole" class="form-control" name="UserRole" placeholder="Enter Name">
          
          
          <label for="Name">Name :</label>
          <input type="text" ng-model="ctrl.user.Name" id="Name" class="form-control" name="Name" placeholder="Enter Address">
          
          <label for="Address">Address:</label>
          <input type="text" ng-model="ctrl.user.Address" id="Address" class="form-control" name="Address" placeholder="Enter Address">
          
          <label for="Address">Mobile No:</label>
          <input type="text" ng-model="ctrl.user.MobileNo" id="MobileNo" class="form-control" name="MobileNo" placeholder="Enter Address">
          
          
          <label for="passid">Password:</label>
          <input type="password" ng-model="ctrl.user.Password" id="Password" class="form-control" name="Password" placeholder="Enter Password">
          
          
          <label for="DateCreated">Date Created:</label>
          <input type="password" ng-model="ctrl.user.DateCreated" id="DateCreated" class="form-control" name="DateCreated" placeholder="Enter Password">
          
          
          
          <label id="Gender">Sex:</label>
          <label class="radio-inline">
          <input type="radio" name="sex" id="msex" value="Male" ng-model="ctrl.user.Gender">Male
          </label>
          <label class="radio-inline">
            <input type="radio" name="sex" id="fsex" value="Female" ng-model="ctrl.user.Gender">Female
          </label>
          
          
          <br>
          <br>
          <label for="Enabled">ZIP Code:</label>
          <input type="text" ng-model="ctrl.user.Enabled" id="Enabled" class="form-control" name="Enabled" placeholder="Enter ZIP Code">
          
          
		  <label class="checkbox-inline">
            <input type="checkbox" name="language" value="en" checked=""><span>English</span></label>
          <label class="checkbox-inline">
            <input type="checkbox" name="language" value="noen"><span>Non English</span></label>
            
          <br>
          <br>
          <label>Language:</label>
          <label class="checkbox-inline">
            <input type="checkbox" name="language" value="en" checked=""><span>English</span></label>
          <label class="checkbox-inline">
            <input type="checkbox" name="language" value="noen"><span>Non English</span></label>
          <br>
          <br>
          <label for="desc">About:</label>
          <textarea name="about" id="desc"></textarea>
          <br>
          <input type="submit" name="submit" value="Submit" class="btn btn-primary btn-block">

        </form>


      </div>
    </div>
  </div>
</body>

</html>