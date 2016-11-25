<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>  

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<spring:url value="/resource/css" var="css" />
<spring:url value="/resource/js" var="js" />

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    
    <link href="${css}/bootstrap.css" rel="stylesheet"/>
     <link href="${css}/bootstrap-theme.css" rel="stylesheet"/>
      <link href="${css}/webapp.css" rel="stylesheet"/>
      </head>
    
    
   

    
 
  