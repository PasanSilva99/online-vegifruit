<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staffDashboard.aspx.cs" Inherits="Vegifruit_Part_1.staffDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no"/>
    <title>Dashboard - Staff</title>
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
    <form id="dashboad2" runat="server">
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
                <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
                <div class="container d-xl-flex align-items-xl-end">
                    <div class="row d-xl-flex align-items-xl-end">
                        <div class="col d-xl-flex align-items-xl-end" style="width: 215px;height: 120px;"><img class="img-fluid" style="background: url(&quot;assets/img/DoA%20Logo.png&quot;);width: 188px;" src="assets/img/DoA%20Logo.png"/></div>
                    </div>
                </div>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <div class="form-inline d-none d-sm-inline-block mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group"><asp:TextBox runat="server" ID="srch" class="bg-light form-control border-0 small" type="text" placeholder="Search for ..." style="background: rgb(37,44,30);"/>
                                <div class="input-group-append"><button class="btn btn-primary py-0" type="button" style="background: #2e4;"><i class="fas fa-search" style="background: #2e4;"></i></button></div>
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

                            <!--Set the user label-->
                            <div class="d-none d-sm-block topbar-divider"></div>
                            <li class="nav-item dropdown no-arrow">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><span class="d-none d-lg-inline mr-2 text-gray-600 small"><asp:Label runat ="server" ID="lbl_DisplayName"/></span><img class="border rounded-circle img-profile" src="assets/img/avatars/avatar1.jpeg"/></a>
                                    <div class="dropdown-menu shadow dropdown-menu-right animated--grow-in"><a class="dropdown-item" href="Profile.aspx"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Profile</a>
                                        <div class="dropdown-divider"></div><a class="dropdown-item" href="#"><i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Logout</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div class="container-fluid">
                    <div class="d-sm-flex justify-content-between align-items-center mb-4">
                        <h3 class="text-dark mb-0">Dashboard</h3><a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="#"><i class="fas fa-download fa-sm text-white-50"></i>&nbsp;Generate Report</a>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-left-primary py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col mr-2">
                                            <div class="text-uppercase text-primary font-weight-bold text-xs mb-1"><span>Purchased harvest(monthly)</span></div>
                                            <div class="text-dark font-weight-bold h5 mb-0"><span>Rs138028.00</span></div>
                                        </div>
                                        <div class="col-auto"><i class="fas fa-calendar fa-2x text-gray-300"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-left-success py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col mr-2">
                                            <div class="text-uppercase text-success font-weight-bold text-xs mb-1"><span>Purchased harvest(Annual)</span></div>
                                            <div class="text-dark font-weight-bold h5 mb-0"><span>$215,000</span></div>
                                        </div>
                                        <div class="col-auto"><i class="fas fa-dollar-sign fa-2x text-gray-300"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-left-info py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col mr-2">
                                            <div class="text-uppercase text-info font-weight-bold text-xs mb-1"><span>Selected harvest</span></div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="text-dark font-weight-bold h5 mb-0 mr-3"><span>50%</span></div>
                                                </div>
                                                <div class="col">
                                                    <div class="progress progress-sm">
                                                        <div class="progress-bar bg-info" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;"><span class="sr-only">50%</span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto"><i class="fas fa-clipboard-list fa-2x text-gray-300"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-left-warning py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col mr-2">
                                            <div class="text-uppercase text-warning font-weight-bold text-xs mb-1"><span>Pending harvests</span></div>
                                            <div class="text-dark font-weight-bold h5 mb-0"><span>18</span></div>
                                        </div>
                                        <div class="col-auto"><i class="fas fa-comments fa-2x text-gray-300"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-7 col-xl-8">
                            <div class="card shadow mb-4">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h6 class="text-primary font-weight-bold m-0">Successfull Transactions(All)</h6>
                                    <div class="dropdown no-arrow"><asp:button runat="server" ID="btn1" class="btn btn-link btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false" type="button"/><i class="fas fa-ellipsis-v text-gray-400"></i>
                                        <div class="dropdown-menu shadow dropdown-menu-right animated--fade-in">
                                            <p class="text-center dropdown-header">dropdown header:</p><a class="dropdown-item" href="#">&nbsp;Action</a><a class="dropdown-item" href="#">&nbsp;Another action</a>
                                            <div class="dropdown-divider"></div><a class="dropdown-item" href="#">&nbsp;Something else here</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Revenue Chart-->
                                <div class="card-body" style="width:600px!important">
                                    <div style="width:600px">
                                        <asp:Chart ID="Chart_Successfull" runat="server" Width="600">
                                            <Series>
                                                
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea Name="Successfull"></asp:ChartArea>
                                            </ChartAreas>
                                        </asp:Chart>
                                       </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5 col-xl-4">
                            <div class="card shadow mb-4">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h6 class="text-primary font-weight-bold m-0">Successful Transaction</h6>
                                    <div class="dropdown no-arrow"><asp:button runat="server" ID="btn2" class="btn btn-link btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false" type="button"></asp:button>
                                        <div class="dropdown-menu shadow dropdown-menu-right animated--fade-in">
                                            <p class="text-center dropdown-header">dropdown header:</p><a class="dropdown-item"
                                                href="#">&nbsp;Action</a><a class="dropdown-item" href="#">&nbsp;Another action</a>
                                            <div class="dropdown-divider"></div><a class="dropdown-item" href="#">&nbsp;Something else here</a>
                                        </div>
                                    </div>
                                </div>

                                <!--pie Chart for the seperate, category wise-->
                                <div class="card-body">
                                    <div class="chart-area">
                                     <div>
                                         <asp:Chart ID="Chart_Pie" runat="server">
                                             <Series>
                                                 
                                             </Series>
                                             <ChartAreas>
                                                 <asp:ChartArea Name="Successful_one"></asp:ChartArea>
                                             </ChartAreas>
                                         </asp:Chart>

                                     </div>
                                        </div>
                                    <div class="text-center small mt-4"><span class="mr-2"><i class="fas fa-circle text-primary"></i>&nbsp;Vegitable</span><span class="mr-2"><i class="fas fa-circle text-success"></i>&nbsp;Fruits</span>
                                        <span class="mr-2"><i class="fas fa-circle text-info"></i>&nbsp;Paddy&Grains</span>
                                        <span class="mr-2"><i class="fas fa-circle text-info"></i>&nbsp;Fish&Meat</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="text-primary font-weight-bold m-0">Harvest Vastages(monthly)</h6>
                                </div>
                                <div class="card-body">
                                    <h4 class="small font-weight-bold">Vegitables<span class="float-right">68%</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-warning" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 68%;"><span class="sr-only">68%</span></div>
                                    </div>
                                    <h4 class="small font-weight-bold">Fruits<span class="float-right">27%</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-warning" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 27%;"><span class="sr-only">27%</span></div>
                                    </div>
                                    <h4 class="small font-weight-bold">Paddy&Grains<span class="float-right">1%</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-warning" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 1%;"><span class="sr-only">1%</span></div>
                                    </div>
                                    <h4 class="small font-weight-bold">Fish&meals<span class="float-right">4%</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-warning" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 4%;"><span class="sr-only">4%</span></div>
                                    </div>
                                  
                                </div>
                            </div>
                            
                      
                               
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © Brand 2021</span></div>
                </div>
            </footer>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
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

