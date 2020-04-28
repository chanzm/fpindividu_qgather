<!DOCTYPE html>
<html lang="en">
<head>
     <title>Q-Gather</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->  
     <link rel="icon" href="img/logo1.png" type="image/x-icon" />
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->  
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->  
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
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

<link href="css/style.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
</head>
<body>
    
    
    <div class="container-login100" style="background-image: url('img/home-slider/slider-bg-1.png');">
        <div class="wrap-login100 p-l-10 p-r-10 p-t-80 p-b-30">
            <form action="register" method="post" class="login100-form validate-form">
                <span class="login100-form-title p-b-37">
                    Register
                </span>

                <div class="text-center" style="color: red; font-weight: bold;">
                    <p><?php echo $this->flashSession->output() ?></p>
                </div>

<div class="row">
    <div class="col-md-6">
        <div class="wrap-input100 validate-input m-b-20" data-validate="Enter name">
            <input class="input100" type="text" name="nama_usr" placeholder="Nama">
            <span class="focus-input100"></span>
        </div>

        <div class="wrap-input100 validate-input m-b-25" data-validate="Enter Username">
            <input class="input100" type="text" name="username_usr" placeholder="Username">
            <span class="focus-input100"></span>
        </div>

        <div class="wrap-input100 validate-input m-b-30" data-validate = "Enter ktp number">
            <input class="input100" type="text" name="no_ktp" placeholder="Nomor Ktp">
            <span class="focus-input100"></span>
        </div>
    </div>
    <div class="col-md-6">
        <div class="wrap-input100 validate-input m-b-20" data-validate="Enter email">
            <input class="input100" type="email" name="email" placeholder="Email">
            <span class="focus-input100"></span>
        </div>

        <div class="wrap-input100 validate-input m-b-25" data-validate = "Enter password">
            <input class="input100" type="password" name="password" placeholder="Password">
            <span class="focus-input100"></span>
        </div>

        <div class="wrap-input100 validate-input m-b-30" data-validate = "Re-type password">
            <input class="input100" type="password" name="retypepass" placeholder="RetypePassword">
            <span class="focus-input100"></span>
        </div>
    </div>

</div>

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn" type="submit">
                        Register
                    </button>
                </div>

<!--                <div class="text-center p-t-57 p-b-20">
                    <span class="txt1">
                        Or login with
                    </span>
                </div>

                <div class="flex-c p-b-112">
                    <a href="#" class="login100-social-item">
                        <i class="fa fa-facebook-f"></i>
                    </a>

                    <a href="#" class="login100-social-item">
                        <img src="images/icons/icon-google.png" alt="GOOGLE">
                    </a>
                </div> -->
<br>
                <div class="text-center">
                    Have an account ?<a href="login" class="txt2 hov1">
                        Login
                    </a>
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
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
    <script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
    <script src="vendor/daterangepicker/moment.min.js"></script>
    <script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
    <script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
    <script src="js/main.js"></script>

</body>
</html>