<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewLocation.aspx.cs" Inherits="Vegifruit_Part_1.AddNewLocation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no"/>
    <title>Add Location</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css"/>
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css"/>
    <link rel="stylesheet" href="assets/css/common.css" />

    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    
    <style type="text/css">
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
     
      .custom-map-control-button:hover {
        background: #ebebeb;
      }
    </style>

     <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA7M0TI9M3e5yWaKWDQj5imEejUFrJnKRA&callback=initMap&libraries=&v=weekly"
      defer
    ></script>

</head>
<body>
    <form id="AddNewLocation" runat="server">
        <div id="wrapper">
        <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0" style="background: #343434;">
            <div class="container-fluid d-flex flex-column p-0"><a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
                    <div class="sidebar-brand-icon rotate-n-15"><img class="img-fluid" src="assets/img/Vegi%20Fruits%20Logo%20SVG%20NEW.svg" style="margin-top: 65px;margin-right: 0px;margin-left: -23px;"/></div>
                </a>
                <hr class="sidebar-divider my-0"/>
                <ul class="nav navbar-nav text-light" id="accordionSidebar">
                    <li class="nav-item" style="margin-top: 70px;"><a class="nav-link" href="index.html" style="margin-top: 32px;"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="addproduct.html"><i class="fa fa-plus"></i><span>Add Product</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="myproducts.html"><i class="fas fa-table"></i><span>My Products</span></a></li>
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
                            <div class="input-group"><asp:TextBox runat="server" ID="tb_search" class="bg-light form-control border-0 small" type="text" placeholder="Search for ..."/>
                                <div class="input-group-append"><button class="btn btn-primary py-0" type="button" style="background: #8FC52A;"><i class="fas fa-search"></i></button></div>
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
                            <li class="nav-item dropdown no-arrow mx-1">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><span class="badge badge-danger badge-counter">3+</span><i class="fas fa-bell fa-fw"></i></a>
                                    <div class="dropdown-menu dropdown-menu-right dropdown-list dropdown-menu-right animated--grow-in">
                                        <h6 class="dropdown-header" style="background: #90C62A;border-style: none;">alerts center</h6><a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="mr-3">
                                                <div class="bg-primary icon-circle"><i class="fas fa-file-alt text-white"></i></div>
                                            </div>
                                            <div><span class="small text-gray-500">December 12, 2019</span>
                                                <p>A new monthly report is ready to download!</p>
                                            </div>
                                        </a><a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="mr-3">
                                                <div class="bg-success icon-circle"><i class="fas fa-donate text-white"></i></div>
                                            </div>
                                            <div><span class="small text-gray-500">December 7, 2019</span>
                                                <p>$290.29 has been deposited into your account!</p>
                                            </div>
                                        </a><a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="mr-3">
                                                <div class="bg-warning icon-circle"><i class="fas fa-exclamation-triangle text-white"></i></div>
                                            </div>
                                            <div><span class="small text-gray-500">December 2, 2019</span>
                                                <p>Spending Alert: We've noticed unusually high spending for your account.</p>
                                            </div>
                                        </a><a class="text-center dropdown-item small text-gray-500" href="#">Show All Alerts</a>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item dropdown no-arrow mx-1">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><i class="fas fa-envelope fa-fw"></i><span class="badge badge-danger badge-counter">7</span></a>
                                    <div class="dropdown-menu dropdown-menu-right dropdown-list dropdown-menu-right animated--grow-in">
                                        <h6 class="dropdown-header" style="border-style: none;background: #8FC52A;">alerts center</h6><a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="dropdown-list-image mr-3"><img class="rounded-circle" src="assets/img/avatars/avatar4.jpeg"/>
                                                <div class="bg-success status-indicator"></div>
                                            </div>
                                            <div class="font-weight-bold">
                                                <div class="text-truncate"><span>Hi there! I am wondering if you can help me with a problem I've been having.</span></div>
                                                <p class="small text-gray-500 mb-0">Emily Fowler - 58m</p>
                                            </div>
                                        </a><a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="dropdown-list-image mr-3"><img class="rounded-circle" src="assets/img/avatars/avatar2.jpeg"/>
                                                <div class="status-indicator"></div>
                                            </div>
                                            <div class="font-weight-bold">
                                                <div class="text-truncate"><span>I have the photos that you ordered last month!</span></div>
                                                <p class="small text-gray-500 mb-0">Jae Chun - 1d</p>
                                            </div>
                                        </a><a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="dropdown-list-image mr-3"><img class="rounded-circle" src="assets/img/avatars/avatar3.jpeg"/>
                                                <div class="bg-warning status-indicator"></div>
                                            </div>
                                            <div class="font-weight-bold">
                                                <div class="text-truncate"><span>Last month's report looks great, I am very happy with the progress so far, keep up the good work!</span></div>
                                                <p class="small text-gray-500 mb-0">Morgan Alvarez - 2d</p>
                                            </div>
                                        </a><a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="dropdown-list-image mr-3"><img class="rounded-circle" src="assets/img/avatars/avatar5.jpeg"/>
                                                <div class="bg-success status-indicator"></div>
                                            </div>
                                            <div class="font-weight-bold">
                                                <div class="text-truncate"><span>Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</span></div>
                                                <p class="small text-gray-500 mb-0">Chicken the Dog · 2w</p>
                                            </div>
                                        </a><a class="text-center dropdown-item small text-gray-500" href="#">Show All Alerts</a>
                                    </div>
                                </div>
                                <div class="shadow dropdown-list dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown"></div>
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
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Add new location</h4>
                            
                            <div class="w-100 d-flex justify-content-end align-items-center">

                           <script>
                               let map;

                               function initMap() {

                                   var myLatlng = new google.maps.LatLng(-25.363882, 131.044922);


                                   navigator.geolocation.getCurrentPosition(
                                       (position) => {
                                           const pos = {
                                               lat: position.coords.latitude,
                                               lng: position.coords.longitude,
                                           };

                                           myLatlng = pos;

                                           map = new google.maps.Map(document.getElementById("map"), {
                                               center: pos,
                                               zoom: 19,
                                           });

                                           // Place a draggable marker on the map
                                           var marker = new google.maps.Marker({
                                               position: pos,
                                               map: map,
                                               draggable: true,
                                               title: "Set your location"
                                           });
                                           marker.addListener("dragend", () => {
                                               setCoordinates(marker.getPosition());
                                           });

                                           map.addListener("center_changed", () => {
                                               // 3 seconds after the center of the map has changed, pan back to the
                                               // marker.
                                               window.setTimeout(() => {
                                                   map.panTo(marker.getPosition());
                                               }, 3000);


                                           });
                                       });

                               }

                               function setCoordinates(c) {
                                   $(document).ready(function () {
                                       document.getElementById('<%=tb_latlng.ClientID %>').value = c;
                                    });
                               }
                           </script>
        
                            </div>

                            <asp:TextBox runat="server" style="display:none;" ID="tb_latlng"></asp:TextBox>
                            
                            <div runat="server" id="map" style="width:100%; height:70vh"></div>

                            <div class="d-lg-flex justify-content-lg-end align-items-center">
                                <asp:TextBox runat="server" class="form-control rounded-pill m-2" ID="tb_locName" placeholder="Location Name (Required)"/>
                                <asp:Button runat="server" class="btn btn-primary"  style="margin: 10px;background: #F29900;border-style: none;" Text="Cancel"></asp:Button>
                                <asp:Button runat="server" class="btn btn-primary" type="button" style="margin: 10px;background: #8FC52A;border-style: none;" Text="Save Location" OnClick="saveLocation_Click"></asp:Button></div>
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
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/chart.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="assets/js/theme.js"></script>
</body>
</html>
