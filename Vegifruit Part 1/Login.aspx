<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vegifruit_Part_1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no"/>
    <title>Login - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css"/>
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css"/>
</head>
<body  class="bg-gradient-primary" style="background: #E0DDD8;">
    <form id="LoginForm" runat="server">
        <div class="container" style="margin-top:10vh">
        <div class="row justify-content-center" style="background: #E0DDD8;">
            <div class="col-md-9 col-lg-12 col-xl-10" data-aos="zoom-in" data-aos-duration="700">
                <div class="card shadow-lg o-hidden border-0 my-5">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-flex">
                                <div class="flex-grow-1 bg-login-image" style="background: url(&quot;assets/img/fruit%20and%20vegetables.jpg&quot;) center / cover no-repeat;"></div>
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div><img class="img-fluid" src="assets/img/DoA%20Logo.png" style="margin-top: -10px;margin-left: -30px;margin-bottom: 20px;"/></div>
                                    <div class="text-center">
                                        <h4 class="text-dark mb-4">Welcome Back!</h4>
                                        <asp:Panel runat="server" ID="message_pnl" class="alert-warning row d-flex justify-content-center align-items-center">
                                        </asp:Panel>
                                    </div>
                                    <div class="user">
                                        <div class="form-group"><asp:TextBox runat="server" ID="tb_email" class="form-control form-control-user" type="email" data-aos="fade-right" aria-describedby="emailHelp" placeholder="Enter Email Address..." name="email" style="height:50px; border-radius:2em;"/></div>
                                        <div class="form-group"><asp:TextBox runat="server" ID="tb_psw" class="form-control form-control-user" type="password" data-aos="fade-right" placeholder="Password" name="password" style="height:50px; border-radius:2em;"/></div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <div class="form-check" data-aos="fade-right"><asp:CheckBox runat="server" ID="chb_rememberMe" class="form-check-input custom-control-input" type="checkbox"/><label class="form-check-label custom-control-label" for="chb_rememberMe">Remember Me</label></div>
                                            </div>
                                        </div><asp:Button runat="server" class="btn btn-primary btn-block text-white btn-user" data-aos="fade-right" type="submit" style="background: #F39129; border-radius:2em; height:50px" Text="Login" OnClick="login_Click"></asp:Button>
                                        <hr/>
                                    </div>
                                    <div class="text-center"><a data-aos="fade-up" class="small" href="forgot-password.html">Forgot Password?</a></div>
                                    <div class="text-center"><a class="pulse animated small" href="register.html">Create an Account!</a></div>
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
