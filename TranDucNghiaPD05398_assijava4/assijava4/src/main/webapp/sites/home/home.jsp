<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<main class="container-fluid m-auto my-0">
	<div>
		<div id="carouselExampleControls" class="carousel slide"
			data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="image/aantasy-2881646_1920.jpg" alt="First slide"
						height="500px">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="image/aery-1648250_1280.jpg" alt="Second slide"
						height="500px">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="image/ancy-4706026_1920.jpg" alt="Third slide"
						height="500px">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleControls"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleControls"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div>
		<div id="carouselExampleInterval" class="carousel slide"
			data-ride="carousel">
			<div class="carousel-inner" style="margin: 20px;">
				<div class="carousel-item active" data-interval="10000">
					<!-- -------------------- -->
					<div class="row row-cols-1 row-cols-md-2"
						style="margin-right: 20px;">
						<c:forEach var="item" items="${videos }">
						<div class="col-4 mt-2">
							<div class="card">
								<img src="${item.poster }" class="card-img-top" alt=""
									height="300px">
								<div class="card-body text-center">
									<a href="DetailVideoServlet">
										<h5 class="card-title">${item.title }</h5>
									</a>
								</div>
								<div class="card-footer text-center">
									<a class="btn btn-primary" href="FavoritesVideoServlet?videoId=${item.videoId }" >Like</a>
									<a class="btn btn-success" href="ShareVideo?videoId=${item.videoId }" >Share</a>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
				</div>
				
			</div>
			<a class="carousel-control-prev" href="#carouselExampleInterval"
				role="button" data-slide="prev" style="width: 20px;"> <span
				class=" carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleInterval"
				role="button" data-slide="next" style="width: 20px;"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>

		</div>

	</div>
	<style>

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
</style>
</main>