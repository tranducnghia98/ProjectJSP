<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<!doctype html>
<html lang="en">

<head>
<title>Title</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<base href="/assijava4/">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<body >
	<div class="container-fluid">
		<header style="font-weight: bold; color: rgb(43, 241, 212);">
			<nav class="navbar navbar-expand-lg navbar-light bg-dark">
				<a class="navbar-brand" href="#"><img src="image/logo2.png"
					alt=""></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active"><a class="nav-link text-white"
							href="HomePage">Home <span class="sr-only">(current)</span></a></li>
						<li class="nav-item"><a class="nav-link  text-white"
							href="favorite.html">My Favorite</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle  text-white" href="#"
							id="navbarDropdown" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> My Account </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<c:if test="${! isLogin }">
									<a class="dropdown-item" href="LoginPage">Login</a>
									<a class="dropdown-item" href="Forgotpassword">Forgot
										Password</a>
									<a class="dropdown-item" href="Registration">Registration</a>
								</c:if>
								<c:if test="${ isLogin }">
									<a class="dropdown-item" href="LogOff">LogOff</a>
									<a class="dropdown-item" href="ChangePassword">Change
										Password</a>
									<a class="dropdown-item" href="EditProfile">Edit Profile</a>
								</c:if>
							</div></li>
						<li class="nav-item"><a class="nav-link text-white" href="#"
							tabindex="-1" aria-disabled="true">Customer</a></li>
						<li class="nav-item dropdown "><a
							class="nav-link dropdown-toggle text-white" href="#"
							id="navbarDropdown" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> Language </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#">Vietnamese</a> <a
									class="dropdown-item" href="#">English</a>

							</div></li>
					</ul>
					<form action="SearchSevlet" class="form-inline my-2 my-lg-0">
						<input class="form-control mr-sm-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					</form>
				</div>
			</nav>
		</header>

		<main class="container-fluid m-auto my-0">
			<section class="">
				<jsp:include page="${page.contentUrl }"></jsp:include>
			</section>
			</main>
			
	</div>
<!-- Footer -->
<footer class="page-footer font-small special-color-dark pt-4">

  <!-- Footer Elements -->
  <div class="container">

    <!--Grid row-->
    <div class="row">

      <!--Grid column-->
      <div class="col-md-6 mb-4">

        <!-- Form -->
        <form class="form-inline">
          <input class="form-control form-control-sm mr-3 w-75" type="text" placeholder="Search"
            aria-label="Search">
          <i class="fas fa-search" aria-hidden="true"></i>
        </form>
        <!-- Form -->

      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-md-6 mb-4">

        <form class="input-group">
          <input type="text" class="form-control form-control-sm" placeholder="Your email"
            aria-label="Your email" aria-describedby="basic-addon2">
          <div class="input-group-append">
            <button class="btn btn-sm btn-outline-white my-0" type="button">Sign up</button>
          </div>
        </form>

      </div>
      <!--Grid column-->

    </div>
    <!--Grid row-->

  </div>
  <!-- Footer Elements -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">?? 2020 Copyright:
    <a href="/"> Movie.com</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->




	<style>
[role="button"]:active {
	background-color: rgb(231, 194, 194);
	color: navy;
	
	.btn {
   font-weight: bold;
   font-size: 1em;
   letter-spacing: 0.1em;
   text-decoration: none;
   color: #ffffff;
   display: inline-block;
   padding: 10px 40px 10px 40px;
   position: relative;
   border: 3px solid #ffffff;
   border-radius: 20px;
 }
}
</style>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<c:if test="${not empty page.scriptUrl }">
		<jsp:include page="${page.scriptUrl }"></jsp:include>
	</c:if>

</body>

</html>

