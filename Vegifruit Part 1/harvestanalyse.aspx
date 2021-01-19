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
                        <li class="nav-item" style="margin-top: 70px;"><a class="nav-link" href="home.html"><i class="fa fa-home"></i><span>Home</span></a></li>
                        <li class="nav-item"><a class="nav-link" href="harvest-map.html"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" class="bi bi-map">
                                    <path fill-rule="evenodd" d="M15.817.113A.5.5 0 0 1 16 .5v14a.5.5 0 0 1-.402.49l-5 1a.502.502 0 0 1-.196 0L5.5 15.01l-4.902.98A.5.5 0 0 1 0 15.5v-14a.5.5 0 0 1 .402-.49l5-1a.5.5 0 0 1 .196 0L10.5.99l4.902-.98a.5.5 0 0 1 .415.103zM10 1.91l-4-.8v12.98l4 .8V1.91zm1 12.98l4-.8V1.11l-4 .8v12.98zm-6-.8V1.11l-4 .8v12.98l4-.8z"></path>
                                </svg><span>&nbsp; Harvest - Map</span></a></li>
                        <li class="nav-item"><a class="nav-link active" href="harvest-analyse.html"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" class="bi bi-graph-up">
                                    <path fill-rule="evenodd" d="M0 0h1v15h15v1H0V0zm10 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V4.9l-3.613 4.417a.5.5 0 0 1-.74.037L7.06 6.767l-3.656 5.027a.5.5 0 0 1-.808-.588l4-5.5a.5.5 0 0 1 .758-.06l2.609 2.61L13.445 4H10.5a.5.5 0 0 1-.5-.5z"></path>
                                </svg><span>&nbsp; Harvest - Analyse</span></a></li>
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
                                <li class="nav-item"><button class="btn btn-primary" type="button" style="background: rgb(249,161,1);"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icon-tabler-leaf">
                                            <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                            <path d="M5 21c.5 -4.5 2.5 -8 7 -10"></path>
                                            <path d="M9 18c6.218 0 10.5 -3.288 11 -12v-2h-4.014c-9 0 -11.986 4 -12 9c0 1 0 3 2 5h3z"></path>
                                        </svg>&nbsp; Sell Your Harvest</button></li>
                            </ul>
                        </div>
                    </nav>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col">
                                <div class="card" style="height: 383px;">
                                    <div class="card-body" style="height: 262px;width: 341px;">
                                        <h4 class="card-title">Title</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card">
                                    <div class="card-body" style="height: 383px;">
                                        <h4 class="card-title">Title</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="card" style="height: 383px;">
                                    <div class="card-body" style="height: 262px;width: 341px;">
                                        <h4 class="card-title">Title</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card">
                                    <div class="card-body" style="height: 383px;">
                                        <h4 class="card-title">Title</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <footer class="bg-white sticky-footer">
                    <div class="container my-auto">
                        <div class="row">
                            <div class="col">
                                <div class="row">
                                    <div class="col"><img class="img-fluid ml-4" width="30%" height="20%" style="width: 109px;height: 68px;" src="assets/img/Vegi%20Fruits%20Logo%20-%20Footer.svg"/>
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
                                    <div class="col-12"><img class="img-fluid" src="assets/img/Keells_Super_logo_1.png" width="50%"/><img class="img-fluid" src="assets/img/DoA%20Logo.png" width="50%"/></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
        </div>
    </form>
</body>
</html>
