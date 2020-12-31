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
        <a href="#"><div class="nav-home"></div></a>
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
          <input type="text" class="rounded-text col-sm-8" />
        </div>
        <div class="row mb-4">
          <span class="col-sm-3">Last Name</span>
          <input type="text" class="rounded-text col-sm-8" />
        </div>
        <div class="row mb-4">
          <span class="col-sm-3">NIC Number</span>
          <input type="text" class="rounded-text col-sm-8" />
        </div>
        <div class="row mb-4">
          <span class="col-sm-3">Email Address</span>
          <input type="text" class="rounded-text col-sm-8" />
        </div>
        <div class="row mb-4">
          <span class="col-sm-3">Phone number</span>
          <input type="text" class="rounded-text col-sm-8" />
        </div>
        <div class="row mb-4">
          <span class="col-md-3">Address</span>
          <textarea class="rounded-text col-8 tb-address pt-1"></textarea>
        </div>
        <div class="row mb-4 bottom-reg">
            <a class="col-sm back-login" href="#">Back to Login</a>
            <input type="button" value="Create" class="Register-btn col-sm-3" />
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
