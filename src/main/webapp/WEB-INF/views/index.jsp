<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="c" %>
<%@include file="Login.jsp" %>
<!DOCTYPE html>
<html>
<head>
<h2>Hello World!</h2>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <%@taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="<d:url value='/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css'/> ">
<script src="<d:url value='/resources/bootstrap-3.3.7-dist/js/jquery.js'/>"></script>
<script src="<d:url value='/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js'/>"></script>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width:30%;
      margin-top:auto; 
      }
  }
  </style>
  </head>
<body>
${msg}<br>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Welcome</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="product">Product</a></li>
          <li><a href="#">help</a></li>
          <li><a href="#">contact</a></li>
        </ul>
      </li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
<div class="container">

  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
     <div class="carousel-inner" role="listbox">
<div class="item active">
 <img src="<d:url value='resources/img/s1.jpg'/>"alt="Chania" width="300" height="200">
      </div>

      <div class="item">
        <img src="<d:url value='/resources/img/s3.jpg'/>" alt="Chania" width="300" height="200">
      </div>
     <div class="item">
       <img src="<d:url value='/resources/img/s2.jpg'/>" alt="Flower" width="300" height="200">
      </div>

      <div class="item">
        <img src="<d:url value='/resources/img/s5.jpg'/>" alt="Flower" width="300" height="200">
      </div>
    </div>
    <div>
 <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
 <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    </div>
  </div>
</div>



</body>
</html>




