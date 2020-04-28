
<!DOCTYPE html>
<html lang="en">
<head>
     <title>Q-Gather</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->  
     <link rel="icon" href="../../img/logo1.png" type="image/x-icon" />
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../vendor/animate/animate.css">
<!--===============================================================================================-->  
    <link rel="stylesheet" type="text/css" href="../../vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../vendor/select2/select2.min.css">
<!--===============================================================================================-->  
    <link rel="stylesheet" type="text/css" href="../../vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../css/util.css">
    <link rel="stylesheet" type="text/css" href="../../css/main.css">
<!--===============================================================================================-->
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

<link href="../../css/style.css" rel="stylesheet">
<link href="../../css/responsive.css" rel="stylesheet">
</head>
<body>
    
    <div class="container-login100" style="background-image: url('../../img/home-slider/slider-bg-1.png');">
        <div class="wrap-login100 p-l-5 p-r-5 p-t-80 p-b-30">
     
            <form action="../../storeeditplace" method="post" class="login100-form validate-form" enctype='multipart/form-data'>
                <span class="login100-form-title p-b-37">
                    Edit Place
                </span>

                <div class="text-center" style="color: green; font-weight: bold;">
                    <p><?php echo $this->flashSession->output() ?></p>
                </div>

             <div class="wrap-input100 validate-input m-b-20">
                 <input class="input100" type="hidden" name="id_tempat" id="id_tempat" value="{{data.id_tempat}}">
                 <span class="focus-input100"></span>
             </div>

             <p style="font-size: 16px;color: #4b2354">Nama Tempat</p>
             <div class="wrap-input100 validate-input m-b-20">
             	<input class="input100" type="text" name="nama_tempat" value="{{data.nama_tempat}}" required>
             	<span class="focus-input100"></span>
             </div>

             <p style="font-size: 16px;color: #4b2354">Deskripsi Tempat</p>
             <div class="wrap-input100 validate-input m-b-25">
             	<textarea class="input100" name="deskripsi" id="deskripsi" placeholder="Deskripsi Tempat">{{data.deskripsi}}</textarea>
             	<span class="focus-input100"></span>
             </div>

             <p style="font-size: 16px;color: #4b2354">Alamat Tempat</p>
             <div class="wrap-input100 validate-input m-b-30" data-validate = "Input Alamat Tempat">
             	<input class="input100" type="text" name="alamat" placeholder="Alamat Tempat" value="{{data.alamat}}">
             	<span class="focus-input100"></span>
             </div>

             <p style="font-size: 16px;color: #4b2354">Jam Buka</p>
             <div class="wrap-input100 validate-input m-b-35" data-validate = "Input Jam Buka">
             	<input class="input100" type="text" name="jam_buka" placeholder="Jam Buka, Ex : Selasa - Minggu (11:00-22:00)" value="{{data.jam_buka}}">
             	<span class="focus-input100"></span>
             </div>

             <p style="font-size: 16px;color: #4b2354">Harga Rata-rata</p>
             <div class="form-group wrap-input100 validate-input m-b-40">
                <!--  <label name="Role"></label> -->
                    <select class="input100" type="text" name="harga" style="border-radius: 15px">
             			<option class="input100" name="harga" placeholder="Harga Rata-Rata" disabled selected>{{data.harga}}</option>
                         <option class="input100" value="Di bawah Rp. 50.000 /orang">Di bawah Rp. 50.000 /orang</option>
                         <option class="input100" value="Rp. 50.000 - Rp. 100.000 /orang">Rp. 50.000 - Rp. 100.000 /orang</option>		
                         <option class="input100" value="Diatas Rp. 100.000 /orang">Diatas Rp. 100.000 /orang</option>          
                     </select>
              	<span class="focus-input100"></span>
             </div>

             <p style="font-size: 16px;color: #4b2354">Nomor Telepon</p>
             <div class="wrap-input100 validate-input m-b-45" data-validate = "Input No Telepon">
             	<input class="input100" type="text" name="telepon" placeholder="Nomor Telepon" value="{{data.telepon}}">
             	<span class="focus-input100"></span>
             </div>

             <p style="font-size: 16px;color: #4b2354">Instagram</p>
             <div class="wrap-input100 validate-input m-b-50" data-validate = "Input Instagram Tempat">
             	<input class="input100" type="text" name="ig" placeholder="Instagram" value="{{data.ig}}">
             	<span class="focus-input100"></span>
             </div>

             <p style="font-size: 16px;color: #4b2354">Facebook</p>
             <div class="wrap-input100 validate-input m-b-55" data-validate = "Input Facebook Tempat">
             	<input class="input100" type="text" name="fb" placeholder="Facebook" value="{{data.fb}}">
             	<span class="focus-input100"></span>
             </div>

             <p style="font-size: 16px;color: #4b2354">Rating Tempat</p>
             <div class="wrap-input100 validate-input m-b-60" data-validate = "Input Rating Tempat">
                <input class="input100" type="text" name="avg_rate" placeholder="Rating Tempat" value="{{data.avg_rate}}">
                <span class="focus-input100"></span>
             </div>

             <p style="font-size: 16px;color: #4b2354">Menu Tempat</p>
             <div class="wrap-input100 validate-input m-b-65" data-validate = "Input Menu Tempat">
                <input class="input100" type="text" name="menu" placeholder="Menu, Ex : (bakso)(ayam)" value="{{data.menu}}">
                <span class="focus-input100"></span>
             </div>

             <div class="wrap-input100 validate-input m-b-70"><br>
                 <p style="font-size: 16px;color: #4b2354" >Edit Foto Tempat</p>
                 <img class="img-thumbnail" src="../../images/rekom/{{data.foto}}" alt=""><br>
                 <input type="file" class="input-large span10" id="foto" name="foto" placeholder="Upload Foto" value="{{data.foto}} " label="{{data.foto}}">
             </div>

                <div class="container-login100-form-btn">
                	<a href="../../detailadmin/{{data.id_tempat}}" class="login100-form-btn" >Cancel</a>
                    <button class="login100-form-btn" type="submit">Selesai</button>
                </div>


            </form>

            
        </div>
    </div>
    
    

    <div id="dropDownSelect1"></div>
    
    <!--================Footer Area =================-->
    <footer class="footr_area" style="text-align: center;color: white">
        <div class="footer_copyright">
            Copyright © 2020 <strong><span><a href="#">Q-Gather</a></span></strong> . All Rights Reserved  
        </div>
    </footer>
    <!--================End Footer Area =================-->

<!--===============================================================================================-->
    <script src="../../vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
    <script src="../../vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
    <script src="../../vendor/bootstrap/js/popper.js"></script>
    <script src="../../vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
    <script src="../../vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
    <script src="../../vendor/daterangepicker/moment.min.js"></script>
    <script src="../../vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
    <script src="../../vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
    <script src="../../js/main.js"></script>
<style type="text/css">
	p{
		font-family: SourceSansPro-Bold;
	}
</style>


</body>
</html>