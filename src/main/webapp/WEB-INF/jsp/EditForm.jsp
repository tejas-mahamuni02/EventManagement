<!doctype html>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<c:set var="i" scope="page" value="1" />
	<div class="container-fluid " style="background-color: #C5EFF7;">
		<nav class="navbar navbar-expand-lg ">
			<div class="container-fluid">
				<a class="navbar-brand fs-1 fw-bold py-3" href="#">Evento</a>
			</div>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<ul class="navbar-nav me-auto mb-2 mb-lg-0 collapse navbar-collapse" id="navbarSupportedContent">
				<li class="nav-item"><a class="nav-link " aria-current="page" href="">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="#about">About</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#ourteam">Our
						Team</a></li>
				<li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
				<li class="nav-item"><a class="nav-link" href="logout">Logout</a>
				</li>
			</ul>
		</nav>
	</div>
	<div class="container-fluid bg-image " id="home">
		<div class="m-auto border border-2 border-white  div1 mb-5"></div>
		<div class=" m-auto   fs-3 fw-bold text-center border border-white border-5 div1 bg-color mb-5 text-dark"
			style="transform: rotate(3deg);">WE ARE HERE TO MAKE YOU HAPPY
		</div>
		<div class=" m-auto   fs-3 fw-bold text-center border border-white border-5 div1 bg-color mb-5 text-dark"
			style="transform: rotate(-2deg);">${user.name}
		</div>
		<div class=" m-auto   fs-3 fw-bold text-center border border-white border-5 div1 bg-color mb-5 text-dark"
			style="transform: rotate(3deg);">Scroll To Mark New Events
		</div>
		<div class="m-auto border border-2 border-white  div1 mb-3"></div>



	</div>
	<div class="container-fluid text-center w-75 m-auto p-5 " style="color: #555555;" id="about">
		<h1 class="mt-5">${event.event}</h1>
		<div class=" m-auto  fw-bold text-center border border-secondary border-2 rounded-4  bg-color mb-4 text-dark">
			<h6 style="color: red;">${msg}</h6>
			<form class="p-4 row" action="#" method="post" enctype="multipart/form-data" id="editform">

				<input type="hidden" name="eventid" value="${event.eventid}">
				<input type="hidden" name="event" value="${event.event}">
				<h3 class="mb-4">Package ${event.eventid} </h3>
				<div class="row row-cols-1 row-cols-md-4  mb-4">
					<div class="col">
						<img src="${event.img1}" class="w-100  rounded mx-auto " alt="...">
					</div>
					<div class="col">
						<img src="${event.img2}" class="w-100  rounded mx-auto " alt="...">
					</div>
					<div class="col">
						<img src="${event.img3}" class="w-100  rounded mx-auto " alt="...">
					</div>
					<div class="col">
						<img src="${event.img4}" class="w-100  rounded mx-auto " alt="...">
					</div>


				</div>
				<div class="row mb-4 text-center">
					<h3>Do You Want to add image?</h3>
					<button class="col-sm-3 rounded px-3 py-2 text-white m-auto" style="background-color: #13547a;" onclick="embedimageform()">Yes</button>
					<button class="col-sm-3 rounded px-3 py-2 text-white m-auto" style="background-color: #13547a;" onclick="setpreviousimages()">No</button>
				</div>
				<!-- <div class="row mb-4 text-center">
					<h4 class="col-sm-6">Previous Price</h4>
					<h4 class="col-sm-6">New Price</h4>
				</div> -->
				<div class="row mb-4">
					<label for="name" class="col-form-label col-sm-3 text-start">Previous Price of meal for one person:</label>
					<label for="name" class="col-form-label col-sm-3">${event.platerate}&nbsp; &#8377;</label>
					<label for="name" class="col-form-label col-sm-3 text-start">New Price of meal for one person:</label>
					<div class="col-sm-3">
						<input type="number" class="form-control " name="platerate" id="platerate" required>
					</div>
				</div>

				<div class="row mb-4">
					<label for="name" class="col-form-label col-sm-3 text-start">Previous Chair Rate per 100 Person:</label>
					<label for="name" class="col-form-label col-sm-3">${event.chairrate}&nbsp; &#8377;</label>
					<label for="name" class="col-form-label col-sm-3 text-start">Previous Chair Rate per 100 Person:</label>
					<div class="col-sm-3">
						<input type="number" class="form-control " name="chairrate" id="chairrate" required>
					</div>
				</div>
				<div class="row mb-4">
					<label for="name" class="col-form-label col-sm-3 text-start">Previous Entertainment Cost:</label>
					<label for="name" class="col-form-label col-sm-3">${event.entertainment }&nbsp; &#8377;</label>
					<label for="name" class="col-form-label col-sm-3 text-start">New Entertainment Cost:</label>
					<div class="col-sm-3">
						<input type="number" class="form-control " name="entertainment" id="entertainment" required>
					</div>
				</div>
				<div class="row mb-4">
					<label for="name" class="col-form-label col-sm-3 text-start">Previous Decoration Rate:</label>
					<label for="name" class="col-form-label col-sm-3">${event.decoration}&nbsp; &#8377;</label>
					<label for="name" class="col-form-label col-sm-3 text-start">New Decoration Rate:</label>
					<div class="col-sm-3">
						<input type="number" class="form-control " name="decoration" id="decoration" required>
					</div>
				</div>
				
				<div id="showimageform">
					
				</div>

				<div class="col-12">
					<button type="submit" class="text-white rounded px-3 py-2" style="background-color: #13547a;"
						id="enter" hidden>Register</button>
				</div>

			</form>
		</div>



	</div>

	<div class="container-fluid text-center w-75 m-auto mb-5 pb-4 " style="color: #555555;" id="ourteam">
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
					<a href="#"><i class="fa-brands fa-square-twitter"></i></a> <a href="#"><i
							class="fa-brands fa-facebook-f"></i></a> <a href="#"><i class="fa-brands fa-twitter"></i></a> <a
						href="#"><i class="fa-brands fa-linkedin"></i></a>
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
					<a href="#"><i class="fa-brands fa-square-twitter"></i></a> <a href="#"><i
							class="fa-brands fa-facebook-f"></i></a> <a href="#"><i class="fa-brands fa-twitter"></i></a> <a
						href="#"><i class="fa-brands fa-linkedin"></i></a>
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
<script type="text/javascript">
	function embedimageform()
	{
		 document.getElementById('enter').hidden = false;
		 document.getElementById('editform').action = "events/editsaveimg";
		 document.getElementById('editform').enctype = "multipart/form-data";
		 
		document.getElementById('showimageform').innerHTML=`<div class="row mb-4">
			<label for="name" class="col-form-label col-sm-4 text-start">New Image 1</label>

			<div class="col-sm-8">
				<input type="file" class="form-control " id="img1" name="image1" required>
			</div>
		</div>
		<div class="row mb-4">
			<label for="name" class="col-form-label col-sm-4 text-start">New Image 2</label>
			<div class="col-sm-8">
				<input type="file" class="form-control " id="img2" name="image2" required>
			</div>
		</div>
		<div class="row mb-4">
			<label for="name" class="col-form-label col-sm-4 text-start">New Image 3</label>
			<div class="col-sm-8">
				<input type="file" class="form-control " id="img3" name="image3" required>
			</div>
		</div>
		<div class="row mb-4">
			<label for="name" class="col-form-label col-sm-4 text-start">New Image 4</label>
			<div class="col-sm-8">
				<input type="file" class="form-control " id="img4" name="image4" required>
			</div>
		</div>`;
		
		
		 
	}
	
	function setpreviousimages(){
			document.getElementById('enter').hidden = false;
			document.getElementById('editform').action = "events/editsave";
		 document.getElementById('editform').enctype = "application/x-www-form-urlencoded";
		document.getElementById('showimageform').innerHTML=`<input type="hidden" class="form-control " name="img1" id="img1" value="${event.img1}" >
			<input type="hidden" class="form-control " name="img2" id="img2" value="${event.img2}" >
			<input type="hidden" class="form-control " name="img3" id="img3" value="${event.img3}" >
			<input type="hidden" class="form-control " name="img4" id="img4" value="${event.img4}" >`;
			
		 
	}

</script>


</html>