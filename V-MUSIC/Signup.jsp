<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 18%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>

   <% String err_msg = (String)request.getAttribute("Message"); %>
   <%  if(err_msg!= null){ %>
      <div>
         <%= err_msg %>
      </div>    
     <% } %>


<h2>SignUp Form</h2>

<form action="Signup.do" method="post">
  <div class="imgcontainer">
    <img src="images/V-music.png" alt="Avatar" class="avatar">
  </div>
  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <% String err_name = (String)request.getAttribute("uname_err"); %>
    <%  if(err_name!= null){ %>
       <div>
          <%= err_name %>
       </div>    
      <% } %>
 

    <label for="email"><b>Email</b></label>
    <input type="email" placeholder="Enter Email" name="email" required><br><br>

    <% String err_email = (String)request.getAttribute("email_err"); %>
    <%  if(err_email!= null){ %>
       <div>
          <%= err_email %>
       </div>    
      <% } %>


      <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
    
      
    <% String password_err = (String)request.getAttribute("password_err"); %>
    <%  if(password_err!= null){ %>
       <div>
          <%= password_err %>
       </div>    
      <% } %>
        
    <button type="submit">Signin</button>
  </div>

  <div class="container" style="background-color:#f1f1f1">
   
  </div>
</form>
</body>
</html>