<%-- 
    Document   : index
    Created on : 14-Oct-2022, 21:47:53
    Author     : Tlinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Profile</title>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" />    
        <link href="css/templatemo-style.css" rel="stylesheet" />
    </head>
    <!--
    
    Simple House
    
    https://templatemo.com/tm-539-simple-house
    
    -->
    <body> 

        <div class="container">
            <!-- Top box -->
            <!-- Logo & Site Name -->
            <div class="placeholder">
                <div class="parallax-window">
                    <img src ="https://media.foody.vn/res/g29/287761/s/foody-bay-buffet-647-636303688495543809.jpg" style="width:1200px;height:465px;">
                    <div class="tm-header">
                        <div class="row tm-header-inner">
                            <div class="col-md-6 col-12">
                                <img src="img/simple-house-logo.png" alt="Logo" class="tm-site-logo" /> 
                                <div class="tm-site-text-box">
                                    <style>
                                        .text-frame {
                                            padding: 20px;
                                            background-color: rgba(0, 0, 0, 0.7);
                                            color: #fff;
                                            width: 300px;
                                        }
                                    </style>

                                    <body>
                                        <div class="text-frame">
                                            <h1 class="tm-site-title">Food Stall</h1>
                                            <h6 class="tm-site-description">Thực phẩm dành cho mọi nhà</h6>	
                                        </div>
                                    </body>			
                                </div>
                            </div>
                            <nav class="col-md-8 col-12 tm-nav">
                                <ul class="tm-nav-ul">
                                    <c:set var="a" value="${sessionScope.account}"/>
                                    <li class="tm-nav-li"><a href="${a.role == 1 && a.id!=null ? "" : "shophome"}" class="tm-nav-link  ">${a.role == 1 && a.id!=null ? "" : "Home"}</a></li>
                                    <li class="tm-nav-li"><a href="${a.role == 1 && a.id!=null ? "alist" : "list"} " class="tm-nav-link  ">${a.role == 1 && a.id!=null ? "Manager" : "Shop"}</a></li>
                                    <li class="tm-nav-li"><a href="${a.role == 1 ? "getorderbydate" : ""} " class="tm-nav-link  ">${a.role == 1 && a.id!=null ? "Statistic detail" : ""}</a></li>
                                        <c:set var="size" value="${sessionScope.size}"/>
                                    <li class="tm-nav-li"><a href="cart.jsp" class="tm-nav-link ">Cart  ${size}</a></li>
                                    <li class="tm-nav-li"><a href="${a.id == null ? "login.jsp" : "profile.jsp"} " class="tm-nav-link active">Profile</a></li>
                                    <li class="tm-nav-li"><a href="logout" class="tm-nav-link">${a.id == null ? "" : "Log Out"}</a></li>
                                </ul>
                            </nav>	
                        </div>
                    </div>
                </div>
            </div>

            <main>
                <header class="row tm-welcome-section">


                    <h3 class="col-12 text-center tm-section-title">Welcome ${a.role == 1? "Admin" : "User"} ${a.fullname}</h3>
                    <h3 class="col-6 text-center tm-section-title">Email: ${a.email}</h3>
                    <h3 class="col-6 text-center tm-section-title">Phone Number: ${a.phonenum}</h3>
                    <h3 class="col-6 text-center tm-section-title">Address: ${a.address}</h3> 
                </header>
                <a href="changepass.jsp" class="tm-register">
                    <i>Change password</i>
                </a><br/>
                <a href="changeprofile.jsp" class="tm-register">
                    <i>Change profile information</i>
                </a>
            </main>

            <footer class="tm-footer">
                <div class="tm-address">
                    <h4 class="tm-info-title tm-text-success">Our Address</h4>
                    <address>
                        Local Host port 9999
                    </address>
                    <a href="tel:0395931502" class="tm-contact-link">
                        <i class="fas fa-phone tm-contact-icon"></i>0918970692
                    </a>
                    <a href="mailto:no.72bylc@gmail.com" class="tm-contact-link">
                        <i class="fas fa-envelope tm-contact-icon"></i>linhlpthe179020@fpt.edu.vn
                    </a>
                </div>
            </footer>
        </div>
        <script>
            $(document).ready(function () {
                // Handle click on paging links
                $('.tm-paging-link').click(function (e) {
                    e.preventDefault();

                    var page = $(this).text().toLowerCase();
                    $('.tm-gallery-page').addClass('hidden');
                    $('#tm-gallery-page-' + page).removeClass('hidden');
                    $('.tm-paging-link').removeClass('active');
                    $(this).addClass("active");
                });
            });
        </script>
    </body>
</html>
