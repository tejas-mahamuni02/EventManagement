<!doctype html>
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

  <div class="container-fluid position-fixed" style="background-color: #C5EFF7;">
    <nav class="navbar navbar-expand-lg ">
      <div class="container-fluid">
        <a class="navbar-brand fs-1 fw-bold py-3" href="#">Evento</a>
      </div>
      <button class="navbar-toggler float-end" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 collapse navbar-collapse" id="navbarSupportedContent">
        <li class="nav-item"><a class="nav-link "  href="home">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="#about">About</a>
        </li>
        <li class="nav-item"><a class="nav-link" href="#ourteam">Our
            Team</a></li>
        <li class="nav-item"><a class="nav-link" href="#contact">Contact</a>
        </li>
        <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
      </ul>
    </nav>
  </div>
  <div class="container-fluid bg-image " id="home">
  	<div class="w-75 div1 m-auto">
	    <div class="m-auto border border-2 border-white  div1 mb-5"></div>
	    <div class=" m-auto  fw-bold text-center border border-white border-5 div1 bg-color  mb-2 text-dark">
	      <form class="p-5" method="post" action="login">
	      <h1 class="mb-3">Login Form</h1>
	        <div class="row mb-3">
	          <label for="inputEmail3" class="col-sm-3 col-form-label">Email</label>
	          <div class="col-sm-9">
	            <input type="email" class="form-control" id="inputEmail3" name="email">
	          </div>
	        </div>
	        <div class="row mb-3">
	          <label for="inputPassword3" class="col-sm-3 col-form-label">Password</label>
	          <div class="col-sm-9">
	            <input type="password" class="form-control" id="inputPassword3" name="password">
	          </div>
	        </div>
	       
	       <div class="row mb-3 mt-3">
	          <button type="submit" class="btn btn-primary col-sm-4 text-center m-auto">Sign in</button>
	        </div>
	         <div class="row  mt-3">
		        <p class="col-sm-6">Dont Have An a Account?</p>
		        <a class="col-sm-6 text-start text-dark fw-bold " href="registerform"  >Sign Up</a>
	        </div>
	       
	      </form>
	    </div>
	    <div class="m-auto border border-2 border-white  div1 mb-3"></div>
	</div>
  </div>
  
  
  <div class="container-fluid  p-5" style="background-color: white; color: black;" id="contact">
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
          <button type="button" class="btn btn-dark">Let Us Know</button>
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

</html>