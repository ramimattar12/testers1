<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .centered {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
        }
        /*.navbar-brand>img {
           max-height: 100%;
           height: 100%;
           width: auto;
           margin: 0 auto;


           -o-object-fit: contain;
           object-fit: contain; 

        }*/

    </style>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
    <%---inverse--%>
    <form id="form1" runat="server">
        <div id="canada" >
            <nav class="navbar navbar" style="background-color: white; border-color: white;" id="enghide">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" style="background-color: black;margin-top: 30px;" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span><i class="fas fa-list-ul" style="color:white;font-size: 25px;"></i></span>
                        </button>
                        <a class="navbar-brand" href="#" style="margin-bottom: 50px;"><img alt="Brand" style="height: 80px;" src="images/download.png" class="img-responsive" /></a>
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

            <div class='row'>


                <div class='col-xs-12 col-md-12 col-sm-12' style="background-image: url(images/download.jpg); height: 700px; width: 100%; background-repeat: no-repeat; background-position: center; background-size: cover;">

                    <div class="centered">

                        <h4 style="color: white">YOUR GUIDE</h4>
                        <h1 style="color: white">TO CANADA</h1>
                        <input style="background-color: transparent; padding: 15px 32px; margin-top: 62px; color: white;" type="button" value="FREE ASSESSMENT" />

                    </div>



                </div>

            </div>
            <div class='row' id="about">
                <div class='col-xs-12 col-md-12 col-sm-12'>

                    <div class='row' style='padding-top: 22px;'>


                        <div class='col-xs-12 col-md-12 col-sm-12' style='color: black; font-size: 50px; text-align: center'>About Us</div>
                        <div class='col-xs-12 col-md-12 col-sm-12'>
                            <div style='border-radius: 20%; width: 10%; margin: auto; border-bottom: solid 4px black;'></div>
                        </div>



                    </div>
                    <div class='row' style='padding-top: 22px;'>
                        <div class='col-lg-2 col-xs-12 col-md-12 col-sm-12'>
                        </div>
                        <div class='col-lg-4 col-xs-12 col-md-12 col-sm-12'>
                            <p>Did you know that Canada is the second-largest country in the world at 10 million square kilometers. It is only surpassed by Russia in terms of land size.</p>
                            <p>Canada is a federal country with a parliamentary democracy. This means that the Canadian people elect representatives to the House of Commons in Ottawa (the capital of the country). Elections are run by an arms-length oranization to the government called Elections Canada.  Canada is also a constitutional monarchy, which means that technically the Queen of England is still the “head of state” of Canada. In practise however, the Queen has very little to do with Canada legally, as her powers are vested in the Lieutenant Governor in Canada. However, there could in theory be some very unusual circumstances where the Queen would have to exercise her power in Canada, but that would be rare indeed.</p>
                            <p>Canada was created as a federal dominion and shook off its colonial status in 1867 under the British North America Act. This first dominion consisted of four provinces, with six other provinces added later over time, along with three territories. The last province to join Canada (and leave its British rulers) was Newfoundland in 1949.</p>
                        </div>
                        <div class='col-lg-4 col-xs-12 col-md-12 col-sm-12'>
                            <img style="width: 100%" src="images/images.jpg" />
                        </div>
                        <div class='col-lg-2 col-xs-12 col-md-12 col-sm-12'>
                        </div>

                    </div>

                </div>

            </div>
        </div>
    </form>
</body>
</html>
