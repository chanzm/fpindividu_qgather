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
        
        <!-- Extra p../../lugin css -->
        <link href="../../vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
        <link href="../../vendors/magnify-popup/magnific-popup.css" rel="stylesheet">
        
        
        <link href="../../css/style.css" rel="stylesheet">
        <link href="../../css/responsive.css" rel="stylesheet">

         <link rel="stylesheet" href="../../asset/bower_components/font-awesome/css/font-awesome.min.css">
         <!-- Ionicons -->
         <link rel="stylesheet" href="../../asset/bower_components/Ionicons/css/ionicons.min.css">
           <!-- DataTables -->
         <link rel="stylesheet" href="../../asset/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css"> 
         <!-- Theme style -->
         <link rel="stylesheet" href="../../asset/dist/css/AdminLTE.min.css">
         <!-- AdminLTE Skins. Choose a skin from the css/skins
              folder instead of downloading all of them to reduce the load. -->
         <link rel="stylesheet" href="../../asset/dist/css/skins/_all-skins.min.css">
         <script src="../../asset/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
        <link rel="stylesheet" href="../../asset/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css"> 

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
                        <li class="nav-item"><a href="/dashboard/adm/listusr">List User</a></li>
                        <li class="nav-item active"><a class="nav-link" href="/dashboard/adm/request">Permintaan Rekomendasi</a></li>
                        <li class="nav-item"><a class="nav-link" href="../../logout">Logout</a></li>                       

                    </ul>
                </div>
            </nav>
        </header>
        <!--================End Header Menu Area =================-->
        
        <!--================Slider Area =================-->
        <section class="main_slider_area">

 	    	<br><br><br>
 	    	<div class="container-fluid"> 
 	    	 <div class="card-body">
 	        <div class="table-responsive">
 	    		<table  id="example2" class="table table-striped table-bordered table-hover text-center" width="100%" cellspacing="0">
 		        <thead>
 		            <tr>
 		                <th>Id Wilayah</th>
 		                <th>Nama Tempat</th>
 		                <th>Foto Tempat</th>
                        <th>Deskripsi</th>
                        <th>Alamat</th>
                        <th>Jam Buka</th>
                        <th>Harga</th>
                        <th>Menu</th>
                        <th>Nomor Telepon</th>
                        <th>Instagram</th>
                        <th>Facebook</th>
                        <th>UpdateStatus</th>
 		            </tr>
 		        </thead>
 	        	<tbody>

 	 {% for r in req %} 
 			            <tr>
 			                <td>{{r.id_wilayah}}</td>
                            <td>{{r.nama_tempat}}</td>
                            <td><img class="img-fluid" src="../../images/rekom/{{r.foto}}" alt=""></td>
                            <td>{{r.deskripsi}}</td>
                            <td>{{r.alamat}}</td>
                            <td>{{r.jam_buka}}</td>
                            <td>{{r.harga}}</td>
                            <td>{{r.menu}}</td>
                            <td>{{r.telepon}}</td>
                            <td>{{r.ig}}</td>
                            <td>{{r.fb}}</td>
                            <td>
                                 {% if r.status == 0 %}
                                    <div class="col text-center">
                                        <a href="/dashboard/adm/lisreq/verifreq/{{r.id_request}}" class="button btn btn-sm btn-primary">Konfirmasi</a>
                                    </div>
                                 {% elseif  r.status == 1 %}
                                    <div class="col text-center">
                                        <a href="/dashboard/adm/tambahpengajuan/{{r.id_request}}" class="button btn btn-sm btn-success">Add Place</a>
                                    </div>
                                {% else %}
                                    Added
                                {% endif %}
                            </td>

 	 					</tr>

 	{% endfor %}
 	 	
 				</tbody>
 	    		</table>
 	        </div></div></div>
 <!-- 	    </div>
 	</div>
 	</div> -->
 </section>
 
        
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
        
        <script src="../../js/theme.js"></script>

        <script src="../../asset/bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="../../asset/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- SlimScroll -->
        <script src="../../asset/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="../../asset/bower_components/fastclick/lib/fastclick.js"></script>
        <!-- DataTables -->
        <script src="../../asset/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<!--         <script src="../../asset/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script> -->
        <!-- AdminLTE App -->
        <script src="../../asset/dist/js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../../asset/dist/js/demo.js"></script>
        <script>
        $.noConflict();
        jQuery( document ).ready(function( $ ) {
            $('#example2').DataTable();
          })
          
        </script>

        <style>
          .table-striped > tbody > tr:nth-child(2n+1) > td, .table-striped > tbody > tr:nth-child(2n+1) > th {
             background-color:#c6cccb;

        </style>

    </body>
</html>

<!-- warna abu2: #8F8F92; footer : #11173b -->