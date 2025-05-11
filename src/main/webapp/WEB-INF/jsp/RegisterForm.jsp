<!doctype html>
<html lang="en">

<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

      height: 110vh;
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
        <li class="nav-item"><a class="nav-link" href="#contact">Contact</a>
        
        </li>
        <li class="nav-item"><a class="nav-link" href="logout">Logout</a>
      </ul>
    </nav>
  </div>
  <div class="container-fluid bg-image " id="home">
  	<div class="w-75 div1 m-auto">
	    <div class="m-auto border border-2 border-white  div1 mb-4"></div>
	    <div class=" m-auto  fw-bold text-center border border-white border-5 div1 bg-color mb-4 text-dark">
	    <h6 style="color: red;">${msg}</h6>
	      <form class="p-2 row" action="save" method="post">
	        <div class="row mb-4">
	          <label for="name" class="col-form-label col-sm-4">Your Name</label> 
	          <div class="col-sm-8">
	          <input type="text" class="form-control " name="name"
	            id="inputEmail4" required></div>
	          
	        </div>
	        <div class="row mb-4">
	          <label for="pass" class="col-form-label col-sm-4">Your Password</label> 
	          <div class="col-sm-8">
	          <input type="password" class="form-control " name="password"
	            id="pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  required></div>
	        </div>
	        <div class="row mb-4">
	          <label for="confirm_pass" class="col-form-label col-sm-4">Confirm Password</label> 
	          <div class="col-sm-8">
	          <input type="password" class="form-control " name="cfpassword"
	            id="confirm_pass" required onkeyup="validate_password()"></div>
	          <span id="wrong_pass_alert"></span>
	        </div>
	        <div class="row mb-4">
	          <label for="inputEmail" class="col-form-label col-sm-4">Your Email</label> 
	          <div class="col-sm-8">
	          <input type="email" class="form-control " name="email"
	            id="inputEmail" required></div>
	          
	          
	        </div>
	        <div class="row mb-4">
	          <label for="inputEmail" class="col-form-label col-sm-4">Your Mobile</label> 
	          <div class="col-sm-8">
	          <input type="text" class="form-control " name="mobile"
	            id="inputEmail" required></div>
	          
	        </div>
	        <div class="row mb-4">
	          <label for="inputAddress" class="col-form-label col-sm-4">Your Address</label> 
	          <div class="col-sm-8">
	          <input type="text" class="form-control " name="address"
	            id="inputAddress" required></div>
	        </div>
	        <div class="row mb-4">
	          <label for="inputEmail" class="col-form-label col-sm-4">Select Gender</label> 
	          <div class="col-sm-8 ">
	           <label for="gender" class="col-form-label">Male</label> <input type="radio" name="gender" value="male"
	            id="inputAddress2">
	          <label for="inputCity" class="col-form-label">Female</label> <input type="radio" name="gender" value="female"
	            id="inputCity">
	            </div>
	          
	        </div>
	      
	        
	       
	
	        <div class="col-12">
	          <button type="submit" class="text-white rounded px-3 py-2"
	            style="background-color: #13547a;" id="create">Register</button>
	
	        </div>
	
	      </form>
	    </div>
	    <div class="m-auto border border-2 border-white  div1 mb-3"></div>




	</div>
  </div>
  <div class="container-fluid text-center w-75 m-auto" style="color: #555555;" id="about">
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
        <p class="fs-4">RESPONSIVE DESIGN</p>
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
          <div class="progress h-100" role="progressbar" aria-label="Segment one" aria-valuenow="15" aria-valuemin="0"
            aria-valuemax="100" style="width: 50%; height: 10%;">
            <div class="progress-bar fs-5">50%</div>
          </div>
        </div>
        Idea
        <div class="progress-stacked my-4 " style="height: 10%;">
          <div class="progress h-100" role="progressbar" aria-label="Segment one" aria-valuenow="80" aria-valuemin="0"
            aria-valuemax="100" style="width: 80%;">
            <div class="progress-bar fs-5">80%</div>
          </div>
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
        function validate_password() {
 
            let pass = document.getElementById('pass').value;
            let confirm_pass = document.getElementById('confirm_pass').value;
            if (pass != confirm_pass) {
                 document.getElementById('wrong_pass_alert').style.color = 'red';
                document.getElementById('wrong_pass_alert').innerHTML
                    = ' Use same password'; 
                    document.getElementById('confirm_pass').style.borderColor="red";
                    document.getElementById('confirm_pass').style.border="3 px";
                document.getElementById('create').disabled = true;
                document.getElementById('create').style.opacity = (0.4);
            } else {
                document.getElementById('wrong_pass_alert').style.color = 'green';
                document.getElementById('wrong_pass_alert').innerHTML =
                    ' Password Matched';
                document.getElementById('confirm_pass').style.borderColor="green";
                    document.getElementById('confirm_pass').style.border="3 px";

                document.getElementById('create').disabled = false;
                document.getElementById('create').style.opacity = (1);
            }
        }
 
        function wrong_pass_alert() {
            if (document.getElementById('pass').value != "" &&
                document.getElementById('confirm_pass').value != "") {
                alert("Your response is submitted");
            } else {
                alert("Please fill all the fields");
            }
        }
        
       
        
    </script>
</html>