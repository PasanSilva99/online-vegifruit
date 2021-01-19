<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staffMap.aspx.cs" Inherits="Vegifruit_Part_1.staffMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
    <title>Map</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Adamina" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alfa+Slab+One" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Atomic+Age" />
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css" />
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css" />
    <link rel="stylesheet" href="assets/css/Team-Clean.css" />




</head>
<body id="page-top">
    <form id="map" runat="server">
        <div id="wrapper">
            <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0" style="background: rgb(37,38,37);">
                <div class="container-fluid d-flex flex-column p-0">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <img style="width: 188px; height: 115px;" src="assets/img/Vegi%20Fruits%20Logo%20SVG%20NEW.svg" /></div>
                        </div>
                    </div>
                    <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
                        <div class="sidebar-brand-icon rotate-n-15"></div>
                        <div class="sidebar-brand-text mx-3"></div>
                    </a>
                    <hr class="sidebar-divider my-0" />
                    <ul class="nav navbar-nav text-light" id="accordionSidebar">
                        <li class="nav-item"><a class="nav-link" href="staffDashboard.aspx"> <i class="fas fa-tachometer-alt"></i><span>Dashboard</span></a></li>
                        <li class="nav-item"><a class="nav-link" href="staffPurchase.aspx"><i class="fas fa-table"></i><span>Purchace Details</span></a></li>
                        <li class="nav-item"><a class="nav-link" href="staffMap.aspx"><i class="fas fa-user-circle"></i><span>Harvest Map</span></a></li>

                    </ul>
                    <div class="text-center d-none d-md-inline">
                        <button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button>
                    </div>
                    <div class="container d-xl-flex align-items-xl-end">
                        <div class="row d-xl-flex align-items-xl-end">
                            <div class="col d-xl-flex align-items-xl-end" style="width: 215px; height: 120px;">
                                <img class="img-fluid" style="background: url(&quot;assets/img/DoA%20Logo.png&quot;); width: 188px;" src="assets/img/DoA%20Logo.png" /></div>
                        </div>
                    </div>
                </div>
            </nav>
            <div class="d-flex flex-column" id="content-wrapper">
                <div id="content">
                    <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                        <div class="container-fluid">
                            <button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                            <div class="form-inline d-none d-sm-inline-block mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                                <div class="input-group">
                                    <asp:TextBox runat="server" ID="data" class="bg-light form-control border-0 small" type="text" placeholder="Search for ..." Style="background: rgb(37,44,30);" />
                                    <div class="input-group-append">
                                        <button class="btn btn-primary py-0" type="button" style="background: #2e4;"><i class="fas fa-search" style="background: #2e4;"></i></button>
                                    </div>
                                </div>
                            </div>
                            <ul class="nav navbar-nav flex-nowrap ml-auto">
                            <li class="nav-item dropdown d-sm-none no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><i class="fas fa-search"></i></a>
                                <div class="dropdown-menu dropdown-menu-right p-3 animated--grow-in" aria-labelledby="searchDropdown">
                                    <div class="form-inline mr-auto navbar-search w-100">
                                        <div class="input-group"><asp:TextBox runat="server" ID="tb_search2" class="bg-light form-control border-0 small" type="text" placeholder="Search for ..."/>
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
                                    <div class="dropdown-menu shadow dropdown-menu-right animated--grow-in"><a class="dropdown-item" href="Profile.aspx"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Profile</a>
                                        <div class="dropdown-divider"></div><a class="dropdown-item" href="#"><i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Logout</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        </div>
                    </nav>
                    <div class="container-fluid">
                        <div class="card mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0" style="font-family: Adamina, serif; font-weight: bold; font-size: 18px;">Map with Details</h6>
                            </div>
                            <div class="card-body" style="width: 100%; height: 70vh; border-color: rgb(33,46,143);">
                                <div class="d-flex flex-row flex-shrink-0" style="width: 100%; height: 70vh; color: var(--cyan); background: #a72626;">
                                    <div class="d-xl-flex justify-content-xl-end" style="width: 30%; height: 70vh; color: var(--success); background: var(--white); margin-bottom: 10px;">
                                        <img src="" style="margin-right: 20px; padding-top: 0;" />
                                        <div></div>
                                    </div>
                                    <div class="d-flex flex-row flex-shrink-0 justify-content-xl-end align-items-xl-start" style="width: 70%; height: 70vh; background: var(--white);">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <footer class="bg-white sticky-footer">
                            <div class="container my-auto">
                                <div class="text-center my-auto copyright"><span>Copyright © Brand 2021</span></div>
                            </div>
                        </footer>
                    </div>
                    <a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
                </div>
                </div>
            </div>
    </form>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/chart.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="assets/js/theme.js"></script>
</body>
</html>
