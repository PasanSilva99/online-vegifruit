<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Vegifruit_Part_1.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
    <title>Add Product</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" />
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css" />
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css" />

    <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>


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
                                    <div class="form-group">
                                        <label>Name of the Product</label><asp:TextBox runat="server" ID="tb_productName" class="form-control form-control-user" type="text" Style="height: 50px; border-radius: 2em;" aria-describedby="emailHelp" placeholder="Product Name" name="product_name" required="" minlength="3" /></div>
                                    <div class="form-group">
                                        <label>Amount</label>
                                        <asp:TextBox ID="tb_weight" runat="server" class="form-control" Style="border-radius: 2em; height: 50px;" type="number" placeholder="Weight In Kilogram" />

                                    </div>
                                    <div class="form-group">
                                        <label>Price (Rs.)</label><asp:TextBox runat="server" ID="tb_price" class="form-control" type="number" Style="border-radius: 2em; height: 50px;" placeholder="Ex:1000" required="" /></div>

                                    <div class="form-group">
                                        <label>Upload up to 5 Images</label>
                                        <asp:FileUpload ID="ImageUpload1" runat="server" class="form-control" Style="border-radius: 2em; height: 50px; border: 0;" required />
                                        <asp:FileUpload ID="ImageUpload2" runat="server" class="form-control" Style="border-radius: 2em; height: 50px; border: 0;" />
                                        <asp:FileUpload ID="ImageUpload3" runat="server" class="form-control" Style="border-radius: 2em; height: 50px; border: 0;" />
                                        <asp:FileUpload ID="ImageUpload4" runat="server" class="form-control" Style="border-radius: 2em; height: 50px; border: 0;" />
                                        <asp:FileUpload ID="ImageUpload5" runat="server" class="form-control" Style="border-radius: 2em; height: 50px; border: 0;" />

                                        <div class="form-group">
                                            <label>Select Location</label>
                                            <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
                                            <script
                                                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA7M0TI9M3e5yWaKWDQj5imEejUFrJnKRA&callback=initMap&libraries=&v=weekly"
                                                defer></script>
                                            <div>
                                                <asp:TextBox runat="server" ID="tb_latlng" style="display:none;"/>
                                            </div>
                                            <div runat="server" id="map_holder" style="width: 100%; height: 80vh; background-color: darkgrey;">
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

                                                <div id="map" style="width: 100%; height: 80vh; background-color: antiquewhite;"></div>
                                            </div>
                                        </div>
                                        <asp:Button runat="server" class="btn btn-primary btn-block text-white btn-user" Style="background: #4E8D02; border-style: none;" Text="Save" OnClick="Save"></asp:Button>
                                        <hr />
                                    </div>
                                    <div class="text-center"><a class="small" href="index.html">Back to Dashboard</a></div>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="assets/js/theme.js"></script>
</body>
</html>
