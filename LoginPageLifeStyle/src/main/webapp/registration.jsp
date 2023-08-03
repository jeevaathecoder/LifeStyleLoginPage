<!DOCTYPE jsp>
<html lang="en">

    <head>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link rel="stylesheet" href="registrationstyle.css" />
      <script src="script.js"></script>
      <title>LifeStyle</title>
    </head>
    <body>
      <div class="container">
        <div class="left">
          <h1><span>Welcome to</span> Life Style</h1>
          <p class="subtitle">"Embrace Your Style, Elevate Your Life"</p>
        </div>
        <div class="right">
          <h2>Register</h2>
          <form method="post" action="register" class="register-form" id="register-form">
          <div class="form-group">
              <label for="name">Name:</label>
              <input type="text" id="name" name="name" />
           </div>
           
           <div class="form-group">
              <label for="username">Username:</label>
              <input type="text" id="username" name="username" />
            </div>
            
            <div class="form-group">
              <label for="email">Email:</label>
              <input type="text" id="email" name="email" />
            </div>
            
            <div class="form-group">
              <label for="contact">Mobile No:</label>
              <input type="text" id="contact" name="contact" />
            </div>
            
            <div class="form-group">
              <label for="pass">Password:</label>
              <input type="password" id="pass" name="pass" />
            </div>
            
            
            <button type="submit" name="register" id="signup" class="form-submit" value="register" >Register</button>
       
            
          </form>
        </div>
      </div>
      <!-- Hidden input field to store the status value from the server -->
<input type="hidden" id="status" value="<%= request.getAttribute("Status") %>">

<script>
 
  document.addEventListener("DOMContentLoaded", function () {
    var status = document.getElementById("status").value;
    if (status === "success") {
     
      alert('Registered Successfully!\nYou have been successfully registered.');
      window.location.href = "login.jsp";
    }
  });
</script>
    </body>
  </html>
</html>