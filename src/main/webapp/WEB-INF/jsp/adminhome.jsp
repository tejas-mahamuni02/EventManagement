<!doctype html>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap demo</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
		integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="css/style.css">
	<style type="text/css">
		.bg-image {
			height: 90vh;
			animation: imgchange 10s linear infinite;
			animation-timing-function: ease-in-out;
		}

		@keyframes imgchange {
			0% {
				background: url(images/demo/bg-slide-01.jpg)center/cover no-repeat;
			}

			50% {
				background: url(images/demo/bg-slide-02.jpg)center/cover no-repeat;
			}

			100% {
				background: url(images/demo/bg-slide-01.jpg)center/cover no-repeat;
			}

		}
	</style>
</head>

<body>
	<c:if test="${empty user}">
    	<c:redirect url="/homepage"></c:redirect>
  	</c:if>
	<div class="container-fluid position-fixed" style="background-color: #C5EFF7;">
		<nav class="navbar navbar-expand-lg ">
			<div class="container-fluid">
				<a class="navbar-brand fs-1 fw-bold py-3" href="#">Evento</a>
			</div>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<ul class="navbar-nav me-auto mb-2 mb-lg-0 collapse navbar-collapse" id="navbarSupportedContent">
				<li class="nav-item"><a class="nav-link " aria-current="page" href="#">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="#eventform">Fill Form</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#events">Events</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="allbookings">All Bookings</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#ourteam">Our
						Team</a></li>
				<li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
				<li class="nav-item"><a class="nav-link" href="logoutadmin">Logout</a>

				</li>
			</ul>
		</nav>
	</div>
	<div class="container-fluid bg-image " id="home">
		<div class="m-auto border border-2 border-white  div1 mb-5"></div>
		<div class=" m-auto   fs-3 fw-bold text-center border border-white border-5 div1 bg-color mb-5 text-dark"
			style="transform: rotate(3deg);">Let's makes Happy Faces
		</div>
		<div class=" m-auto   fs-3 fw-bold text-center border border-white border-5 div1 bg-color mb-5 text-dark"
			style="transform: rotate(-2deg);">Let's Mark New Events <br> ${user.name}
		</div>
		<div class=" m-auto   fs-3 fw-bold text-center border border-white border-5 div1 bg-color mb-5 text-dark"
			style="transform: rotate(3deg);">Scroll To Mark New Events
		</div>
		<div class="m-auto border border-2 border-white  div1 mb-3"></div>
		



	</div>
	<div class="container-fluid text-center w-75 m-auto p-5" style="color: #555555;" id="eventform">
	
		<h1 class="mt-5">Fill The Moments To Make Joy </h1>

		<div class=" my-5 border border-2 rounded-3 p-5 bg-light">
			<h6>${msg}</h6>
			<form class="p-2 row" action="saveevent" method="post" enctype="multipart/form-data">
				<div class="row mb-4">
					<label for="event" class="col-form-label col-sm-4">Event Type</label>
					<div class="col-sm-8">
						<select class="form-select" aria-label="Default select example" name="event">
							<option selected>Open this select menu</option>
							<option value="Weddings">Weddings</option>
							<option value="Birthdays">Birthdays</option>
							<option value="MarriageAnniversary">Marriage Anniversary</option>
							<option value="BabyShower">Baby Showers</option>
							<option value="GradutationParty">Graduation Parties</option>
							<option value="RetirementParty"> Retirement Parties</option>
						</select>
					</div>

				</div>
				<div class="row mb-4">
					<label for="platerate" class="col-form-label col-sm-4">Catering Expense For One Person</label>
					<div class="col-sm-8">
						<input type="number" class="form-control " name="platerate" id="platerate" required>
					</div>

				</div>

				<div class="row mb-4">
					<label for="entertainment" class="col-form-label col-sm-4">Entertainment (DJ's,Speakers)</label>
					<div class="col-sm-8">
						<input type="number" class="form-control " name="entertainment" id="entertainment" required>
					</div>


				</div>
				<div class="row mb-4">
					<label for="decoration" class="col-form-label col-sm-4">Decoration</label>
					<div class="col-sm-8">
						<input type="number" class="form-control " name="decoration" id="decoration" required>
					</div>

				</div>
				<div class="row mb-4">
					<label for="chairrate" class="col-form-label col-sm-4">Chair Rate for 100 Chair</label>
					<div class="col-sm-8">
						<input type="number" class="form-control " name="chairrate" id="chairrate" required>
					</div>
				</div>
				<div class="row mb-4">
					<label for="img1" class="col-form-label col-sm-4">Event Image 1</label>
					<div class="col-sm-8">
						<input type="file" class="form-control " id="img1" name="image1" required>
					</div>
				</div>
				<div class="row mb-4">
					<label for="img2" class="col-form-label col-sm-4">Event Image 2</label>
					<div class="col-sm-8">
						<input type="file" class="form-control " id="img2" name="image2" required>
					</div>
				</div>
				<div class="row mb-4">
					<label for="img3" class="col-form-label col-sm-4">Event Image 3</label>
					<div class="col-sm-8">
						<input type="file" class="form-control " id="img3" name="image3" required>
					</div>
				</div>
				<div class="row mb-4">
					<label for="img4" class="col-form-label col-sm-4">Event Image 4</label>
					<div class="col-sm-8">
						<input type="file" class="form-control " id="img4" name="image4" required>
					</div>
				</div>

				<div class="col-12">
					<button type="submit" class="text-white rounded px-3 py-2" style="background-color: #13547a;"
						id="create">Register</button>

				</div>
			</form>
			
		</div>

	</div>
	<div class="container-fluid text-center w-75 m-auto p-5 " style="color: #555555;" id="events">
		<h1 class="mt-5">Wide Range Of Events that fills your moments with joy  </h1>
		<h3 class=mt-4>Click On Event You Want to Edit</h3>
		<div class="cards my-5">
			<div class="row row-cols-1 row-cols-md-2 g-4">
				<div class="col">
					<a href="events/Weddings">
						<div class="card">
							<img src="images/Poster_marriage.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Marriage</h5>
								<p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional
									content. This content is a little bit longer.</p>
							</div>
						</div>
					</a>
				</div>
				<div class="col">
					<a href="events/Birthdays">
						<div class="card">
							<img src="images/Poster_birthday.webp" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Birthday</h5>
								<p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional
									content. This content is a little bit longer.</p>
							</div>
						</div>
					</a>
				</div>
				<div class="col">
					<a href="events/MarriageAnniversary">
						<div class="card">
							<img src="images/Poster_Anniversary.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Anniversaries</h5>
								<p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional
									content. This content is a little bit longer.</p>
							</div>
						</div>
					</a>
				</div>
				<div class="col">
					<a href="events/BabyShower">
						<div class="card">
							<img src="images/Poster_babyshower.jpeg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Baby Showers</h5>
								<p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional
									content. This content is a little bit longer.</p>
							</div>
						</div>
					</a>
				</div>
				<div class="col">
					<a href="events/GradutationParty">
						<div class="card">
							<img src="images/Poster_graduationparty.jpeg" class="card-img-top" alt="..." >
							<div class="card-body">
								<h5 class="card-title">Graduation Parties</h5>
								<p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional
									content. This content is a little bit longer.</p>
							</div>
						</div>
					</a>
				</div>
				<div class="col">
					<a href="events/RetirementParty">
						<div class="card">
							<img src="images/Poster_retirementparty.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Retirement Parties</h5>
								<p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional
									content. This content is a little bit longer.</p>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>



	</div>

	<div class="container-fluid  p-5" style="background-color: black; color: white;" id="contact">
		<div class="container row  p-5 ">
			<div class="col-md-6">
				<h2>Hey!!!</h2>
				<h1>More About me</h1>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Voluptatum animi repudiandae nihil aspernatur repellat temporibus
					doloremque sint ea laboriosam, excepturi iure inventore rerum
					voluptatibus, suscipit totam, sit necessitatibus. Rerum,
					blanditiis.</p>
				<p>
					FC Road,<br> Pune, Maharashtra,<br> India
				</p>
				<a href="#">tejas.mahamuni02@gmail.com</a><br> <a href="#">9579469131</a>
			</div>
			<div class="col-md-6">
				<h2></h2>
				<h1>Contact us</h1>
				<form>
					<div class="mb-3 ">
						<label for="exampleFormControlInput1" class="form-label fs-5">Enter
							Name</label> <input type="text" class="form-control bg-dark text-white">
					</div>
					<div class="mb-3 ">
						<label for="exampleFormControlInput1" class="form-label fs-5">Enter
							Email</label> <input type="email" class="form-control bg-dark text-white">
					</div>
					<div class="mb-3">
						<label for="exampleFormControlTextarea1" class="form-label fs-5">Example
							textarea</label>
						<textarea class="form-control bg-dark text-white" rows="2"></textarea>
					</div>
					<button type="button" class="btn btn-light">Let Us Know</button>
				</form>
			</div>
		</div>
	</div>
	<div class="container-fluid bg-secondary text-center m-auto p-5 text-white">
		<h1>Find Us On</h1>
		<div class=" d-flex justify-content-center ">
			<p class="border border-white border-5 px-3 py-2 rounded-circle me-3">
				<a href="#"><i class="fa-brands fa-facebook-f fs-4 text-white"></i></a>
			</p>
			<p class="border border-white border-5 px-3 py-2 rounded-circle me-3">
				<a href="#"><i class="fa-brands fa-twitter text-white fs-4"></i></a>
			</p>
			<p class="border border-white border-5 px-3 py-2 rounded-circle me-3">
				<a href="#"><i class="fa-brands fa-linkedin fs-4 text-white"></i></a>
			</p>
			<p class="border border-white border-5 px-3 py-2 rounded-circle me-3">
				<a href="#"><i class="fa-brands fa-google-plus-g fs-4 text-white"></i></a>
			</p>
			<p class="border border-white border-5 px-3 py-2 rounded-circle me-3">
				<a href="#"><i class="fa-brands fa-wordpress fs-4 text-white"></i></a>
			</p>
		</div>
	</div>
	<div class="container-fluid p-4 row" style="background-color: #C5EFF7;">
		<div class="col-md-6 text-start ps-5">&copy; Copyright 2024 TS
			Company</div>
		<div class="col-md-6 text-end pe-5">Designed and Developed by
			Tejas Mahamuni</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
 <script>
        const fileInputs = document.querySelectorAll('input[type="file"]');
        const targetWidth = 300; // Target width in pixels
        const targetHeight = 200; // Target height in pixels

        fileInputs.forEach(input => {
            input.addEventListener('change', function (event) {
                const file = event.target.files[0];
                if (file) {
                    const reader = new FileReader();
                    reader.onload = function (readerEvent) {
                        const img = new Image();
                        img.onload = function () {
                            const canvas = document.createElement('canvas');
                            canvas.width = targetWidth;
                            canvas.height = targetHeight;
                            const ctx = canvas.getContext('2d');
                            ctx.drawImage(img, 0, 0, targetWidth, targetHeight);
                            canvas.toBlob(function (blob) {
                                const resizedFile = new File([blob], file.name, { type: file.type });
                                const dataTransfer = new DataTransfer();
                                dataTransfer.items.add(resizedFile);
                                input.files = dataTransfer.files;
                            }, file.type);
                        };
                        img.src = readerEvent.target.result;
                    };
                    reader.readAsDataURL(file);
                }
            });
        });
    </script>
</html>

		