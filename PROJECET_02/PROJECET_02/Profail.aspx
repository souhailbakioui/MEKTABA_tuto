﻿
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profail.aspx.cs" Inherits="PROJECET_02.Profail" %>

<!DOCTYPE html>
<script runat="server">


</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<html lang="en">

    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 
</head>
<body>
    <form id="form1" runat="server">
    <div>

 <div class="container bootstrap snippet">
    <div class="row">
  	<!--	<div class="col-sm-10"><h1>User name</h1></div>
    	<div class="col-sm-2"><a href="/users" class="pull-right"><img title="profile image" class="img-circle img-responsive" src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a></div>
      --></div>
    <div class="row">
  		<div class="col-sm-3"><!--left col-->
              

      <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>Upload a different photo...</h6>
        <input type="file" class="text-center center-block file-upload">
      </div></hr><br>

               
          <div class="panel panel-default">
            <div class="panel-heading">Website <i class="fa fa-link fa-1x"></i></div>
            <div class="panel-body"><a href="http://bootnipets.com">bootnipets.com</a></div>
          </div>
          
          
          <ul class="list-group">
            <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>
                <asp:Label ID="Label1" runat="server" Text="Avertissement"></asp:Label>
                </strong></span>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>
                <asp:Label ID="Label3" runat="server" Text="NBR_LivreEmprunt"></asp:Label>
                </strong></span>&nbsp;<asp:Label ID="NBR_LivreEmprunt" runat="server" Text="Label"></asp:Label>
              </li>
            <li class="list-group-item text-right"><span class="pull-left" id="NBR_LivreActive"><strong>
                <asp:Label ID="Label4" runat="server" Text="NBR_LivreActive"></asp:Label>
                </strong></span>&nbsp;<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
              </li>
            <li class="list-group-item text-right"><span class="pull-left">
                <asp:Label ID="Label6" runat="server" Text="Note(s)"></asp:Label>
                </span> 
                <asp:Label ID="Notes" runat="server" Text="Label"></asp:Label>
&nbsp;</li>
          </ul> 
               
          <div class="panel panel-default">
            <div class="panel-heading">Social Media</div>
            <div class="panel-body">
            	<i class="fa fa-facebook fa-2x"></i> <i class="fa fa-github fa-2x"></i> <i class="fa fa-twitter fa-2x"></i> <i class="fa fa-pinterest fa-2x"></i> <i class="fa fa-google-plus fa-2x"></i>
            </div>
          </div>
          
        </div><!--/col-3-->
    	<div class="col-sm-9">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
                <li><a data-toggle="tab" href="#messages">Menu 1</a></li>
                <li><asp:LinkButton ID="btnLivre" runat="server" data-toggle="tab" href="#settings" OnClick="btnLivre_Click">LIVRE</asp:LinkButton></li>
              </ul>
        
            

              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                  <form class="form" action="##" method="post" id="registrationForm">
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>First name</h4></label>
                              <asp:Textbox type="text" runat="server" class="form-control" id="first_name" placeholder="first name" title="enter your first name if any."/>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>Last name</h4></label>
                              <asp:Textbox runat="server" type="text" class="form-control"  id="last_name" placeholder="last name" title="enter your last name if any."/>
                          </div>
                      </div>
          
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="phone"><h4>Phone</h4></label>
                              <asp:textbox runat="server" type="phone" class="form-control"  id="phone" placeholder="enter phone" title="enter your phone number if any."/>
                          </div>
                      </div>
          
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Mobile</h4></label>
                              <asp:textbox runat="server" type="text" class="form-control"  id="mobile" placeholder="enter mobile number" title="enter your mobile number if any."/>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Email</h4></label>
                              <asp:textbox runat="server" type="email" class="form-control" id="email" placeholder="you@email.com" title="enter your email."/>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Location</h4></label>
                              <asp:textbox runat="server" type="email" class="form-control" id="location" placeholder="somewhere" title="enter a location"/>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="password"><h4>Password</h4></label>
                              <input type="password" class="form-control" name="password" id="password" placeholder="password" title="enter your password.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="password2"><h4>Verify</h4></label>
                              <input type="password" class="form-control" name="password2" id="password2" placeholder="password2" title="enter your password2.">
                          </div>
                      </div>
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div>
              	</form>
              

          </div>
    </form>
    </body>
    </html>
