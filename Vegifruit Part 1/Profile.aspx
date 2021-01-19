<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Vegifruit_Part_1.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no"/>
    <title>Profile - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css"/>
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css"/>
</head>
<body id="page-top">
    <form id="ProfileForm" runat="server">
        <div id="wrapper">
        <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0" style="background: #343434;">
            <div class="container-fluid d-flex flex-column p-0"><a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
                    <div class="sidebar-brand-icon rotate-n-15"><img class="img-fluid" src="assets/img/Vegi%20Fruits%20Logo%20SVG%20NEW.svg" style="margin-top: 65px;margin-right: 0px;margin-left: -23px;"/></div>
                </a>
                <hr class="sidebar-divider my-0"/>
                <ul class="nav navbar-nav text-light" id="accordionSidebar">
                    <li class="nav-item" style="margin-top: 70px;"><a class="nav-link" href="dashboard.aspx" style="margin-top: 32px;"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="AddProduct.aspx"><i class="fa fa-plus"></i><span>Add Product</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="MyProducts.aspx"><i class="fas fa-table"></i><span>My Products</span></a></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                </ul>
                <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <div class="form-inline d-none d-sm-inline-block mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group"><asp:TextBox runat="server" ID="tb_search1" class="bg-light form-control border-0 small" type="text" placeholder="Search for ..."></asp:TextBox>
                                <div class="input-group-append"><button class="btn btn-primary py-0" type="button" style="background: #8FC52A;"><i class="fas fa-search"></i></button></div>
                            </div>
                        </div>
                        <ul class="nav navbar-nav flex-nowrap ml-auto">
                            <li class="nav-item dropdown d-sm-none no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><i class="fas fa-search"></i></a>
                                <div class="dropdown-menu dropdown-menu-right p-3 animated--grow-in" aria-labelledby="searchDropdown">
                                    <div class="form-inline mr-auto navbar-search w-100">
                                        <div class="input-group"><asp:TextBox runat="server" ID="tb_search2" class="bg-light form-control border-0 small" type="text" placeholder="Search for ..."></asp:TextBox>
                                            <div class="input-group-append"><button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button></div>
                                        </div>
                                    </div>
                                </div>
                            </li>

                             <!-- Alerts -->
                            <li class="nav-item dropdown no-arrow mx-1">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><span class="badge badge-danger badge-counter">3+</span><i class="fas fa-bell fa-fw"></i></a>
                                    <div class="dropdown-menu dropdown-menu-right dropdown-list dropdown-menu-right animated--grow-in">
                                        <h6 class="dropdown-header" style="background: #90C62A;border-style: none;">alerts center</h6>
                                        
                                        <!-- Alert -->
                                        <a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="mr-3">
                                                <div class="bg-primary icon-circle"><i class="fas fa-file-alt text-white"></i></div>
                                            </div>
                                            <div><span class="small text-gray-500">December 12, 2019</span>
                                                <p>A new monthly report is ready to download!</p>
                                            </div>
                                        </a>

                                    </div>
                                </div>
                            </li>

                            <div class="d-none d-sm-block topbar-divider"></div>
                            <li class="nav-item dropdown no-arrow">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><span class="d-none d-lg-inline mr-2 text-gray-600 small">Valerie Luna</span><img class="border rounded-circle img-profile" src="assets/img/avatars/avatar1.jpeg"/></a>
                                    <div class="dropdown-menu shadow dropdown-menu-right animated--grow-in"><a class="dropdown-item" href="profile.html"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Profile</a>
                                        <div class="dropdown-divider"></div><a class="dropdown-item" href="#"><i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Logout</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div class="container-fluid">
                    <h3 class="text-dark mb-4">Profile</h3>
                    <div class="row mb-3">
                        <div class="col-lg-4">
                            <div class="card mb-3">
                                <div class="card-body text-center shadow"><img class="rounded-circle mb-3 mt-4" src="assets/img/profile.jpg" width="160" height="160"/>
                                    <div class="mb-3"><asp:Button runat="server" class="btn btn-primary btn-sm" type="button" Text="Change Photo"></asp:Button></div>
                                </div>
                            </div>
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="text-primary font-weight-bold m-0">Ratings and flags</h6>
                                </div>
                                <div class="card-body">
                                    <h4 class="small font-weight-bold">Rejected Crops<span class="float-right">20%</span></h4>
                                    <div class="progress progress-sm mb-3">
                                        <div class="progress-bar bg-danger" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%;"><span class="sr-only">20%</span></div>
                                    </div>
                                    <h4 class="small font-weight-bold">Pending Products<span class="float-right">40%</span></h4>
                                    <div class="progress progress-sm mb-3">
                                        <div class="progress-bar bg-warning" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;"><span class="sr-only">40%</span></div>
                                    </div>
                                    <h4 class="small font-weight-bold">Accepted Products<span class="float-right">80%</span></h4>
                                    <div class="progress progress-sm mb-3">
                                        <div class="progress-bar bg-success" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;"><span class="sr-only">80%</span></div>
                                    </div>
                                    <div class="d-flex flex-row justify-content-center align-items-center align-content-center"><img style="width: 15%;margin: 2px;" src="assets/img/star.svg"/><img style="width: 15%;margin: 2px;" src="assets/img/star.svg"/><img style="width: 15%;margin: 2px;" src="assets/img/star.svg"/><img style="width: 15%;margin: 2px;" src="assets/img/HalfStar.svg"/><img style="width: 15%;margin: 2px;" src="assets/img/NoStar.svg"/></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="row mb-3 d-none">
                                <div class="col">
                                    <div class="card text-white bg-primary shadow">
                                        <div class="card-body">
                                            <div class="row mb-2">
                                                <div class="col">
                                                    <p class="m-0">Peformance</p>
                                                    <p class="m-0"><strong>65.2%</strong></p>
                                                </div>
                                                <div class="col-auto"><i class="fas fa-rocket fa-2x"></i></div>
                                            </div>
                                            <p class="text-white-50 small m-0"><i class="fas fa-arrow-up"></i>&nbsp;5% since last month</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="card text-white bg-success shadow">
                                        <div class="card-body">
                                            <div class="row mb-2">
                                                <div class="col">
                                                    <p class="m-0">Peformance</p>
                                                    <p class="m-0"><strong>65.2%</strong></p>
                                                </div>
                                                <div class="col-auto"><i class="fas fa-rocket fa-2x"></i></div>
                                            </div>
                                            <p class="text-white-50 small m-0"><i class="fas fa-arrow-up"></i>&nbsp;5% since last month</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="card shadow mb-3">
                                        <div class="card-header py-3">
                                            <p class="text-primary m-0 font-weight-bold">User Settings</p>
                                        </div>
                                        <div class="card-body">
                                            <div>
                                                <div class="form-row">
                                                    <div class="col">
                                                        <div class="form-group"><label for="username"><strong>Username</strong></label><asp:TextBox runat="server" ID="tb_UserName" class="form-control" type="text" placeholder="User name" name="username" value="Mr. Brown Rabbit"></asp:TextBox></div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group"><label for="email"><strong>Email Address</strong></label><asp:TextBox runat="server" ID="tb_email" class="form-control" type="email" placeholder="user@example.com" name="email" value="brownrabbit@gmail.com"></asp:TextBox></div>
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="col">
                                                        <div class="form-group"><label for="first_name"><strong>First Name</strong></label><asp:TextBox runat="server" ID="tb_firstName" class="form-control" type="text" placeholder="First Name" name="first_name" value="Brown"></asp:TextBox></div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group"><label for="last_name"><strong>Last Name</strong></label><asp:TextBox runat="server" ID="tb_lastName" class="form-control" type="text" placeholder="Last Name" name="last_name" value="Rabbit"></asp:TextBox></div>
                                                    </div>
                                                </div>
                                                <div class="form-group"><asp:Button runat="server" class="btn btn-primary btn-sm" type="submit" Text="Save Settings" /></asp:Button></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card shadow">
                                        <div class="card-header py-3">
                                            <p class="text-primary m-0 font-weight-bold">Contact Settings</p>
                                        </div>
                                        <div class="card-body">
                                            <div>
                                                <div class="form-group"><label for="address"><strong>Address</strong></label><asp:TextBox runat="server" ID="tb_address" class="form-control" type="text" placeholder="Sunset Blvd, 38" name="address" value="Sunset Blvd, 38"></asp:TextBox><label for="address" style="margin-top: 10px;"><strong>Phone Number</strong></label><asp:TextBox runat="server" ID="tb_phone" class="form-control" type="text" placeholder="Phone Number" name="address" value="070 498 2367"></asp:TextBox></div>
                                                <div class="form-row">
                                                    <div class="col">
                                                        <div class="form-group"><label for="city"><strong>City</strong></label><asp:TextBox runat="server" ID="tb_city" class="form-control" type="text" placeholder="Los Angeles" name="city" value="Los Angeles"></asp:TextBox></div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group"><label for="country"><strong>Country</strong></label><label for="country"><strong>Country</strong></label><asp:TextBox runat="server" ID="tb_country" class="form-control" type="text" placeholder="USA" name="country" value="USA"></asp:TextBox></div>
                                                    </div>
                                                </div>
                                                <div class="form-group"><asp:Button runat="server" class="btn btn-primary btn-sm" type="submit" Text="Save Settings"></asp:Button></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card shadow mb-5">
                        <div class="card-header py-3">
                            <p class="text-primary m-0 font-weight-bold">Product Types</p>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col" style="border-bottom-style: solid;border-bottom-color: rgb(221,221,221);">
                                    <div>
                                        <div class="form-group">
                                            <div class="form-row">
                                                <div class="col-lg-8"><label for="address"><strong>Product Type</strong></label><asp:TextBox runat="server" ID="tb_productType" class="form-control" type="text" placeholder="Rice" name="address"></asp:TextBox></div>
                                                <div class="col d-flex flex-column"><label for="address"><strong>Select Location</strong></label><asp:Button runat="server" class="btn btn-success btn-icon-split text-white text" Text="Select on Map"></asp:Button></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-cols-2">
                                <div class="col-lg-8" style="border-bottom: 0.5px solid var(--gray);border-radius: 5px;"><span style="padding-left: 10px;">Rice</span></div>
                                <div class="col-lg-4" style="border-bottom: 0.5px solid rgb(134,135,145);border-radius: 5px;"><span>Colombo</span></div>
                            </div>
                            <div></div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © VegiFruit 2021</span></div>
                </div>
            </footer>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
    </div>
    </form>
</body>
</html>
