<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="online_vegifruit.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link rel="stylesheet" href="./Assets/css/bootstrap.css" />
    <link rel="stylesheet" href="./Content/main.css" />
    <link rel="stylesheet" href="./Content/Login.css" />
    <link rel="stylesheet" href="./AOS/dist/aos.css" />
</head>
<body> 
    <form id="form1" runat="server" class="w-100 h-100 d-flex body flex-column justify-content-center align-items-center">
        <div data-aos="fade-up" class="loginView card d-flex flex-column justify-content-center align-items-center">
        <div class="d-flex mb-3">
            <span class="fs-2">Login</span>
        </div>
        <div class="d-flex mb-4">
            <img src="./Assets/email.svg" alt="" class="tbImg" height="30" /> 
            <asp:TextBox ID="tb_email" class="rounded-text " runat="server"></asp:TextBox>
        </div>
        <div class="d-flex ">
            <img src="./Assets/key.svg" alt="" class="tbImg" height="30" /> 
            <div class="d-inline-flex flex-column">
                <asp:TextBox runat="server" ID="tb_psw" type="password" class="rounded-text" ></asp:TextBox>
                <span class="forgot-psw"><a href="#">Forgot Password ?</a></span>
            </div>
        </div>
        <div class="d-flex align-items-center w-75 mt-2">
            <input type="checkbox" id="RemeberPassword"/>
            <label for="#RememberPassword">Remember Me</label>
        </div>
        <div class="d-flex mt-4 w-75 justify-content-end">
            <asp:Button runat="server" ID="btn_login" class="login-btn" Text="Login" OnClick="btn_login_Click"></asp:Button>
        </div>
    </div>

    <div class="bg-gr-plant">
        <img src="./Assets/sprout.svg" alt="" />
    </div>
    </form>
    <script src="Assets/js/bootstrap.js"></script>
    <script src="./AOS/dist/aos.js"></script>
    <script>
        AOS.init();
    </script>
</body>
</html>
