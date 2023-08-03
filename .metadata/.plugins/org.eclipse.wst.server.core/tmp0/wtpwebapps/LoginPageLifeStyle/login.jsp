
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link rel="stylesheet" href="loginstyle.css" />
      <script src="script.js"></script>
      <title>LifeStyle</title>
    </head>
    <body>
       <input type="hidden" id="status" value="<%= request.getAttribute("Status") %>">
      <div class="container">
        <div class="left">
          <h1><span>Welcome to</span> Life Style</h1>
          <p class="subtitle">Learn the New Technologies with us.</p>
        </div>
        <div class="right">
          <h2>Login</h2>
          <form action="login"  method="post" >
	
		 <div class="form-group">
              <label for="username">Username:</label>
              <input type="text" id="username" name="username" />
            </div>
            <div class="form-group">
              <label for="password">Password:</label>
              <input type="password" id="password" name="pass" />
            </div>
            <button type="submit" name="login" id="sign-in" class="form-submit" value="login" >Login</button>
    
            
          </form>
          <a href="registration.jsp" class="createaccount">New user? Create an account</a>
        </div>
      </div>
      <script>
  // Wait for the DOM to be fully loaded before accessing the "status" element
  document.addEventListener("DOMContentLoaded", function () {
    var status = document.getElementById("status").value;
    if (status === "failed") {
      // Display a success alert using a regular JavaScript alert()
      alert('Wrong Details !\nPlease Try Again.');
      window.location.href = "login.jsp";
    }
  });
</script>
 
    </body>
  </html>
</html>