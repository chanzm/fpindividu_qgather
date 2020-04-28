<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="icon" href="img/logo1.png" type="image/x-icon" />
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Q-Gather</title>

        <!-- Icon css link -->
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        
        <!-- Rev slider css -->
        <link href="vendors/revolution/css/settings.css" rel="stylesheet">
        <link href="vendors/revolution/css/layers.css" rel="stylesheet">
        <link href="vendors/revolution/css/navigation.css" rel="stylesheet">
        
        <!-- Extra plugin css -->
        <link href="vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
        <link href="vendors/magnify-popup/magnific-popup.css" rel="stylesheet">
        
        
        <link href="css/style.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        
        <!--================Header Menu Area =================-->
        <header class="main_menu_area">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">
                    <img src="img/logos.png" class="img-fluid" style="width: 70px;height: 70px" alt="">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav">
<!--                         <li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li> -->
<!--                         <li class="nav-item active dropdown submenu">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Account
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li class="nav-item"><a class="nav-link" href="blog.html">Logout</a></li>
                            </ul>
                        </li> -->
                        {% if (session.get('user')['username']) %}
                        <li class="nav-item active">
                            <a href="/dashboard">Hi, {{ session.get('user')['username'] }} !</a>
                        </li>
                        {% endif %}
<!--                         <li class="nav-item"><a class="nav-link" href="about-us.html">About Us</a></li>
                        <li class="nav-item"><a class="nav-link" href="service.html">Services</a></li> -->
                        <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>                       

                    </ul>
                </div>
            </nav>
        </header>
        <!--================End Header Menu Area =================-->
        
        
        <!--================Slider Area =================-->
        <section class="main_slider_area">
            <section class="service_feature">
                <div class="container">
                    <div class="row feature_inner">
                        <div class="col-lg-4 col-sm-3">
                            <div class="feature_item" style="padding: 10px;box-shadow: 5px 10px;">
                                <div class="box">
                                    <img src="images/kertajaya.jpg" alt="" class="img-thumbnail">
                                </div>
                                <h4> {{ wil1.nama_wilayah }}</h4><hr>
                                <a class="more_btn" href="dashboard/cek/{{wil1.id_wilayah}}" >Click Here</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-3">
                            <div class="feature_item" style="padding: 10px;box-shadow: 5px 10px;">
                                <div class="box">
                                    <img src="images/merr.jpg" alt="" class="img-thumbnail">
                                </div>
                                <h4>{{ wil2.nama_wilayah }}</h4><hr>
                                <a class="more_btn" href="dashboard/cek/{{wil2.id_wilayah}}">Click Here</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-3">
                            <div class="feature_item" style="padding: 10px;box-shadow: 5px 10px;">
                                <div class="box">
                                    <img src="images/mulyos.jpg" alt="" class="img-thumbnail">
                                </div>
                                <h4>{{ wil3.nama_wilayah }}</h4><hr>
                                <a class="more_btn" href="dashboard/cek/{{wil3.id_wilayah}}">Click Here</a>
                            </div>
                        </div>
                    </div> 
                    <!-- ini row feature --><br><br>

                    <div class="row feature_inner">
                        <div class="col-lg-6 col-sm-2">
                            <div class="feature_item" style="padding: 10px;box-shadow: 5px 10px;">
                                <div class="box">
                                    <img src="images/gebang.jpg" alt="" class="img-thumbnail">
                                </div>
                                <h4>{{ wil4.nama_wilayah }}</h4><hr>
                                <a class="more_btn" href="dashboard/cek/{{wil4.id_wilayah}}">Click Here</a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-2">
                            <div class="feature_item" style="padding: 10px;box-shadow: 5px 10px">
                                <div class="box">
                                    <img src="images/keputih.jpg" alt="" class="img-thumbnail">
                                </div>
                                <h4>{{ wil5.nama_wilayah }}</h4><hr>
                                <a class="more_btn" href="dashboard/cek/{{wil5.id_wilayah}}">Click Here</a>
                            </div>
                        </div>
                    </div> 
                    <!-- ini row fiture inner --><br>

                    </div>
                </div>
            </section>
        </section>
        
        <!--================Footer Area =================-->
        <footer class="footr_area" style="text-align: center;color: white">
            <div class="footer_copyright">
                Copyright © 2020 <strong><span><a href="#">Q-Gather</a></span></strong> . All Rights Reserved  
            </div>
        </footer>
        <!--================End Footer Area =================-->
        
        
        
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery-3.2.1.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- Rev slider js -->
        <script src="vendors/revolution/js/jquery.themepunch.tools.min.js"></script>
        <script src="vendors/revolution/js/jquery.themepunch.revolution.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.video.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <!-- Extra plugin css -->
        <script src="vendors/counterup/jquery.waypoints.min.js"></script>
        <script src="vendors/counterup/jquery.counterup.min.js"></script> 
        <script src="vendors/counterup/apear.js"></script>
        <script src="vendors/counterup/countto.js"></script>
        <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="vendors/magnify-popup/jquery.magnific-popup.min.js"></script>
        <script src="js/smoothscroll.js"></script>
        
        <script src="js/theme.js"></script>
    </body>
</html>

<!-- warna abu2: #8F8F92; footer : #11173b -->