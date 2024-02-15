<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      background-color:rgb(31, 33, 32); 
      text-align: center;
      
    }
    
    .flip-card {
      background-color: transparent;
      width: 310px;
      height: 300px;
      perspective: 1000px;
      float:left; /*I just added this positioning.*/
    }
    
    .flip-card-inner {
      position: relative;
      width: 100%;
      height: 100%;
      text-align: center;
      transition: transform 0.6s;
      transform-style: preserve-3d;
      box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    }
    
    .flip-card:hover .flip-card-inner {
      transform: rotateY(180deg);
    }
    
    .flip-card-front, .flip-card-back {
      position: absolute;
      width: 100%;
      height: 100%;
      -webkit-backface-visibility: hidden;
      backface-visibility: hidden;
    }
    
    .flip-card-front {
      background-color: rgb(250, 239, 239);
      color: black;
    }
    
    .flip-card-back {
      background-color: #2980b9;
      color: white;
      transform: rotateY(180deg);
    }
     #A{
        
        margin-top: 3%;
        border: solid 3px rgb(248, 10, 10);
        width: max-content;
        display:flex;

     }
     .flip-card-inner{
       display: flex;
     }

     #B{
        
        margin-top: 2%;
        border: solid 3px rgb(240, 57, 57);
        width: max-content;
        display:flex;

     }
     .flip-card-inner{
       display: flex;
     }

     #C{
        
        margin-top: 2%;
        border: solid 3px rgb(234, 70, 70);
        width: max-content;
        display:flex;

     }
     .flip-card-inner{
       display: flex;
     } 
       
     
    </style>
  
<body>  
    <div id = "A">
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="images/E1.jpg" alt="Avatar" style="width:300px;height:300px;">
        </div>
        <div class="flip-card-back">
          <h1>PUNJABI-SONGS</h1> 
          <p>BY</p> 
          <p>V-MUSIC</p>
        </div>
      </div>
    </div>

    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="images/E2.JPG" alt="Avatar" style="width:300px;height:300px;">
        </div>
        <div class="flip-card-back">
          <h1>GANESH CHATURTHI SPECIAL</h1>
          <p>by</p>
          <p>V-MUSIC</p>  
        </div>
      </div>
    </div>

    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="images/E3.JPG" alt="Avatar" style="width:300px;height:300px;">
        </div>
        <div class="flip-card-back">
          <h1>SONU-NIGAM HITS</h1>
          <p>by</p> 
          <p>V-MUSIC</p> 
          
        </div>
      </div>
    </div>

    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="images/E4.JPG" alt="Avatar" style="width:300px;height:300px;">
        </div>
        <div class="flip-card-back">
          <h1>SHAAN SPECIAL</h1>
          <p>by</p>
          <p>V-MUSIC</p> 
        </div>
      </div>
    </div>


    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="images/E5.JPG" alt="Avatar" style="width:300px;height:300px;">
        </div>
        <div class="flip-card-back">
          <h1>ROMANTIC HITS</h1> 
          <p>V-MUSIC</p> 
        </div>
      </div>
    </div>
  </div>
   
  

  <div id = "B">
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="images/E6.jpg" alt="Avatar" style="width:300px;height:300px;">
        </div>
        <div class="flip-card-back">
          <h1>2022 HITS</h1> 
          <p>by</p> 
          <p>V-MUSIC</p>
        </div>
      </div>
    </div>

    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="images/E7.JPG" alt="Avatar" style="width:300px;height:300px;">
        </div>
        <div class="flip-card-back">
          <h1>LATEST SONGS</h1> 
          <p>by</p> 
          <p>V-MUSIC</p>
        </div>
      </div>
    </div>

    
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="images/E8.JPG" alt="Avatar" style="width:300px;height:300px;">
        </div>
        <div class="flip-card-back">
          <h1>ENGLISH HITS</h1> 
          <p>by</p> 
          <p>V-MUSIC</p>
        </div>
      </div>
    </div>

    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="images/E9.jpg" alt="Avatar" style="width:300px;height:300px;">
        </div>
        <div class="flip-card-back">
          <h1>REMIX SONGS</h1> 
          <p>by</p> 
          <p>V-MUSIC</p>
        </div>
      </div>
    </div>


    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="images/E10.JPG" alt="Avatar" style="width:300px;height:300px;">
        </div>
        <div class="flip-card-back">
          <h1>ARMAAN MALIK HITS</h1> 
          <p>by</p> 
          <p>V-MUSIC</p>
        </div>
      </div>
    </div>
  </div>


  <div id = "C">
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="images/E11.JPG" alt="Avatar" style="width:300px;height:300px;">
        </div>
        <div class="flip-card-back">
          <h1> RINGTONES  </h1> 
          <p>by</p> 
          <p>V-MUSIC</p>
        </div>
      </div>
    </div>

    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="images/E13.JPG" alt="Avatar" style="width:300px;height:300px;">
        </div>
        <div class="flip-card-back">
          <h1>SHANKAR-MAHADEVAN SPECIAL</h1> 
          <p>by</p> 
          <p>V-MUSIC</p>
        </div>
      </div>
    </div>

    
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="images/E12.JPG" alt="Avatar" style="width:300px;height:300px;">
        </div>
        <div class="flip-card-back">
          <h1> PODCASTS </h1> 
          <p>by</p> 
          <p>V-MUSIC</p>
        </div>
      </div>
    </div>

    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="images/E14.JPG" alt="Avatar" style="width:300px;height:300px;">
        </div>
        <div class="flip-card-back">
          <h1>RAHMAN-retrOspective</h1> 
          <p>by</p> 
          <p>V-MUSIC</p>
        </div>
      </div>
    </div>


    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="images/E15.JPG" alt="Avatar" style="width:300px;height:300px;">
        </div>
        <div class="flip-card-back">
          <h1>INSTRUMENTAL-MUSIC</h1> 
          <p>by</p> 
          <p>V-MUSIC</p>
        </div>
      </div>
    </div>
  </div>
   
  <a href="About Us.jsp"><button type="button" class="btn btn-success"
    style="--bs-btn-padding-y: .35rem; --bs-btn-padding-x: .9rem; --bs-btn-font-size: 1.3rem; margin: 15px;">
       NEXT-PAGE    
     </button></a>
   
   
   
    </body>
    </html>>