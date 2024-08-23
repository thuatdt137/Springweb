<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

                <title>OSS - Laptop Victus 16</title>

                <!-- Google font -->
                <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

                <!-- Bootstrap -->
                <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />

                <!-- Slick -->
                <link type="text/css" rel="stylesheet" href="/css/slick.css" />
                <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

                <!-- nouislider -->
                <link type="text/css" rel="stylesheet" href="/css/nouislider.min.css" />

                <!-- Font Awesome Icon -->
                <link rel="stylesheet" href="/css/font-awesome.min.css">

                <!-- Custom stlylesheet -->
                <link type="text/css" rel="stylesheet" href="/css/style.css" />
                <style>
                    .primary-btn {
                        width: 100%;
                        margin-bottom: 10px;
                    }
                </style>

            </head>

            <body>
                <jsp:include page="../layout/header1.jsp" />
                <jsp:include page="../layout/navigation.jsp" />

                <!-- SECTION -->
                <div class="section">
                    <!-- container -->
                    <div class="container">

                        <!-- row -->
                        <div class="row">
                            <div class="col-md-9">
                                <!-- Product main img -->
                                <div class="col-md-6">
                                    <div id="product-main-img">
                                        <div class="product-preview">
                                            <img src="${product.image}" alt="">
                                        </div>
                                    </div>
                                </div>
                                <!-- /Product main img -->

                                <!-- Product details -->
                                <div class="col-md-6">
                                    <div class="product-details">
                                        <h2 class="product-name">${product.name}</h2>
                                        <div>
                                            <h3 class="product-price">
                                                <fmt:formatNumber type="number" value="${product.price}" /> $
                                            </h3>
                                            <span class="product-available">${product.quantity}</span>
                                        </div>
                                        <p>${product.shortDesc}</p>

                                        <div class="add-to-cart">
                                            <div class="qty-label">
                                                Qty
                                                <div class="input-number">
                                                    <input value="1" type="number">
                                                    <span class="qty-up">+</span>
                                                    <span class="qty-down">-</span>
                                                </div>
                                            </div>
                                            <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add
                                                to
                                                cart</button>
                                        </div>

                                        <ul class="product-links">
                                            <li>Category:</li>
                                            <li><a href="#">${product.category.name}</a></li>
                                        </ul>

                                    </div>
                                </div>
                                <!-- /Product details -->

                                <!-- Product tab -->
                                <div class="col-md-12">
                                    <div id="product-tab">
                                        <!-- product tab nav -->
                                        <ul class="tab-nav">
                                            <li class="active"><a data-toggle="tab" href="#tab1">Description</a>
                                            </li>
                                        </ul>
                                        <!-- /product tab nav -->

                                        <!-- product tab content -->
                                        <div class="tab-content">
                                            <!-- tab1  -->
                                            <div id="tab1" class="tab-pane fade in active">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <p>${product.detailDesc}</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /tab1  -->

                                        </div>
                                        <!-- /product tab content  -->
                                    </div>
                                </div>
                                <!-- /product tab -->
                            </div>

                        </div>
                        <!-- /row -->
                    </div>
                    <!-- /container -->
                </div>
                <!-- /SECTION -->

                <!-- Section -->
                <div class="section">
                    <!-- container -->
                    <div class="container">
                        <!-- row -->
                        <div class="row">

                            <div class="col-md-12">
                                <div class="section-title text-center">
                                    <h3 class="title">Related Products</h3>
                                </div>
                            </div>

                            <!-- product -->
                            <div class="col-md-3 col-xs-6">
                                <div class="product">
                                    <div class="product-img">
                                        <img src="./img/product05.png" alt="">
                                        <div class="product-label">
                                            <span class="sale">-30%</span>
                                            <span class="new">NEW</span>
                                        </div>
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">Category</p>
                                        <h3 class="product-name"><a href="publicProduct.jsp">product name goes
                                                here</a></h3>
                                        <h4 class="product-price">400.000đ <del class="product-old-price">600.000đ</del>
                                        </h4>
                                        <button class="primary-btn order-submit"><i class="fa fa-shopping-cart"></i>
                                            Add to cart</button>
                                        <button class="primary-btn order-submit"><i class=""></i> Buy
                                            Now</button>
                                    </div>

                                </div>
                            </div>
                            <!-- /product -->

                            <!-- product -->
                            <div class="col-md-3 col-xs-6">
                                <div class="product">
                                    <div class="product-img">
                                        <img src="./img/product06.png" alt="">
                                        <div class="product-label">
                                            <span class="sale">-30%</span>
                                            <span class="new">NEW</span>
                                        </div>
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">Category</p>
                                        <h3 class="product-name"><a href="publicProduct.jsp">product name goes
                                                here</a></h3>
                                        <h4 class="product-price">400.000đ </h4>
                                        <button class="primary-btn order-submit"><i class="fa fa-shopping-cart"></i>
                                            Add to cart</button>
                                        <button class="primary-btn order-submit"><i class=""></i> Buy
                                            Now</button>
                                    </div>
                                </div>
                            </div>
                            <!-- /product -->

                            <div class="clearfix visible-sm visible-xs"></div>

                            <!-- product -->
                            <div class="col-md-3 col-xs-6">
                                <div class="product">
                                    <div class="product-img">
                                        <img src="./img/product04.png" alt="">
                                        <div class="product-label">
                                            <span class="sale">-30%</span>
                                            <span class="new">NEW</span>
                                        </div>
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">Category</p>
                                        <h3 class="product-name"><a href="publicProduct.jsp">product name goes
                                                here</a></h3>
                                        <h4 class="product-price">400.000đ <del class="product-old-price">600.000đ</del>
                                        </h4>
                                        <button class="primary-btn order-submit"><i class="fa fa-shopping-cart"></i>
                                            Add to cart</button>
                                        <button class="primary-btn order-submit"><i class=""></i> Buy
                                            Now</button>
                                    </div>

                                </div>
                            </div>
                            <!-- /product -->

                            <!-- product -->
                            <div class="col-md-3 col-xs-6">
                                <div class="product">
                                    <div class="product-img">
                                        <img src="./img/product03.png" alt="">
                                        <div class="product-label">
                                            <span class="sale">-30%</span>
                                            <span class="new">NEW</span>
                                        </div>
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">Category</p>
                                        <h3 class="product-name"><a href="publicProduct.jsp">product name goes
                                                here</a></h3>
                                        <h4 class="product-price">400.000đ <del class="product-old-price">600.000đ</del>
                                        </h4>
                                        <button class="primary-btn order-submit"><i class="fa fa-shopping-cart"></i>
                                            Add to cart</button>
                                        <button class="primary-btn order-submit"><i class=""></i> Buy
                                            Now</button>
                                    </div>

                                </div>
                            </div>
                            <!-- /product -->

                        </div>
                        <!-- /row -->
                    </div>
                    <!-- /container -->
                </div>
                <!-- /Section -->
                <jsp:include page="../layout/footer1.jsp" />

                <!-- jQuery Plugins -->
                <script src="/js/jquery.min.js"></script>
                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/slick.min.js"></script>
                <script src="/js/nouislider.min.js"></script>
                <script src="/js/jquery.zoom.min.js"></script>
                <script src="/js/main.js"></script>

            </body>

            </html>