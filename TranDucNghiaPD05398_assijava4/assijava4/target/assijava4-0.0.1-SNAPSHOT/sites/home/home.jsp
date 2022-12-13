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
					<img class="d-block w-100" src="image/ce0.jpg" alt="First slide"
						height="500px">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="image/b81.jpg" alt="Second slide"
						height="500px">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="image/ce0.jpg" alt="Third slide"
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
						<div class="col-4 mt-2">
							<div class="card ">
								<img src="image/th (1).jpg" class="card-img-top" alt=""
									height="300px">
								<div class="card-body text-center">
									<a href="detail.html">
										<h5 class="card-title">Đấu La Đại lục</h5>
									</a>
								</div>
								<div class="card-footer text-center">
									<button class="btn btn-primary" type="button">like</button>
									<button class="btn btn-success" type="button">Dislike</button>
								</div>
							</div>
						</div>
						<div class="col-4 mt-2">
							<div class="card">
								<img src="image/th2.jpg" class="card-img-top" alt="..."
									height="300px">
								<div class="card-body text-center">
									<h5 class="card-title">Đấu La Đại lục</h5>
								</div>
								<div class="card-footer text-center">
									<button class="btn btn-primary" type="button">like</button>
									<button class="btn btn-success" type="button">Dislike</button>
								</div>
							</div>
						</div>
						<div class="col-4 mt-2">
							<div class="card">
								<img src="image/th3.jpg" class="card-img-top" alt="..."
									height="300px">

								<div class="card-body text-center">
									<h5 class="card-title">Đấu La Đại lục</h5>
								</div>
								<div class="card-footer text-center">
									<button class="btn btn-primary" type="button">like</button>
									<button class="btn btn-success" type="button">Dislike</button>
								</div>

							</div>
						</div>
					</div>
					<div class="row row-cols-1 row-cols-md-2"
						style="margin-right: 20px;">
						<div class="col-4 mt-2">
							<div class="card">
								<img src="image/th4.jpg" class="card-img-top" alt="..."
									height="300px">


								<div class="card-body text-center">
									<h5 class="card-title">Đấu La Đại lục</h5>
								</div>
								<div class="card-footer text-center">
									<button class="btn btn-primary" type="button">like</button>
									<button class="btn btn-success" type="button">Dislike</button>
								</div>
							</div>
						</div>
						<div class="col-4 mt-2">
							<div class="card">
								<img src="image/th5.jpg" class="card-img-top" alt="..."
									height="300px">


								<div class="card-body text-center">
									<h5 class="card-title">Đấu La Đại lục</h5>
								</div>
								<div class="card-footer text-center">
									<button class="btn btn-primary" type="button">like</button>
									<button class="btn btn-success" type="button">Dislike</button>
								</div>

							</div>
						</div>
						<div class="col-4 mt-2">
							<div class="card">
								<img src="image/th6.jpg" class="card-img-top" alt="..."
									height="300px">

								<div class="card-body text-center">
									<h5 class="card-title">Đấu La Đại lục</h5>
								</div>
								<div class="card-footer text-center">
									<button class="btn btn-primary" type="button">like</button>
									<button class="btn btn-success" type="button">Dislike</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item" data-interval="2000">
					<div class="row row-cols-1 row-cols-md-2"
						style="margin-right: 20px;">
						<div class="col-4 mt-2">
							<div class="card">
								<img src="image/th4.jpg" class="card-img-top" alt="..."
									height="300px">

								<div class="card-body text-center">
									<h5 class="card-title">Đấu La Đại lục</h5>
								</div>
								<div class="card-footer text-center">
									<button class="btn btn-primary" type="button">like</button>
									<button class="btn btn-success" type="button">Dislike</button>
								</div>

							</div>
						</div>
						<div class="col-4 mt-2">
							<div class="card">
								<img src="image/th3.jpg" class="card-img-top" alt="..."
									height="300px">

								<div class="card-body text-center">
									<h5 class="card-title">Đấu La Đại lục</h5>
								</div>
								<div class="card-footer text-center">
									<button class="btn btn-primary" type="button">like</button>
									<button class="btn btn-success" type="button">Dislike</button>
								</div>

							</div>
						</div>
						<div class="col-4 mt-2">
							<div class="card">
								<img src="image/th2.jpg" class="card-img-top" alt="..."
									height="300px">

								<div class="card-body text-center">
									<h5 class="card-title">Đấu La Đại lục</h5>
								</div>
								<div class="card-footer text-center">
									<button class="btn btn-primary" type="button">like</button>
									<button class="btn btn-success" type="button">Dislike</button>
								</div>
							</div>
						</div>
					</div>
					<div class="row row-cols-1 row-cols-md-2"
						style="margin-right: 20px;">
						<div class="col-4 mt-2">
							<div class="card">
								<img src="image/th4.jpg" class="card-img-top" alt="..."
									height="300px">

								<div class="card-body text-center">
									<h5 class="card-title">Đấu La Đại lục</h5>
								</div>
								<div class="card-footer text-center">
									<button class="btn btn-primary" type="button">like</button>
									<button class="btn btn-success" type="button">Dislike</button>
								</div>
							</div>
						</div>
						<div class="col-4 mt-2">
							<div class="card">
								<img src="image/th5.jpg" class="card-img-top" alt="..."
									height="300px">

								<div class="card-body text-center">
									<h5 class="card-title">Đấu La Đại lục</h5>
								</div>
								<div class="card-footer text-center">
									<button class="btn btn-primary" type="button">like</button>
									<button class="btn btn-success" type="button">Dislike</button>
								</div>

							</div>
						</div>
						<div class="col-4 mt-2">
							<div class="card">
								<img src="image/th6.jpg" class="card-img-top" alt="..."
									height="300px">

								<div class="card-body text-center">
									<h5 class="card-title">Đấu La Đại lục</h5>
								</div>
								<div class="card-footer text-center">
									<button class="btn btn-primary" type="button">like</button>
									<button class="btn btn-success" type="button">Dislike</button>
								</div>
							</div>
						</div>
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
</main>