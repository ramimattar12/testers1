<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kfarhimstyle.aspx.cs" Inherits="WebApplication1.kfarhimstyle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        #divNavHor {
	        display: inline-block;
            margin: 0;
            text-align: center;
            clear: both;
            border: 0 solid #333333;
	        color: white;
            font-size: 1.2em;
        }
        li{
	        display: inline-block;
	        padding:12px
        }

    </style>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

    <form id="form1" runat="server">

            <nav class="navbar navbar" style="background-color: white; border-color: white;" id="enghide">
                <div class="container-fluid">
                    <div id="toggle" class="navbar-header">
                        <button type="button" style="background-color: black;margin-right: 175px;float: left !important;" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            
                            <span><i class="fas fa-list-ul" style="color:white"></i></span>
<%--                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>--%>
                        </button>
                        <a style="height: 15px;" class="navbar-brand" href="#" ><img alt="Brand" style="height: 80px;" src="images/logo1.png" class="img-responsive" /></a>
                    </div>

                    <div class="collapse navbar-collapse" id="myNavbar">
                        <div class="row">

                        
                                    <div class='col-lg-6 col-xs-6 col-md-6 col-sm-6'>
                                        <ul id="divNavHor" runat="server" class="nav navbar-nav">

                                            <li><a style="color: black;" href="#about">About Us</a></li>
                                            <li><a style="color: black;" href="#">How It Works</a></li>
                                            <li><a style="color: black;" href="#">Why Canada</a></li>
                                            <li><a style="color: black;" href="#">Mission</a></li>

                                        </ul>
                                    </div>
                                    <div class='col-lg-6 col-xs-6 col-md-6 col-sm-6'>
                                    </div>
                         </div>
                    </div>
                </div>
            </nav>

    </form>
</body>
</html>
