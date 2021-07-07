<%@ Page Language="C#" AutoEventWireup="true"  EnableEventValidation="false" CodeBehind="LIVRES.aspx.cs" Inherits="PROJECET_02.LIVRES" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<html lang="en">
    
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        .nav{
            width:100%;
        }

          .all{
          width:100%;
         display:flex;
        flex-wrap:wrap;
       
        }


        .Card{
            width:32%; 
            float:left;
            padding:3px;
           

        }
        .Card img{
            width:50%;
        }
        .logout{
            margin-left: 1171%;
        }
        body{
            /*background:url('images/books_shelf_stairs_125930_3840x2400.jpg');
            background-repeat:no-repeat;
            background-size:cover;*/
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <%-- <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>

 
</head>
<body>
  

    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
  <%--  <div class="col-sm-9">--%>
            <%--<ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
                <li><a data-toggle="tab" href="#messages">Menu 1</a></li>
                <li><asp:LinkButton ID="btnLivre" runat="server" data-toggle="tab" href="#settings" >LIVRE</asp:LinkButton></li>
              </ul>--%>


        <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Profail <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
       <%-- <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Categoie
          <asp:Button ID="Button1" runat="server"  Text="Button" />
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          
          <asp:Button runat="server" ID="romain" class="dropdown-item" href="#" Text="Romain" OnClick="Button1_Click"/>
            <asp:Button runat="server" ID="Historique" class="dropdown-item" href="#" Text="1" OnClick="Button1_Click" />
            <asp:Button runat="server" ID="Philosophie" class="dropdown-item" href="#" Text="2" OnClick="Button1_Click"/>
            <asp:Button runat="server" ID="Cuisine" class="dropdown-item" href="#" Text="3" OnClick="Button1_Click" />
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>--%>
    <a>     <asp:DropDownList class="dropdown-menu" aria-labelledby="navbarDropdown" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nom_Cat"></asp:DropDownList></a> 
          <asp:DropDownList ID="DropDownList2" runat="server" ss="dropdown-menu" aria-labelledby="navbarDropdown" DataSourceID="SqlDataSource2" DataTextField="Nom_Cat" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
          
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnectionString %>" SelectCommand="SELECT [Nom_Cat] FROM [Categorie]"></asp:SqlDataSource>
          
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnectionString %>" SelectCommand="SELECT [Nom_Cat] FROM [Categorie]"></asp:SqlDataSource>

          
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Emprunts</a>
      </li>
         <li><a class="nav-link" href="#">LOGOUT</a></li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <asp:TextBox runat="server" ID="sherche" class="form-control mr-sm-2" t placeholder="Search" aria-label="Search"/>
      <asp:Button class="btn btn-outline-success my-2 my-sm-0"  runat="server" ID="find" Text="Chercher" OnClick="find_Click"/>

    </form>
   
  </div>
</nav>
     <%--   <asp:image runat="server" ImageUrl="IMAGELIVRE/Thus_Spoke_Zarathustra.jpg"></asp:image>--%>
      
      <div id="items" runat="server"></div>  

    </div>
    </form>
</body>
</html>

