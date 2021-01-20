﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staffMap.aspx.cs" Inherits="Vegifruit_Part_1.staffMap" %>

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

    <script
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA7M0TI9M3e5yWaKWDQj5imEejUFrJnKRA&callback=initMap&libraries=&v=weekly"
    defer></script>


</head>
<body id="page-top">
    <form id="staffMap" runat="server">
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
                                <img class="img-fluid" style="background: url(&quot;assets/img/DoA%20Logo.png&quot;); width: 188px;"  /></div>
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
                                    <div runat="server" id="mapCardLoader" class="d-flex bg-danger flex-column" style="overflow: scroll; width: 30%; height: 70vh; color: var(--success); background: var(--white); margin-bottom: 10px;">
                                        
                                        
                                        
                                    </div>

                                    <!--Map Loader-->
                                    <div runat="server" id="map_loader" class="bg-dark flex" style="width: 70%;height: 70vh;">
                                        
                                        

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
     <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="row">
                        <div class="col">
                            <div class="row">
                                <div class="col"><img class="img-fluid ml-4" style="width: 109px;height: 68px;" src="assets/img/Vegi%20Fruits%20Logo%20-%20Footer.svg"/>
                                    <p class="text-monospace text-left text-sm-left text-dark ml-5" style="font-size: 13px;font-family: Nunito, sans-serif;padding: -3px;"><strong>ONLINE MARKET</strong></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-12">
                                            <p class="text-monospace text-center text-sm-left text-dark ml-3" style="font-size: 11px;font-family: Acme, sans-serif;padding: 1px;margin: 2px;"><strong>NATURAL | ORGANIC | FRESH</strong></p><i class="fa fa-phone ml-3"></i><span class="ml-2" style="font-size: 12px;"><a class="text-dark text-decoration-none" href="tel: +94 322245459">+94 322245459</a></span>
                                            <div class="row">
                                                <div class="col">
                                                    <div class="row">
                                                        <div class="col"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24" fill="none" class="ml-3">
                                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M3.00977 5.83789C3.00977 5.28561 3.45748 4.83789 4.00977 4.83789H20C20.5523 4.83789 21 5.28561 21 5.83789V17.1621C21 18.2667 20.1046 19.1621 19 19.1621H5C3.89543 19.1621 3 18.2667 3 17.1621V6.16211C3 6.11449 3.00333 6.06765 3.00977 6.0218V5.83789ZM5 8.06165V17.1621H19V8.06199L14.1215 12.9405C12.9499 14.1121 11.0504 14.1121 9.87885 12.9405L5 8.06165ZM6.57232 6.80554H17.428L12.7073 11.5263C12.3168 11.9168 11.6836 11.9168 11.2931 11.5263L6.57232 6.80554Z" fill="currentColor"></path>
                                                            </svg><span class="ml-2" style="font-size: 12px;"><a class="text-dark text-decoration-none" href="mailto: vegifruits@gmail.com">vegifruits@gmail.com</a></span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="row pt-3">
                                <div class="col">
                                    <h1 class="text-left text-dark pl-4" style="font-size: 19px;font-family: Audiowide, cursive;">Quick Links</h1>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <ul class="pr-3" style="text-align: left;">
                                        <li><a class="text-decoration-none text-dark" href="https://www.doa.gov.lk/">Department of Agriculture</a></li>
                                        <li><a class="text-decoration-none text-dark" href="https://www.keellssuper.com">Keels</a></li>
                                        <li><a class="text-decoration-none text-dark" href="http://www.agrimin.gov.lk">Ministry of Agriculture</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="row">
                                <div class="col">
                                    <div class="row">
                                        <div class="col pt-3">
                                            <h1 class="text-left text-dark pl-2" style="font-size: 19px;font-family: Audiowide, cursive;">Authorized By</h1>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12"><img class="img-fluid" src="assets/img/Keells_Super_logo_1.png" style ="width:50%;"/><img class="img-fluid" src="assets/img/DoA%20Logo.png" style ="width:50%;"/></div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
</html>
