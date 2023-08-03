
<%
if(session.getAttribute("username") == null){
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Lifestyle Store</title>
    <link rel="stylesheet" href="css/style1.css" type="text/css"/>
</head>
<body>
    <div class="header">
        <div class="inner-header" method=get action="logout">
            <div class="logo">Lifestyle store</div>
            <a href="logout" class="header-link">Logout <%=session.getAttribute("username")%></a>
        </div>
    </div>
    <div class="content">
        <div class="banner-image">
            <div class="inner-banner-image">
                <div class="banner_content">
                    <h2>We sell lifestyle</h2>
                    <p>Flat 40% OFF on premium brands</p>
                    <p class="button">shop now</p>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="items">
                <a href="#">
                    <img src="css/camera.jpg" alt="" class="thumbnail">
                    <div class="caption">
                        <h2>Cameras</h2>
                        <p>Choose among the best available in the world.</p>
                    </div>
                </a>
            </div>
            <div class="items">
                <a href="#">
                    <img src="css/watch.jpg" alt="" class="thumbnail">
                    <div class="caption">
                        <h2>Watches</h2>
                        <p>Original watches from the best brand.</p>
                    </div>
                </a>
            </div>
            <div class="items">
                <a href="#">
                    <img src="css/shirt.jpg" alt="" class="thumbnail">
                    <div class="caption">
                        <h2>Shirts</h2>
                        <p>Our exquisite collection of shirts.</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <footer style="background-color: #000; color:#fff; font-size:14px;">
        <div class="container">
            <p>Copyright @ Jeevaathecoder. All Rights Reserved | Contact Us: +91 97894 60093</p>
        </div>
    </footer>
</body>
</html>
