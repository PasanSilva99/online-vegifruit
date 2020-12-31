<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="online_vegifruit.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Create an Account</title>
    <link rel="stylesheet" href="./Content/main.css" />
    <link rel="stylesheet" href="./Assets/css/bootstrap.css" />
    <link rel="stylesheet" href="./AOS/dist/aos.css" />
    <link rel="stylesheet" href="./Content/register.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="home">
        <asp:HyperLink runat="server" ID="btn_home" NavigateUrl="#"><div class="nav-home"></div></asp:HyperLink>
    </div>

    <div
      data-aos="fade-up"
      class="RegisterView card d-flex flex-column justify-content-center align-items-center"
    >
      <div class="d-flex mb-3 register-top">
        <span class="fs-2">Create an account</span>
      </div>
      <div class="table justify-content-center align-items-center p-4 pb-0">
        <div class="row mb-4">
          <span class="col-sm-3">First Name</span>
          <asp:TextBox runat="server" ID="tb_FirstName" type="text" class="rounded-text col-sm-8" />
        </div>
        <div class="row mb-4">
          <span class="col-sm-3">Last Name</span>
          <asp:TextBox runat="server" ID="tb_LastName" type="text" class="rounded-text col-sm-8" />
        </div>
        <div class="row mb-4">
          <span class="col-sm-3">NIC Number</span>
          <asp:TextBox runat="server" ID="tb_NICnumber" type="text" class="rounded-text col-sm-8" />
        </div>
        <div class="row mb-4">
          <span class="col-sm-3">Email Address</span>
          <asp:TextBox runat="server" ID="tb_EmailAddress" type="text" class="rounded-text col-sm-8" />
        </div>
        <div class="row mb-4">
          <span class="col-sm-3">Phone number</span>
          <asp:TextBox runat="server" ID="tb_Phone" type="text" class="rounded-text col-sm-8" />
        </div>
        <div class="row mb-4">
          <span class="col-md-3">Address</span>
          <asp:TextBox runat="server" ID="tb_Address" class="rounded-text col-8 tb-address pt-1"></asp:TextBox>
        </div>
        <div class="row mb-4 bottom-reg">
            <asp:HyperLink runat="server" ID="backLogin" class="col-sm back-login" NavigateUrl="#" Text="Back to Login"></asp:HyperLink>
            <asp:Button runat="server" ID="btn_Login" Text="Create" class="Register-btn col-sm-3" />
          </div>
      </div>
    </div>

    <div class="bottom-image"></div>
        </div>
    </form>

    <script src="./Assets/js/bootstrap.js"></script>
    <script src="./AOS/dist/aos.js"></script>
    <script>
      AOS.init();
    </script>
</body>
</html>
