<html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.1/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link href="http://v4.pingendo.com/assets/bootstrap/themes/default.css" rel="stylesheet" type="text/css">
</head>

<body class="bg-faded text-primary">
${message}
  <div class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-danger text-xs-center">LOG IN</h1></div>
      </div>
    </div>
  </div>
  <form:form action="isValidUser" method="post">
  <div class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-04 text-danger text-xs-left">
          <form class="text-primary">
            <div class="form-group">
              <label>UserName</label>
              <input type="text" name="name"  class="form-control" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label>Password</label>
              <input type="password" name="password" class="form-control" placeholder="Password">
            </div>
            <div class="form-group">
              <label>Gender</label><br>
              Male:
              <INPUT TYPE="radio" name="gender" VALUE="male" class="form-control" ><br>
              Female:
              <INPUT TYPE="radio" name="gender" VALUE="Female" class="form-control" ><br>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Submit</button>
          </form>
        </div>
      </div>
    </div>
  </div>
  </form:form>
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/js/bootstrap.js"></script>


</body>

</html>