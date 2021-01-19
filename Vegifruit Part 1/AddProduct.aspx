<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Vegifruit_Part_1.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no"/>
    <title>Add Product</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css"/>
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css" />
</head>
<body class="bg-gradient-primary" style="background: #858B03;">
    <form id="AddProductForm" runat="server">
        <div class="container">
        <div class="card shadow-lg o-hidden border-0 my-5" data-aos="zoom-in">
            <div class="card-body p-0">
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-flex">
                        <div class="flex-grow-1 bg-register-image" style="background: url(&quot;assets/img/unnamed.png&quot;) center / cover no-repeat;"></div>
                    </div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h4 class="text-dark mb-4">Add New Harvest/ Product</h4>
                            </div>
                            <div class="user">
                                <div class="form-group"><label>Name of the Product</label><asp:TextBox runat="server" ID="tb_productName" class="form-control form-control-user" type="email" style="height: 50px;border-radius: 2em;" aria-describedby="emailHelp" placeholder="Product Name" name="product_name" required="" minlength="3"/></div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><label>Amount</label><asp:TextBox runat="server" ID="tb_amount" class="form-control" type="number" style="height: 50px;border-radius: 2em;" placeholder="Ex:10" required=""/></div>
                                    <div class="col-sm-6"><label>Type</label><select class="form-control" style="border-radius: 2em;height: 50px;" required="">
                                            <optgroup label="Weight">
                                                <option value="1" selected="">Kg</option>
                                                <option value="2">g</option>
                                            </optgroup>
                                            <optgroup label="Volume">
                                                <option value="3">L</option>
                                                <option value="4">ml</option>
                                            </optgroup>
                                        </select></div>
                                </div>
                                <div class="form-group"><label>Price (Rs.)</label><asp:TextBox runat="server" ID="tb_price" class="form-control" type="number" style="border-radius: 2em;height: 50px;" placeholder="Ex:1000" required=""/></div>
                                <div class="form-group row">
                                    <div class="d-md-flex justify-content-md-center align-items-md-center" style="width: 150px;height: 150px;background: #d0d0d0;margin: 10px;"><img src="assets/img/icons8_add.svg" width="50px"/></div>
                                    <div class="d-md-flex justify-content-md-center align-items-md-center" style="width: 150px;height: 150px;background: #d0d0d0;margin: 10px;"><img class="d-md-flex justify-content-md-center align-items-md-center" src="assets/img/icons8_add.svg" width="50px"/></div>
                                    <div class="d-md-flex justify-content-md-center align-items-md-center" style="width: 150px;height: 150px;background: #d0d0d0;margin: 10px;"><img class="d-md-flex justify-content-md-center align-items-md-center" src="assets/img/icons8_add.svg" width="50px"/></div>
                                    <div class="d-md-flex justify-content-md-center align-items-md-center" style="width: 150px;height: 150px;background: #d0d0d0;margin: 10px;"><img src="assets/img/icons8_add.svg" width="50px"/></div>
                                    <div class="d-md-flex justify-content-md-center align-items-md-center" style="width: 150px;height: 150px;background: #d0d0d0;margin: 10px;"><img src="assets/img/icons8_add.svg" width="50px"/></div>
                                </div>
                                <div class="form-group"><label>Select Location</label><select class="form-control" style="border-radius: 2em;height: 50px;" required="">
                                        <optgroup label="Your Saved Locations">
                                            <option value="1" selected="">Location 1</option>
                                            <option value="2">Location 2</option>
                                            <option value="3">Location 3</option>
                                        </optgroup>
                                        <optgroup label="Other">
                                            <option value="4">New Location</option>
                                        </optgroup>
                                    </select></div><asp:Button runat="server" class="btn btn-primary btn-block text-white btn-user" style="background: #4E8D02;border-style: none;" Text="Save" ></asp:Button>
                                <hr/>
                            </div>
                            <div class="text-center"><a class="small" href="index.html">Back to Dashboard</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form><script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/chart.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="assets/js/theme.js"></script>
</body>
</html>
