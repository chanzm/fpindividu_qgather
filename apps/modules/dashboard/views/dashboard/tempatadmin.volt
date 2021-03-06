<!DOCTYPE html>
<html lang="en">
    <head>
    	<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	
    	<link rel="icon" href="../../img/logo1.png" type="image/x-icon" />
    	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    	<title>Q-Gather</title>

        <!-- Icon css link -->
        <link href="../../css/font-awesome.min.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="../../css/bootstrap.min.css" rel="stylesheet">
        
        <!-- Rev slider css -->
        <link href="../../vendors/revolution/css/settings.css" rel="stylesheet">
        <link href="../../vendors/revolution/css/layers.css" rel="stylesheet">
        <link href="../../vendors/revolution/css/navigation.css" rel="stylesheet">
        
        <!-- Extra plugin css -->
        <link href="../../vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
        <link href="../../vendors/magnify-popup/magnific-popup.css" rel="stylesheet">
        
        
        <link href="../../css/style.css" rel="stylesheet">
        <link href="../../css/responsive.css" rel="stylesheet">

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
                    <img src="../../img/logos.png" class="img-fluid" style="width: 70px;height: 70px" alt="">
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
                      <!--   <li class="nav-item active"><a class="nav-link" href="#">Account</a></li> -->
                        {% if (session.get('admin')['username']) %}
                        <li>
                            <a  class="nav-link" href="../../dashboardadm">Hai, {{ session.get('admin')['username'] }} !</a>
                        </li>
                        {% endif %}
<!--                       <li class="nav-item"><a class="nav-link" href="about-us.html">About Us</a></li>
                        <li class="nav-item"><a class="nav-link" href="service.html">Services</a></li> -->
                        <li class="nav-item active"><a href="/dashboard/adm/listusr">List User</a></li>
                        <li class="nav-item"><a class="nav-link" href="/dashboard/adm/request">Permintaan Rekomendasi</a></li>
                        <li class="nav-item"><a class="nav-link" href="../../logout">Logout</a></li>                       

                    </ul>
                </div>
            </nav>
        </header>
        <!--================End Header Menu Area =================-->        <!--================Banner Area =================-->
        <section class="banner_area">
            <div class="container">
                <div class="row banner_inner_text">
                    <div class="col-md-1">
                        <h4><br></h4>
                        <a href="../../dashboardadm"><img src="../../img/icon/back.png"></a>
                    </div>
                    <div class="col-md-11">
                        <h2>Beautiful Place</h2>
                        <p>Recommended place here</p>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Banner Area =================-->
        
        <!--================Blog Main Area =================-->
 <div class="container">
     <div class="row">
         <div class="col-lg-12">
                     <div class="text-center">
                         <a class="more_btn" href="../../rekomadm/{{wil.id_wilayah}}">Add Place</a>
             </div>
         </div>
 </div>      

   {% for t in tmpt %}     
        <section class="blog_main_area p_100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <div class="blog_main_inner">
                            <div class="blog_main_item">
                                <div class="blog_img">
                                    <img class="img-fluid" src="../../images/rekom/{{t.foto}}" alt="">
                                    <div class="blog_date">
                                        <h4>{{t.avg_rate}}</h4>
                                        <h5>Average Rated</h5>
                                    </div>
                                </div>
                                <div class="blog_text">
                                    <a href="#"><h4>{{t.nama_tempat}}</h4></a>
                                    <div class="blog_author">
                                    	<h6>{{t.alamat}}</h6>
                                        <a href="#">Ig : {{t.ig}}</a>
                                        <a href="#">Fb : {{t.fb}}</a>
                                    </div>
                                    <p>{{t.deskripsi}}</p>
                                    <a class="more_btn" href="../../detailadmin/{{t.id_tempat}}">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>

          <!--       <nav aria-label="Page navigation example" class="pagination_area">
                    <ul class="pagination">
                        <li class="page-item active"><a class="page-link" href="#">01.</a></li>
                        <li class="page-item"><a class="page-link" href="#">02.</a></li>
                        <li class="page-item"><a class="page-link" href="#">03.</a></li>
                        <li class="page-item"><a class="page-link" href="#">04.</a></li>
                    </ul>
                </nav> -->
            </div>
        </section>
        {% endfor %}
        <!--================End Blog Main Area =================-->
       
        <!--================Footer Area =================-->
        <footer class="footr_area" style="text-align: center;color: white">
            <div class="footer_copyright">
                Copyright © 2020 <strong><span><a href="#">Q-Gather</a></span></strong> . All Rights Reserved  
            </div>
        </footer>
        <!--================End Footer Area =================-->
        
        
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="../../js/jquery-3.2.1.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="../../js/popper.min.js"></script>
        <script src="../../js/bootstrap.min.js"></script>
        <!-- Rev slider js -->
        <script src="../../vendors/revolution/js/jquery.themepunch.tools.min.js"></script>
        <script src="../../vendors/revolution/js/jquery.themepunch.revolution.min.js"></script>
        <script src="../../vendors/revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script src="../../vendors/revolution/js/extensions/revolution.extension.video.min.js"></script>
        <script src="../../vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script src="../../vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script src="../../vendors/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script src="../../vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <!-- Extra plugin css -->
        <script src="../../vendors/counterup/jquery.waypoints.min.js"></script>
        <script src="../../vendors/counterup/jquery.counterup.min.js"></script> 
        <script src="../../vendors/counterup/apear.js"></script>
        <script src="../../vendors/counterup/countto.js"></script>
        <script src="../../vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="../../vendors/magnify-popup/jquery.magnific-popup.min.js"></script>
        <script src="../../js/smoothscroll.js"></script>
        <script src="../../vendors/circle-bar/circle-progress.min.js"></script>
        <script src="../../vendors/circle-bar/plugins.js"></script>
        <script src="../../vendors/isotope/imagesloaded.pkgd.min.js"></script>
        <script src="../../vendors/isotope/isotope.pkgd.min.js"></script>
        
        <script src="../../js/circle-active.js"></script>
        <script src="../../js/theme.js"></script>
    </body>
</html>