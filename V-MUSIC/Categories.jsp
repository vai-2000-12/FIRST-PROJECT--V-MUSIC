<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Categories</title>
  <style>
  
    body{
      background-color: rgb(28, 27, 27);
      display: grid;
      justify-items:right;
      background-image: url("images/Z3.jpg");
      background-repeat: no-repeat;
      padding-bottom: 0.5rem;
      scroll-padding-left: 20%;
    }
  

    .flip-card {
      background-color: transparent;
      width: 300px;
      height: 190px;
      border: 1px solid #f1f1f1;
      perspective: 1000px;
      /* Remove this if you don't want the 3D effect */
      margin: 0.1%;
      margin-bottom: 0.1%;
      display: flex;
      overflow-wrap: wrap;
    }

    /* This container is needed to position the front and back side */
    .flip-card-inner {
      position: relative;
      width: 100%;
      height: 100%;
      text-align: center;
      transition: transform 0.5s;
      transform-style: preserve-3d;
    }

    /* Do an horizontal flip when you move the mouse over the flip box container */
    .flip-card:hover .flip-card-inner {
      transform: rotateY(180deg);
    }

    /* Position the front and back side */
    .flip-card-front,
    .flip-card-back {
      position: absolute;
      width: 100%;
      height: 100%;
      -webkit-backface-visibility: hidden;
      backface-visibility: hidden;
    }

    /* Style the front side (fallback if image is missing) */
    .flip-card-front {
      background-color: rgb(190, 246, 127);
      color: black;
      opacity: 3;
    }

    /* Style the back side */
    .flip-card-back {
      background-color: rgb(114, 214, 186);
      color: rgb(73, 139, 11);
      transform: rotateY(180deg);
    }
  </style>
</head>

<body>
  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front">
        <img src="images/music2.jpg" alt="Avatar" style="width:300px;height:200px;">
      </div>
      <div class="flip-card-back">
        <h1><strong>ENGLISH SONGS</strong> </h1>
        <p>By</p>
        <p>V-MUSIC</p>
      </div>
    </div>
  </div>

  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front">
        <img src="images/music3.jpg" alt="Avatar" style="width:300px;height:200px;">
      </div>
      <div class="flip-card-back">
        <h1> <strong>HINDI SONGS</strong> </h1>
        <p>By</p>
        <p>V-MUSIC</p>
        <p>"Music Wohi Jo aapka Dil Chahe.."</p>
      </div>
    </div>
  </div>

  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front">
        <img src="images/music4.jpg" alt="Avatar" style="width:300px;height:200px;">
      </div>
      <div class="flip-card-back">
        <h1> <strong> RINGTONES</strong></h1>
        <p>By</p>
        <p>V-Music</p>
      </div>
    </div>
  </div>

  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front">
        <img src="images/music1.jpg" alt="Avatar" style="width:300px;height:200px;">
      </div>
      <div class="flip-card-back">
        <h1> <strong>ARJIT SINGH SPECIAL</strong></h1>
        <p>By</p>
        <p>V-Music</p>
      </div>
    </div>
  </div>
    
  <a href="Categories2.jsp"><button type="button" class="btn btn-success"
    style="--bs-btn-padding-y: .35rem; --bs-btn-padding-x: .9rem; --bs-btn-font-size: 1.3rem; margin: 15px;">
       NEXT    
     </button></a>


</body>

</html>