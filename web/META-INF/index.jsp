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
        <title>Maura Diner</title>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" />    
        <link href="css/templatemo-style.css" rel="stylesheet" />
        <link href="css/all.min.css" rel="stylesheet" />
    </head>

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
                                    <li class="tm-nav-li"><a href="${a.role == 1 && a.id!=null ? "alist" : "list"} " class="tm-nav-link active ">${a.role == 1 && a.id!=null ? "Manager" : "Shop"}</a></li>
                                        <c:set var="size" value="${sessionScope.size}"/>
                                    <li class="tm-nav-li"><a href="${a.role == 1 ? "revenue" : "cart.jsp"}" class="tm-nav-link ">${a.role == 1 && a.id!=null ? "Revenue statistics" : "Cart"} ${size}</a></li>
                                    <li class="tm-nav-li"><a href="${a.id == null ? "login.jsp" : "profile.jsp"} " class="tm-nav-link">Profile</a></li>
                                    <li class="tm-nav-li"><a href="logout" class="tm-nav-link">${a.id == null ? "" : "Log Out"}</a></li>
                                </ul>
                            </nav>	
                        </div>
                    </div>
                </div>
            </div>

            <main>







                <div class="tm-container-inner-2 tm-contact-section">
                    <div class="row">
                        <div class="col-md-12"><h3 style="color: red">${requestScope.error}</h3>
                            <form action="searchprodbyname" method="get" class="tm-contact-form">

                                <div class="form-group">
                                    <input  name="search" type="text" class="form-control" placeholder="Search by name" required="" />
                                    <div class="form-group tm-d-flex">
                                        <input type="submit" class="tm-btn tm-btn-success tm-btn" value="Search">
                                    </div>
                                </div>
                            </form>
                        </div><!-- comment -->
                    </div>
                </div>
                <div class="tm-container-inner-2 tm-contact-section" >
                    <div class="row" style="margin-left: 300px;
                         margin-top: -140px">
                        <div class="col-md-8">
                            <form action="searchby">
                                <input type="radio" value="1" name="searchbyprice"/> 10000→30000 
                                <input type="radio" value="2" name="searchbyprice" /> 30000→50000
                                <input type="radio" value="3" name="searchbyprice" /> 50000↑<br/>


                                <c:forEach var="sb" items="${requestScope.categories}">
                                    <input type="radio" name="searchbycid" value="${sb.id}" />${sb.name}
                                </c:forEach>


                                <div class="form-group tm-d-flex">
                                    <input type="submit" class="tm-btn tm-btn-success tm-btn" value="Search">
                                </div>
                            </form>


                        </div>
                    </div>
                </div>





               
                <div class="tm-paging-links">
                    <nav>
                        <ul>
                            <c:set var="maxPage" value="${requestScope.maxPage}"/>

                            <c:forEach items="${requestScope.categories}" var="c">
                                <li    class="tm-paging-item" > <a style="padding: 10px 30px;
                                                                   display: flex;
                                                                   align-items: center;
                                                                   justify-content: center;
                                                                   text-decoration: none;
                                                                   color: #2F956D;
                                                                   background-color: transparent;" href="products?cid=${c.id}&page=1 " class="btn-link active">${c.name}</a></li>

                            </c:forEach>
                        </ul>
                    </nav>
                </div>
                <c:if test="${param.cid!=null}">
                    <div class="tm-container-inner-2 tm-contact-section">
                        <div class="row">
                            <div class="col-md-4">
                                <form action="sort"  class="tm-contact-form">

                                    <div class="form-group">
                                        <input type="hidden" name="cid" value="${param.cid}"/>
                                        <div class=" tm-d-flex" >
                                            <select name="sortby"> 
                                                <option value="prup">Price ↑</option> 
                                                <option value="prdown">Price ↓</option>
                                                <option value="nameup">A to Z</option>
                                                <option value="namedown">Z to A</option>
                                            </select>
                                            <div class="form-group tm-d-flex">
                                                <input type="submit" class="tm-btn tm-btn-success tm-btn" value="Sort">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div><!-- comment -->
                        </div>
                    </div>
                </c:if>






                <!-- Pagination -->
                

                <h2 style="text-align: center; color: #319966">${param.cid==null? "Please select a category": ""}</h2>

               


                <div class="row tm-gallery">
                    <div id="tm-gallery-page-pizza" class="tm-gallery-page">


                        <!-- show list products -->
                        <c:forEach items="${requestScope.products}" var="p">

                            <form action="buy" method="post" id="myform">
                                <article class="col-lg-3 col-md-4 col-sm-6 col-3 tm-gallery-item" >

                                    <figure><a cursor-p href="detail?id=${p.id}&?cid=${param.cid}">
                                            <img src="img/${p.image}" height="250px" width="250px" alt="Image" class=" tm-gallery-img" /></a>
                                        <figcaption>
                                            <h4 class="tm-gallery-title">${p.name}</h4>

                                            <p class="tm-gallery-price">${p.price} đ</p>

                                            <div class="form-group tm-d-flex">
                                                <div class="form-group">
                                                    <input type="number" name="num" value="" class="form-control" placeholder="Quantity" required="" />
                                                    <input type="hidden" name="id" value="${p.id}"/>
                                                </div>
                                                <input type="submit" class="tm-btn tm-btn-success tm-btn" onclick="buy('${p.id}')"  value="Buy now!">
                                            </div>
                                        </figcaption>
                                    </figure>
                                </article>
                            </form>

                        </c:forEach>   

                    </div> 
                </div>

                <style>
                    .page-link {
                        padding: 0.375rem 0.75rem;
                    }
                    .pagination {
                        display: flex;
                        padding-left: 0;
                        list-style: none;
                        justify-content: center
                    }
                    .page-link-detail{
                        background-color: #319966;
                        color: white;
                        padding: 5px
                    }
                    .page-item-detail{

                    }
                    .page-item.active .page-link {
                        z-index: 3;
                        text-decoration: none;
                        color: #319966;
                        background-color: transparent
                    }
                    .page-item.disabled .page-link {

                        pointer-events: none;
                        color: #319966;
                        background-color: transparent;
                        border-color: #dee2e6;
                    }
                    .pagination-lg .page-item:first-child .page-link {
                        border-top-left-radius: 0.3rem;
                        border-bottom-left-radius: 0.3rem;
                    }
                    .pagination-lg .page-item:last-child .page-link {
                        border-top-right-radius: 0.3rem;
                        border-bottom-right-radius: 0.3rem;
                    }
                </style>
<div>
                    <nav aria-label="Page navigation" >
                        <ul class="pagination" >

                            <% String cid = (String) request.getAttribute("cateid"); 
                                if(cid!=null){
                            %>

                            <li class="page-item"><a class="page-link" href="products?cid=${param.cid}&page=1">${param.page ==1 ||param.page ==0  ? "" : "<<<"}</a></li>
                            <li class="page-item"><a class="page-link" href="products?cid=${param.cid}&page=${param.page-1}">${param.page ==1 ||param.page ==0 ? "" : "<"}</a></li>
                            <li class="page-item-detail" ><a  class="page-link-detail" href="products?cid=${param.cid}&page=${param.page}">${param.page}</a></li>

                            <li class="page-item"><a class="page-link" href="products?cid=${param.cid}&page=${param.page+1}">${param.page == maxPage ? "" : ">"}</a></li>
                            <li class="page-item"><a class="page-link" href="products?cid=${param.cid}&page=${maxPage}">${param.page ==maxPage ? "" : ">>>"}</a></li>
                                <% } %>
                        </ul>
                    </nav>
                </div>
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
                                                    function buy(id) {
                                                        document.f.action = "buy?id=" + id;
                                                        document.f.submit();
//                                                          document.getElementById('myform').submit();
                                                    }
        </script>

    </body>
</html>
