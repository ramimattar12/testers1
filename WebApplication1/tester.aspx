<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tester.aspx.cs" Inherits="WebApplication1.tester" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>



    </style>

    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

    <form id="form1" runat="server">
    <div>
            <nav class="navbar navbar-inverse" style="background-color: white; border-color: white;" id="enghide">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" style="background-color: black;margin-top: 30px;" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#" style="margin-bottom: 50px;"><img alt="Brand" style="height: 80px;" src="images/logo1.png" class="img-responsive" /></a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <div class="row">
                                    <div class='col-lg-6 col-xs-6 col-md-6 col-sm-6'>
                                    </div>
                        
                                    <div class='col-lg-6 col-xs-6 col-md-6 col-sm-6'>
                                        <ul id="divNavHor" runat="server" class="nav navbar-nav navbar-right" style="padding-top: 42px;">

                                            <li><a style="color: black;" href="#about">About Us</a></li>
                                            <li><a style="color: black;" href="#">How It Works</a></li>
                                            <li><a style="color: black;" href="#">Why Canada</a></li>
                                            <li><a style="color: black;" href="#">Mission</a></li>

                                        </ul>
                                    </div>
                         </div>
                    </div>
                </div>
            </nav>
    </div>
    </form>
</body>
</html>
