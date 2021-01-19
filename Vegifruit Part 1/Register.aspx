<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Vegifruit_Part_1.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no"/>
    <title>Register - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css"/>
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css"/>


</head>
<body class="bg-gradient-primary" style="background: rgb(48,84,15);">
    <form id="RegisterForm" runat="server">
        <div class="container">
        <div class="card shadow-lg o-hidden border-0 my-5" data-aos="zoom-in">
            <div class="card-body p-0">
                
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-flex">
                        <div class="flex-grow-1 pulse animated bg-register-image" style="background: url(&quot;assets/img/Screen-Shot-2016-02-22-at-10.22.55-AM.png&quot;) no-repeat;background-size: cover;"></div>
                    </div>
                    <div class="col-lg-7">
                        <asp:Panel runat="server" ID="message_pnl" class="alert-warning row d-flex justify-content-center align-items-center">
                        </asp:Panel>
                        <div class="p-5">
                            <div class="d-lg-flex justify-content-lg-start" style="margin-bottom: 20px;"><img class="img-fluid" src="assets/img/DoA%20Logo.png" style="width:400vw"/></div>
                            <div class="text-center">
                                <h4 class="text-dark mb-4">Create an Account!</h4>
                        
                                
                            </div>
                            <div data-aos="fade-right" class="user">


                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><asp:TextBox required runat="server" ID="tb_firstName" class="form-control form-control-user" type="text" placeholder="First Name" name="first_name" style="border-radius:2em; height:50px;"></asp:TextBox></div>
                                    <div class="col-sm-6"><asp:TextBox  required runat="server" ID="tb_lastName" class="form-control form-control-user" type="text" placeholder="Last Name" name="last_name" style="height: 50px;border-radius: 2em;"></asp:TextBox></div>
                                </div>
                                <div class="form-group"><asp:TextBox  required runat="server" ID="tb_emailAddress" class="form-control form-control-user" type="email" aria-describedby="emailHelp" placeholder="Email Address" name="email" style="height: 50px;border-radius: 2em;"></asp:TextBox></div>
                                <div class="form-group"><asp:TextBox required runat="server" ID="tb_phoneNumber" class="form-control form-control-user" type="number" aria-describedby="Phone Number" placeholder="Phone Number" name="phone" style="height: 50px;border-radius: 2em;"></asp:TextBox></div>
                                <div class="form-group"><asp:TextBox required runat="server" ID="tb_nic" class="form-control form-control-user" type="text" aria-describedby="NIC" placeholder="National Identity Card Number" name="nic" MaxLength="12" style="height: 50px;border-radius: 2em;"></asp:TextBox>
                                </div>
                                <asp:Label runat="server" ID="warningNic" Text="Please enter a valid NIC" CssClass="text-danger" style="margin-left:20px; float:right"></asp:Label>
                                <div class="form-group"><asp:TextBox required runat="server" ID="tb_add_l1" class="form-control form-control-user" type="text" aria-describedby="Address Line 1" placeholder="Address Line 1" name="address_line_1" style="height: 50px;border-radius: 2em;"></asp:TextBox></div>
                                <div class="form-group"><asp:TextBox runat="server" ID="tb_add_l2" class="form-control form-control-user" type="text" aria-describedby="Address Line 2" placeholder="Address Line 2 (Optional)" name="address_line_2" style="height: 50px;border-radius: 2em;"></asp:TextBox></div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><asp:TextBox required runat="server" ID="tb_city" class="form-control" type="text" style="border-radius: 2em;height: 50px;" placeholder="City"></asp:TextBox></div>
                                    <div class="col-sm-6" style="border-radius: 2em;height: 50px;"><asp:TextBox runat="server" ID="tb_zipCode" class="form-control" type="text" style="border-radius: 2em;height: 50px;" placeholder="ZIP Code"></asp:TextBox></div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><asp:TextBox required runat="server" ID="tb_psw" class="form-control form-control-user" type="password" placeholder="Password" name="password" style="height: 50px;border-radius: 2em;"></asp:TextBox></div>
                                    <div class="col-sm-6"><asp:TextBox required runat="server" ID="tb_rptpsw" class="form-control form-control-user" type="password" placeholder="Retype Password" name="password_repeat" style="height: 50px;border-radius: 2em;"></asp:TextBox></div>
                                    <div class="d-flex w-100" style="align-items:end; justify-items:end; justify-content:end;">
                                       
                                        <asp:ScriptManager ID="ScriptManager1" runat="server"/>
                                        <asp:UpdatePanel runat="server" ID="test" UpdateMode="Conditional">
                                           <ContentTemplate>
                                                <asp:Label runat="server" ID="WarningPassword" Text="Passwords Not Match" CssClass="text-danger" style="margin-left:20px; float:right"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                </div><asp:Button runat="server" class="btn btn-primary btn-block text-white btn-user" type="submit" style="background: #8FC52A;border-radius: 2em;height: 50px;" Text="Register Account" OnClick="Register_Click"></asp:Button>
                                <hr data-aos="fade-right"/>
                            </div>
                            <div class="text-center"><a class="small" href="forgot-password.html">Forgot Password?</a></div>
                            <div class="text-center"><a class="small" href="login.html">Already have an account? Login!</a></div>
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
