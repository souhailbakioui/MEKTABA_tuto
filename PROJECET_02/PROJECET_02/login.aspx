<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="PROJECET_02.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>login-form - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
      <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
     <!-- Site Metas -->
<%--    <title>ProApp - Responsive Landing Page HTML5 Template</title>  --%>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="~/css/bootstrap.min.css"/>
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css"/>    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="~/css/responsive.css"/>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="~/css/custom.css"/>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">

        body {
  margin: 0;
  padding: 0;
  background:url(images/books_library_shelves_collection_120472_1280x1024.jpg);
  height: 100vh;
  background-repeat:no-repeat;
  background-size:cover;
}
#login .container #login-row #login-column #login-box {
  margin-top: 120px;
  max-width: 600px;
  height: 360px;
  border: 1px solid #9C9C9C;
  background-color: #EAEAEA;
}
#login .container #login-row #login-column #login-box #login-form {
  padding: 20px;
  background-color:transparent;
}
#login .container #login-row #login-column #login-box #login-form #register-link {
  margin-top: -85px;
}
    </style>
    <!--<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>-->
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
   <div>
    <header class="header header_style_01">
        <nav class="navbar header-nav navbar-expand-lg">
            <div class="container">
				<a class="navbar-brand" href="index.html"><img src="images/logos/logo-app.png" alt="image"></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarApp" aria-controls="navbarApp" aria-expanded="false" aria-label="Toggle navigation">
					<span></span>
					<span></span>
					<span></span>
				</button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarApp">
                    <ul class="navbar-nav">
                        <li><a class="nav-link" href="HOMME.aspx#home">Home</a></li>
                        <li><a class="nav-link" href="HOMME.aspx#features">Features</a></li>
                       <!--<li><a class="nav-link" href="#download">Download</a></li>--> 
                        <li><a class="nav-link" href="HOMME.aspx#pricing">Pricing</a></li>
                        <li><a class="nav-link" href="HOMME.aspx#clients">Clients</a></li>
                        <li><a class="nav-link" href="HOMME.aspx#faqs">FAQs</a></li>
						<li><a class="nav-link" href="HOMME.aspx#contact">Contact</a></li>
                        <li><a class="nav-link active" href="">Connection</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>


       <div id="login">
        <h3 class="text-center text-white pt-5"></h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <div id="login-form" class="form" action="" method="post">
                            <h3 class="text-center text-info">Login</h3>
                            <br />
                            <center><asp:Label ID="Error_label" runat="server" ForeColor="Red" Text="Les Donnes Incorrect" Visible="False"></asp:Label></center>
                            <div class="form-group">
                                <label for="username"  style="color: #e65100">Username:</label><br>
                                <asp:textbox runat="server" type="email"  id="username" class="form-control"></asp:textbox>
                            </div>
                            <div class="form-group">
                                <asp:label runat="server" ForeColor="#e65100" for="password" >Password:</asp:label><br>
                                   <asp:textbox ForeColor="#e65100" runat="server" type="password"  id="password" class="form-control"></asp:textbox>
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"><span>Remember me</span> <span><asp:CheckBox id="rememberme" runat="server" type="checkbox"/></span>
                           
                                </label><br>
                                <asp:Button BackColor="#e65100" ID="sumbmit" ForeColor="White"  runat="server"  class="btn btn-info btn-md" Text="LOGIN"/>
                            </div>
                            <div id="register-link" class="text-right">
                                <a href="#" class="text-info">Register here</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>





   </div>
    </form>
</body>
</html>
                                
