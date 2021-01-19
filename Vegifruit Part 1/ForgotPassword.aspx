<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Vegifruit_Part_1.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no"/>
    <title>Forgotten Password</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css"/>
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css"/>
</head>
<body class="bg-gradient-primary" style="background: #703D03;">
    <form id="forgotPasswordForm" runat="server">
        <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-9 col-lg-12 col-xl-10">
                <div class="card shadow-lg o-hidden border-0 my-5" data-aos="zoom-in">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-flex">
                                <div class="flex-grow-1 bg-password-image" style="background: url(&quot;assets/img/20201020PHT89703_original.jpg&quot;) bottom / cover no-repeat;"></div>
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div><img class="img-fluid d-lg-flex justify-content-lg-start" src="assets/img/DoA%20Logo.png"  style="margin-left: -20px;margin-bottom: 20px; width:400vw;"/></div>
                                    <div class="text-center">
                                        <h4 class="text-dark mb-2">Forgot Your Password?</h4>
                                        <p class="mb-4">We get it, stuff happens. Just enter your email address below and we'll send you a link to reset your password!</p>
                                    </div>
                                    <div class="user">
                                        <div class="form-group">
                                            <asp:TextBox runat="server" ID="tb_email" class="form-control form-control-user" type="email" aria-describedby="emailHelp" placeholder="Enter Email Address..." name="email" style="border-radius:2em; height:50px;"/>

                                        </div>
                                        <asp:Button runat="server" class="btn btn-primary btn-block text-white btn-user" type="submit" style="background: #C17E35; border-radius: 2em; height:50px;" Text="Reset Password"></asp:Button>
                                    </div>
                                    <div class="text-center">
                                        <hr/><a class="small" href="register.html">Create an Account!</a>
                                    </div>
                                    <div class="text-center"><a class="small" href="login.html">Want to try again? Login!</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/chart.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="assets/js/theme.js"></script>

</body>
</html>
