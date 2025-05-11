<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
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

	<div class="container-fluid position-fixed"
		style="background-color: #C5EFF7;">
		<nav class="navbar navbar-expand-lg ">
			<div class="container-fluid">
				<a class="navbar-brand fs-1 fw-bold py-3" href="#">Evento</a>
			</div>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<ul class="navbar-nav me-auto mb-2 mb-lg-0 collapse navbar-collapse"
				id="navbarSupportedContent">
				<li class="nav-item"><a class="nav-link " aria-current="page"
					href="">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="#about">About</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#ourteam">Our
						Team</a></li>
				<li class="nav-item"><a class="nav-link" href="#contact">Contact</a>
				</li>
			</ul>
		</nav>
	</div>
	<div class="container-fluid bg-image " id="home">
		<div class="w-75 div1 m-auto">
			<p class=" m-auto div1 w-25 mb-3 bg-color ">From THE MARCH 7, 2014</p>
			<div class="m-auto border border-2 border-white div1  mb-5"></div>
			<div
				class=" m-auto   fs-1 fw-bold text-center border border-white border-5 div1  bg-color mb-5 text-dark"
				style="transform: rotate(3deg);">ORGANIZING WORLD CLASS EVENTS
			</div>
			<div class="m-auto border border-2 border-white  div1 mb-3"></div>
			<div
				class="div1 m-auto  text-center text-white border border-white border-5 div1  bg-secondary mb-3">
				Schrodinger confirms that Germany international ...</div>
			<div
				class=" m-auto   fs-1 fw-bold text-center  div1   text-white">
				<a href="loginform" class="btn bg-color fs-5 px-5 border border-white fw-bold   ">Login Here</a>
			</div>
				
		</div>	
	</div>
	<div class="container-fluid text-center w-75 m-auto"
		style="color: #555555;" id="about">
		<h1 class="mt-5">About us</h1>
		<p>Know our great story</p>
		<div class="d-flex justify-content-evenly mb-3">
			<div>
				<i class="fa-solid fa-user-group fs-1"></i>
				<p class="fs-4">Huge Customers</p>
				<p class="w-75 m-auto">I am text block. Click edit button to
					change this text. Lorem ipsum dolor sit amet, consectetur
					adipiscing elit.</p>
			</div>
			<div>
				<i class="fa-solid fa-rocket fs-1"></i>
				<p class="fs-4">RESPONSIVE DESIGN </p>
				<p class="w-75 m-auto">I am text block. Click edit button to
					change this text. Lorem ipsum dolor sit amet, consectetur
					adipiscing elit.</p>
			</div>
		</div>
		<div class="row text-start my-5">
			<div class="col-8 p-5">
				<p class="fs-3">ABOUT US</p>
				<p>Nullam enim nunc, sollicitudin eget rhoncus non, iaculis quis
					metus. Nunc urna diam, blandit nec ipsum eu, mollis convallis
					lectus. Vestibulum sapien mauris, auctor quis magna sed, pretium
					vestibulum est. Mauris vitae tristique urna. Nullam enim nunc,
					sollicitudin eget rhoncus non, iaculis quis metus. Nunc urna diam,
					blandit nec ipsum eu, mollis convallis lectus. Vestibulum sapien
					mauris, auctor quis magna sed, pretium vestibulum est. Mauris vitae
					tristique urna.</p>
			</div>
			<div class="col-4">
				Design
				<div class="progress-stacked my-4 " style="height: 10%;">
					<div class="progress h-100" role="progressbar"
						aria-label="Segment one" aria-valuenow="15" aria-valuemin="0"
						aria-valuemax="100" style="width: 50%; height: 10%;">
						<div class="progress-bar fs-5">50%</div>
					</div>
				</div>
				Idea
				<div class="progress-stacked my-4 " style="height: 10%;">
					<div class="progress h-100" role="progressbar"
						aria-label="Segment one" aria-valuenow="80" aria-valuemin="0"
						aria-valuemax="100" style="width: 80%;">
						<div class="progress-bar fs-5">80%</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div class="container-fluid text-center w-75 m-auto mb-5 pb-4 "
		style="color: #555555;" id="ourteam">
		<h1 class="mb-5">Our Team</h1>
		<div class="d-flex justify-content-evenly">
			<div class="w-25">
				<img src="images/Tejas Photo.jpeg" alt="" class="w-100">
				<div style="background-color: #C5EFF7;" class="fs-4 fw-bold py-2">Tejas
					Mahamuni</div>
				<div style="background-color: rgb(73, 178, 199);" class="fs-4 py-2">
					Founder <br>
				</div>
				<div style="background-color: #C5EFF7; color: rgb(98, 171, 213);"
					class="fs-3 d-flex justify-content-evenly py-2">
					<a href="#"><i class="fa-brands fa-square-twitter"></i></a> <a
						href="#"><i class="fa-brands fa-facebook-f"></i></a> <a href="#"><i
						class="fa-brands fa-twitter"></i></a> <a href="#"><i
						class="fa-brands fa-linkedin"></i></a>
				</div>
			</div>
			<div class="w-25">
				<img src="images/Tejas Photo.jpeg" alt="" class="w-100">
				<div style="background-color: #C5EFF7;" class="fs-4 fw-bold py-2">Tejas
					Mahamuni</div>
				<div style="background-color: rgb(73, 178, 199);" class="fs-4 py-2">
					Founder <br>
				</div>
				<div style="background-color: #C5EFF7; color: rgb(98, 171, 213);"
					class="fs-3 d-flex justify-content-evenly py-2">
					<a href="#"><i class="fa-brands fa-square-twitter"></i></a> <a
						href="#"><i class="fa-brands fa-facebook-f"></i></a> <a href="#"><i
						class="fa-brands fa-twitter"></i></a> <a href="#"><i
						class="fa-brands fa-linkedin"></i></a>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid  p-5"
		style="background-color: black; color: white;" id="contact">
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
	<div
		class="container-fluid bg-secondary text-center m-auto p-5 text-white">
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
				<a href="#"><i
					class="fa-brands fa-google-plus-g fs-4 text-white"></i></a>
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>

</html> 

<!-- <html>
<body>
<h2>Hello World!</h2>
	<a href="home">Home</a>
	<a href="view">VIew</a>
</body>
</html> -->

