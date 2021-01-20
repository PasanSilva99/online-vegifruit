<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="harvestanalyse.aspx.cs" Inherits="Vegifruit_Part_1.harvestanalyse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no"/>
    <title>Analyze</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Acme"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css"/>
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css"/>
    <link rel="stylesheet" href="assets/css/Team-Boxed.css"/>
</head>
<body>
    <form id="harvestanalyse" runat="server">
        <div id="wrapper">
                <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0" style="background: #343434;">
                <div class="container-fluid d-flex flex-column p-0"><a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
                        <div class="sidebar-brand-icon rotate-n-15"><img class="img-fluid" src="assets/img/Vegi%20Fruits%20Logo%20-%20Footer.svg" style="margin-top: 65px;margin-right: 0px;margin-left: -23px;"/></div>
                    </a>
                    <hr class="sidebar-divider my-0"/>
                    <ul class="nav navbar-nav text-light" id="accordionSidebar">
                     <li class="nav-item" style="margin-top: 70px;"><a class="nav-link active" href="publicHome.aspx"><i class="fa fa-home"></i><span>Home</span></a></li>
                        <li class="nav-item"><a class="nav-link" href="harvestmap.aspx"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" class="bi bi-map">
                                <path fill-rule="evenodd" d="M15.817.113A.5.5 0 0 1 16 .5v14a.5.5 0 0 1-.402.49l-5 1a.502.502 0 0 1-.196 0L5.5 15.01l-4.902.98A.5.5 0 0 1 0 15.5v-14a.5.5 0 0 1 .402-.49l5-1a.5.5 0 0 1 .196 0L10.5.99l4.902-.98a.5.5 0 0 1 .415.103zM10 1.91l-4-.8v12.98l4 .8V1.91zm1 12.98l4-.8V1.11l-4 .8v12.98zm-6-.8V1.11l-4 .8v12.98l4-.8z"></path>
                            </svg><span>&nbsp; Harvest - Map</span></a></li>
                        <li class="nav-item"><a class="nav-link" href="harvestanalyse.aspx"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" class="bi bi-graph-up">
                                <path fill-rule="evenodd" d="M0 0h1v15h15v1H0V0zm10 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V4.9l-3.613 4.417a.5.5 0 0 1-.74.037L7.06 6.767l-3.656 5.027a.5.5 0 0 1-.808-.588l4-5.5a.5.5 0 0 1 .758-.06l2.609 2.61L13.445 4H10.5a.5.5 0 0 1-.5-.5z"></path>
                            </svg><span>&nbsp; Harvest - Analyse</span></a></li>
                         <li class="nav-item"><a class="nav-link" href="Login.aspx"><img class="log-in-icon" src="assets/img/keylogin.png" alt="navigation-login" /><span>&nbsp; Log In</span></a></li>
                    </ul>
                    <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
                </div>
            </nav>
            <div class="d-flex flex-column" id="content-wrapper">
                <div id="content">
                    <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                        <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                            <div class="form-inline d-none d-sm-inline-block mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                                <div class="input-group"><asp:TextBox runat ="server" ID="tb1_search" class="bg-light form-control border-0 small" type="text" placeholder="Search for ..."></asp:TextBox>
                                    <div class="input-group-append"><button class="btn btn-primary py-0" type="button" style="background: #8FC52A;"><i class="fas fa-search"></i></button></div>
                                </div>
                            </div>
                            <ul class="nav navbar-nav">
                                <li class="nav-item">
                                    <asp:Button runat ="server" class="btn btn-primary"  type="button" style="background: rgb(249,161,1);"  Text ="Sell Your Harvest" OnClick ="openRegister"> </asp:Button>
                                </li>
                            </ul>
                        </div>
                    </nav>
                <div class="container-fluid">
                    <div class="d-sm-flex justify-content-between align-items-center mb-4">
                        <h3 class="text-dark mb-0">Harvest-Analyse</h3>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-left-primary py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col mr-2">
                                            <div class="text-uppercase text-primary font-weight-bold text-xs mb-1"><span>Purchased harvest(Weekly)</span></div>
                                            <div class="text-dark font-weight-bold h5 mb-0"><span>Rs165,240.00</span></div>
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
                                            <div class="text-uppercase text-success font-weight-bold text-xs mb-1"><span>Purchased harvest(Monthly)</span></div>
                                            <div class="text-dark font-weight-bold h5 mb-0"><span>Rs.889,516.00</span></div>
                                        </div>
                                        <div class="col-auto"><i class="fas fa-dollar-sign fa-2x text-gray-300"></i></div>
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

    </form>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/chart.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="assets/js/theme.js"></script>
</body>
</html>
