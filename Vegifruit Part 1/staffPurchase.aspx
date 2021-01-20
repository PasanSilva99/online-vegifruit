<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staffPurchase.aspx.cs" Inherits="Vegifruit_Part_1.staffPurchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no"/>
    <title>Purchase</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Adamina"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alfa+Slab+One"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Atomic+Age"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css"/>
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css"/>
    <link rel="stylesheet" href="assets/css/Team-Clean.css"/>
</head>

<body id="page-top">

    <form id="purchase" runat="server">
        
    <div id="wrapper">
        <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0" style="background: rgb(37,38,37);">
            <div class="container-fluid d-flex flex-column p-0">
                <div class="container">
                    <div class="row">
                        <div class="col"><img style="width: 188px;height: 115px;" src="assets/img/Vegi%20Fruits%20Logo%20SVG%20NEW.svg"/></div>
                    </div>
                </div><a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
                    <div class="sidebar-brand-icon rotate-n-15"></div>
                    <div class="sidebar-brand-text mx-3"></div>
                </a>
                <hr class="sidebar-divider my-0"/>
                <ul class="nav navbar-nav text-light" id="accordionSidebar">
                    <li class="nav-item"><a class="nav-link" href="staffDashboard.aspx"> <i class="fas fa-tachometer-alt"></i><span>Dashboard</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="staffPurchase.aspx"><i class="fas fa-table"></i><span>Purchace Details</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="staffMap.aspx"><i class="fas fa-user-circle"></i><span>Harvest Map</span></a></li>
                   
                </ul>
                <div class="text-center d-none d-md-inline"><asp:button runat="server" class="btn rounded-circle border-0" id="sidebarToggle" type="button"></asp:button></div>
                <div class="container d-xl-flex align-items-xl-end">
                    <div class="row d-xl-flex align-items-xl-end">
                        <div class="col d-xl-flex align-items-xl-end" style="width: 215px;height: 120px;"><img class="img-fluid" style="background: url(&quot;assets/img/DoA%20Logo.png&quot;);width: 188px;" /></div>
                    </div>
                </div>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid"><asp:button runat="server" class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"/>
                        <div class="form-inline d-none d-sm-inline-block mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search"/>
                            <div class="input-group"><asp:textBox runat="server" ID="search" class="bg-light form-control border-0 small" type="text" placeholder="Search for ..." style="background: rgb(37,44,30);"/>
                                <div class="input-group-append"><asp:button runat="server" class="btn btn-primary py-0" type="button" style="background: #2e4;"/></div>
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
                    
                </nav>
                <div class="container-fluid" style="background: var(--white);">
                    <h3 class="text-dark mb-4" style="background: #ffffff;color: rgb(9,31,18);font-weight: 900;">Purchase Details</h3>
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <p class="text-primary m-0 font-weight-bold" style="font-family: Adamina, serif;font-weight: 900;font-size: 20px;">Farmers' Purchases Information</p>
                            <div style="height: 13vh;"><span style="background: #f8f9f8;color: #191970;font-weight: 700;">&nbsp; V - Vegetable &amp; Legumes</span><span class="d-xl-flex align-items-xl-start" style="font-weight: 700;font-size: 18px;color: #191970;">&nbsp; F - Fruit</span><span style="color: #191970;font-weight: 700;">&nbsp; P - Paddy &amp; Grains&nbsp;</span><span class="d-xl-flex align-items-xl-start" style="color: #191970;font-weight: 700;">&nbsp; F - Fish &amp; Meals</span></div>
                        </div>
                        <div class="card-body" style="height: 900px;">
                            <div class="row">
                                <div class="col-md-6 text-nowrap">
                                    <div id="dataTable_length" class="dataTables_length" aria-controls="dataTable"><label style="color: rgb(64,30,160);font-weight: 600;">Show&nbsp;<select class="form-control form-control-sm custom-select custom-select-sm">
                                                <option value="10" selected="">10</option>
                                                <option value="25">25</option>
                                                <option value="50">50</option>
                                                <option value="100">100</option>
                                            </select>&nbsp;</label></div>
                                </div>
                                <div class="col-md-6">
                                    <div class="text-md-right dataTables_filter" id="dataTable_filter"><label><asp:TextBox runat="server" ID="txtRgt" type="search" class="form-control form-control-sm" aria-controls="dataTable" placeholder="Search"/></label></div>
                                </div>
                            </div>
                            <div class="table-responsive table mt-2" id="dataTable" role="grid" aria-describedby="dataTable_info"/>
                                <table class="table my-0" id="dataTable">
                                    <thead>
                                        <tr>
                                            <th style="color: rgb(18,20,34);">Date</th>
                                            <th style="color: rgb(18,20,34);">Name</th>
                                            <th style="color: rgb(18,20,34);">Food Type</th>
                                            <th style="color: rgb(18,20,34);">Category</th>
                                            <th style="color: rgb(18,20,34);">quantity (Kg)</th>
                                            <th style="color: rgb(18,20,34);">Price Per Unit</th>
                                            <th style="color: rgb(18,20,34);">Total Price(Rs)</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                        <tr>
                                            <td></td>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar5.jpeg"/>V. Weerawansha</td>
                                            <td>Green Gram</td>
                                            <td>R</td>
                                            <td>50.700</td>
                                            <td>40</td>
                                            <td>2028</td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td><strong style="color: rgb(18,20,34);">Total</strong></td>
                                            <td></td>
                                            <td></td>
                                            <td><strong></strong></td>
                                            <td style="color: rgb(18,20,34);">3908.4</td>
                                            <td style="color: rgb(18,20,34);">688</td>
                                            <td style="color: rgb(18,20,34);">1,03211</td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-md-6 align-self-center">
                                    <p id="dataTable_info" class="dataTables_info" role="status" aria-live="polite">Showing 1 to 10 of 27</p>
                                </div>
                                <div class="col-md-6">
                                    <nav class="d-lg-flex justify-content-lg-end dataTables_paginate paging_simple_numbers">
                                        <ul class="pagination">
                                            <li class="page-item disabled"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
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
