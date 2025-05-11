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
  <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />

  <link rel="stylesheet" href="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.css" />

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

    #map {
      height: 400px;
      width: 100%;
    }
  </style>
</head>

<body>
  <%-- <c:if test="${empty user}">
    <c:redirect url="/home"></c:redirect>
    </c:if> --%>
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
      <h1 class="mt-5">Fill The Moments To Make Joy </h1>


      <div class=" m-auto  fw-bold text-center border border-secondary border-2 rounded-4  bg-color mb-4 text-dark">
        <h6 style="color: red;">${msg}</h6>
        <form class="p-4 row" action="saveBooking" method="post">
          <input type="hidden" name="userId" value="${user.id}">
          <input type="hidden" name="eventId" value="${currentevent.eventid}">
          <div class="row row-cols-1 row-cols-md-4  mb-4">

            <div class="col">
              <img src="${currentevent.img1}" class="w-100  rounded mx-auto " alt="...">
            </div>
            <div class="col">
              <img src="${currentevent.img2}" class="w-100  rounded mx-auto " alt="...">
            </div>
            <div class="col">
              <img src="${currentevent.img3}" class="w-100  rounded mx-auto " alt="...">
            </div>
            <div class="col">
              <img src="${currentevent.img4}" class="w-100  rounded mx-auto " alt="...">
            </div>


          </div>
          <div class="row mb-4">
            <label for="name" class="col-form-label col-sm-3 text-start">Price of meal for one person:</label>
            <label for="name" class="col-form-label col-sm-3">${currentevent.platerate}&nbsp; &#8377;</label>
            <input type="number" class="form-control " name="name" id="platerate" value="${currentevent.platerate}"
              hidden>
            <div class="col-sm-3">
              <input type="number" class="form-control " name="name" id="numberofplate" placeholder="Enter Person"
                oninput="set_platerate()" min="1" required>
            </div>
            <label for="name" class="col-form-label col-sm-3"><span id="totalplatecost">0</span> &nbsp; &#8377;</label>
            <input type="text" class="form-control " name="totalplaterate" id="totalplaterate" value="0" hidden>

          </div>

          <div class="row mb-4">
            <label for="name" class="col-form-label col-sm-3 text-start">Chair Rate per 100 Person:</label>
            <label for="name" class="col-form-label col-sm-3">${currentevent.chairrate}&nbsp; &#8377;</label>
            <input type="number" class="form-control " name="name" id="chairrate" value="${currentevent.chairrate}"
              hidden>

            <div class="col-sm-3">
              <input type="number" class="form-control " name="name" id="numberofchair" placeholder="Enter Chairs"
                oninput="set_chairrate()" min="1" required>
            </div>
            <label for="name" class="col-form-label col-sm-3"><span id="totalchaircost">0</span> &nbsp; &#8377;</label>
            <input type="text" class="form-control " name="totalchairrate" id="totalchairrate" value="0" hidden>

          </div>
          <div class="row mb-4">
            <label for="name" class="col-form-label col-sm-3 text-start">Entertainment Cost:</label>
            <label for="name" class="col-form-label col-sm-3">${currentevent.entertainment }&nbsp; &#8377;</label>
            <div class="col-sm-3">
            </div>
            <label for="name" class="col-form-label col-sm-3">${currentevent.entertainment } &nbsp; &#8377;</label>
            <input type="text" class="form-control " name="entertainmentrate" id="entertainmentrate"
              value="${currentevent.entertainment }" hidden>

          </div>
          <div class="row mb-4">
            <label for="name" class="col-form-label col-sm-3 text-start">Decoration Rate:</label>
            <label for="name" class="col-form-label col-sm-3">${currentevent.decoration}&nbsp; &#8377;</label>
            <div class="col-sm-3">
            </div>
            <label for="name" class="col-form-label col-sm-3">${currentevent.decoration} &nbsp; &#8377;</label>
            <input type="text" class="form-control " name="decorationrate" id="decorationrate"
              value="${currentevent.decoration}" hidden>
          </div>



          <div class="row mb-4">
            <div id="map"></div>
            <label for="location" hidden="hidden">Selected Location:</label>
            <input type="hidden" id="location" readonly>
          </div>

          <div class="row mb-4">
            <label for="locationName" class="col-form-label col-sm-4 text-start">Location Name:</label>
            <div class="col-sm-8">
              <input type="text" class="form-control col-sm-6 " id="locationName" name="location" readonly>
            </div>
          </div>
          <div class="row mb-4">
            <label for="distance" class="col-form-label col-sm-4 text-start">Distance from Pune:</label>
            <div class="col-sm-8">
              <input type="text" class="form-control " id="distance" name="distance" readonly>
            </div>
          </div>
		  <div class="row mb-4">
            <label for="inputAddress" class="col-form-label col-sm-4 text-start">Unavailable Dates For These Event:</label>
            <div class="col-sm-8">
              <label for="inputAddress" class="col-form-label text-start">
                <c:forEach var="date" items="${bookeddate}">
                  ${date}&nbsp;
                </c:forEach>
              </label>
            </div>
          </div>
          <div class="row mb-4">
            <label for="inputAddress" class="col-form-label col-sm-4 text-start">Select Date for Event:</label>
            <div class="col-sm-8">
              <input type="date" class="form-control " name="eventdate" id="inputAddress" required>
            </div>
          </div>
          <div class="row mb-4">
            <label for="name" class="col-form-label col-sm-3 text-start">Total Cost</label>
            <div class="col-sm-3">
            </div>
            <label for="name" class="col-form-label col-sm-3"><span id="totalcost">0</span> &nbsp; &#8377;</label>
            <input type="text" class="form-control " name="total" id="total" hidden>
          </div>
          <div class="col-12">
            <button type="submit" class="text-white rounded px-3 py-2" style="background-color: #13547a;"
              id="create">Register</button>
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
    <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
    <script src="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.js"></script>


</body>

<script>

  let totaldistance;
  function total_rate() {

    let totalchairrate = parseFloat(document.getElementById('totalchairrate').value);
    let totalplaterate = parseFloat(document.getElementById('totalplaterate').value);
    let entertainmentrate = parseFloat(document.getElementById('entertainmentrate').value);
    let decorationrate = parseFloat(document.getElementById('decorationrate').value);
    if (isNaN(totaldistance)) totaldistance = 0;
    let distancerate = totaldistance * 10;

    let Total = totalchairrate + totalplaterate + entertainmentrate + decorationrate + distancerate;



    document.getElementById('totalcost').innerHTML = Total;
    document.getElementById('total').value = Total;


  }
  total_rate();


  // Initialize the map and set its view to Pune
  const map = L.map('map').setView([18.5204, 73.8567], 10);

  // Add a tile layer to the map
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: 'Map data © <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);

  // Add a marker on Pune
  const puneMarker = L.marker([18.5204, 73.8567]).addTo(map)
    .bindPopup('Pune')
    .openPopup();

  // Coordinates for Pune
  const puneCoords = { lat: 18.5204, lon: 73.8567 };

  // Function to calculate distance using Haversine formula
  function calculateDistance(lat1, lon1, lat2, lon2) {
    const R = 6371; // Radius of the Earth in km
    const dLat = (lat2 - lat1) * (Math.PI / 180);
    const dLon = (lon2 - lon1) * (Math.PI / 180);
    const a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
      Math.cos(lat1 * (Math.PI / 180)) * Math.cos(lat2 * (Math.PI / 180)) *
      Math.sin(dLon / 2) * Math.sin(dLon / 2);
    const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
    const distance = R * c;
    return distance;
  }

  // Event listener for map clicks
  map.on('click', async function (e) {

    const lat = e.latlng.lat;
    const lon = e.latlng.lng;

    // Add a marker at the clicked location
    L.marker([lat, lon]).addTo(map);

    // Get the location name using Nominatim API
    const locationName = await getLocationName(lat, lon);

    // Update the location input with the selected coordinates
    document.getElementById('location').value = `Lat: ${lat}, Lon: ${lon}`;

    // Calculate and display the distance from Pune
    const distance = calculateDistance(puneCoords.lat, puneCoords.lon, lat, lon);
    totaldistance = Math.round(distance);
    console.log(totaldistance);

    document.getElementById('distance').value = Math.round(distance);
    document.getElementById('locationName').value = locationName || 'Lat: ' + lat + ', Lon: ' + lon;
    total_rate();
  });

  // Function to get location name from coordinates
  async function getLocationName(lat, lon) {
    const response = await fetch('https://nominatim.openstreetmap.org/reverse?format=jsonv2&lat=' + lat + '&lon=' + lon);
    const data = await response.json();
    return data.display_name;
  }

  // Add Leaflet Control Geocoder to the map
  L.Control.geocoder({
    defaultMarkGeocode: false
  })
    .on('markgeocode', function (e) {
      const locationName = e.geocode.name; // Get the location name
      const latlng = e.geocode.center;
      L.marker(latlng).addTo(map)
        .bindPopup(e.geocode.name)
        .openPopup();

      // Update the location input with the selected coordinates
      document.getElementById('location').value = `Lat: ${latlng.lat}, Lon: ${latlng.lng}`;

      // Calculate and display the distance from Pune
      const distance = calculateDistance(puneCoords.lat, puneCoords.lon, latlng.lat, latlng.lng);
      document.getElementById('distance').value = Math.round(distance);
      totaldistance = Math.round(distance);
      console.log(totaldistance);
      // Display the location name
      document.getElementById('locationName').value = locationName;
      map.setView(latlng, 10);
      total_rate();
    })
    .addTo(map);



  function set_platerate() {
    let platerate = parseFloat(document.getElementById('platerate').value);

    let number = parseFloat(document.getElementById('numberofplate').value);
    if (isNaN(number)) number = 0;

    let totalPlateRate = platerate * number;
    document.getElementById('totalplaterate').value = totalPlateRate;
    document.getElementById('totalplatecost').innerHTML = totalPlateRate;

    total_rate();

  }
  function set_chairrate() {
    let chairrate = parseFloat(document.getElementById('chairrate').value);

    let number1 = parseFloat(document.getElementById('numberofchair').value);
    if (isNaN(number1)) number1 = 0;
    number = Math.ceil(number1 / 100);

    let totalChairRate = chairrate * number;
    document.getElementById('totalchairrate').value = totalChairRate;
    document.getElementById('totalchaircost').innerHTML = totalChairRate;

    total_rate();
  }



</script>

</html>