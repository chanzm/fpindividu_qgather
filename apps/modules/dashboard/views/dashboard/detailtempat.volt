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
                                {% if (session.get('user')['username']) %}
                                <li class="nav-item active">
                                    <a class="nav-link" href="/dashboard">Hi, {{ session.get('user')['username'] }} !</a>
                                </li>
                                {% endif %}
        <!--                         <li class="nav-item"><a class="nav-link" href="about-us.html">About Us</a></li>
                                <li class="nav-item"><a class="nav-link" href="service.html">Services</a></li> -->
                                <li class="nav-item"><a class="nav-link" href="../../logout">Logout</a></li>                       

                            </ul>
                        </div>
                    </nav>
                </header>
                <!--================End Header Menu Area =================-->
        <!--================Banner Area =================-->
        {% for d in det %}
        <section class="banner_area">
            <div class="container">
                <div class="row banner_inner_text">
                    <div class="col-md-1">
                        <h4><br></h4>
                        <a href="../dashboard/cek/{{ d['id_wilayah'] }}"><img src="../../img/icon/back.png"></a>
                    </div>
                    <div class="col-md-11">
                        <h2>{{ d['nama_tempat'] }} 's Place</h2>
                        <p>All about this place</p>
                    </div>                   
                </div>
            </div>
        </section>
        <!--================End Banner Area =================-->
        
        <!--================Blog Main Area =================-->
       
        <!--================Blog Main Area =================-->
        <section class="blog_main_area p_100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="single_blog_inner">
                            <div class="s_blog_main">
                            
                                <div class="blog_img">
                                    <img class="img-fluid" src="../../images/rekom/{{d['foto']}}" alt="">
                                    <div class="blog_date">
                                        <h4>{{d['avg_rate']}}</h4>
                                        <h5>Average Rated</h5>
                                    </div>
                                </div>
                           
                                <div class="blog_text">
                                    <a href="#"><h4>{{d['nama_tempat']}}</h4></a>
                                    <div class="blog_author">
                                        <a href="#">Ig : {{d['ig']}}</a>
                                        <a href="#">Fb : {{d['fb']}}</a>
                                    </div>
                                    <p>{{d['deskripsi']}}</p>
                                    <p><strong>ALAMAT:</strong><br>{{d['alamat']}} </p>
                                    <p><strong>OPEN:</strong><br>{{d['jam_buka']}} </p> 
                                    <p><strong>PRICE:</strong><br>{{d['harga']}} </p>
                                    <p><strong>MENUS:</strong><br>{{d['menu']}} </p>
                                    <p><strong>GET IN TOUCH WITH US ON:</strong><br>{{d['telepon']}} </p>
                                </div>
                            </div>
                            <div class="s_blog_social">
                                <h3>Share</h3>
                                <ul>
                                    <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                            <div class="blog_author">
                                <div class="media">
                                    <div class="d-flex">
                                        <img class="rounded-circle" src="../../img/blog/me1.jpg" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Ms.Chaniyah, <span>Admin</span></h4>
                                        <p> Hi, what do you think about this place ? </p>
                                    </div>
                                </div>
                            </div>
                            {% endfor %}
                              
                            <div class="blog_comment">
                                {% for j in jumlah %}
                                <h3>Reviews ({{j['jml']}})</h3>
                                {% endfor %}
                                  {% for t in rev %}
                            <div class="blog_comment">
                                <div class="media">
                                    <img src="../../img/comment/userp.png" alt="">
                                    <div class="d-flex">
                                        <h4>{{t['nama_usr']}}</h4>
                                        <h5>{{t['tgl_visit']}}</h5>
                                         {% if session.get('user')['id_usr']==t['id_usr'] %}
                                         <a href="../../hapusreview/{{t['id_review']}}" style="font-size: 12px;color: black">Delete</a>
                                         {% else %}
                                             
                                         {% endif %}
                                    </div>
                                    <div class="media-body">
                                        <p>{{t['comment']}}</p>
                                        <p><img src="../../img/icon/star.png"> {{t['nilai']}}</p>                              
                                    </div>
                                    {% if t['foto_rev'] %}
                                    <div class="media-body">
                                    <!--     <p>Photo</p> -->
                                        <p><img class="img-thumbnail" src="../../images/review/{{t['foto_rev']}}" style="max-width: 100px;max-height: 100px" alt=""></p>
                                    </div>
                                    {% else %}
                                        
                                    {% endif %}
                                </div>
                            </div>
                          
                           {% endfor %}

                           {% for d in det %}
                            <div class="blog_comment_form">
                                <h3>Review Us</h3>
                                <form class="row contact_us_form" action="../../review" method="post" id="contactForm" novalidate="novalidate" enctype='multipart/form-data'>
                                    <!-- <div class="form-group">
                                      <input type="hidden" class="form-control" name="id_peristiwa" value="<?php echo $y->id_peristiwa?>">
                                    </div> -->
                                    <div class="form-group col-sm-6">
                                        <input type="hidden" class="form-control" id="id_review" name="id_review" value="">
                                    </div>
                                    <div class="form-group col-sm-6">
                                        <input type="hidden" class="form-control" id="id_tempat" name="id_tempat" value="{{d['id_tempat']}}">
                                    </div>
                                    <div class="form-group col-sm-6">
                                        <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama">
                                    </div>
                                    <div class="form-group col-sm-6">
                                        <input type="text" class="form-control" id="nilai" name="nilai" placeholder="Rate (1-10)">
                                    </div>
                                    <div class="form-group col-sm-12">
                                        <input type="text" class="form-control" id="tgl_visit" name="tgl_visit" placeholder="Tanggal Kunjungan (Ex : Oct,09 2020)">
                                    </div>
                                    <div class="form-group col-sm-12">
                                        <textarea class="form-control" name="comment" id="comment" placeholder="Write your review"></textarea>
                                    </div>
                                    <div class="form-group col-sm-12"><br>
                                        <p style="font-size: 12px;color: #a5bbd0;font-style: italic;font-family: "Open Sans", sans-serif">Upload Image</p>
                                        <input type="file" class="input-large span10" id="foto_rev" name="foto_rev" placeholder="Upload Image">

                                    </div>
                         <!--            <div style="margin-left:20%" class="input-prepend" title="Identitas Penyewa"> <span class="add-on"><i class="halflings-icon user"></i></span>
                                      <input class="input-large span10" name="upload_identitas_peny" id="upload_identitas_peny" type="file"/>
                                    </div> -->
                                    <div class="form-group col-sm-12">
                                        <button type="submit" value="submit" class="btn submit_btn form-control">Send</button>
                                    </div>
                                </form>
                            </div>
                            {% endfor %}
                        </div>
                    </div>
     <!--                <div class="col-lg-4">
                        <div class="blog_right_sidebar">

                        </div>
                    </div> -->
                </div>
            </div>
        
        </section>
       
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
