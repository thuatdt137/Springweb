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

                <title>Online Shopping System</title>

                <!-- Google font -->
                <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

                <!-- Bootstrap -->
                <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />

                <!-- Slick -->
                <link type="text/css" rel="stylesheet" href="/css/slick.css" />
                <link type="text/css" rel="stylesheet" href="/css/slick-theme.css" />

                <!-- nouislider -->
                <link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

                <!-- Font Awesome Icon -->
                <link rel="stylesheet" href="/css/font-awesome.min.css">

                <!-- Custom stlylesheet -->
                <link type="text/css" rel="stylesheet" href="/css/style.css" />
                <style>
                    .primary-btn {
                        width: 100%;
                        /* Đảm bảo nút chiếm toàn bộ chiều rộng của phần tử cha */
                        margin-bottom: 10px;
                        /* Khoảng cách giữa các nút */
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

                            <!-- Products tab & slick -->
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="products-tabs">
                                        <!-- tab -->
                                        <div id="tab1" class="tab-pane active">
                                            <div class="products-slick" data-nav="#slick-nav-1">
                                                <c:forEach var="product" items="${products}">
                                                    <!-- product -->
                                                    <div class="col-md-4 col-xs-6">
                                                        <div class="product">
                                                            <div class="product-img">
                                                                <img src="${product.image}" alt="">
                                                            </div>
                                                            <div class="product-body">
                                                                <p class="product-category">${product.category.name}
                                                                </p>
                                                                <h3 class="product-name"><a
                                                                        href="/publicProducts/${product.id}">${product.name}</a>
                                                                </h3>
                                                                <h4 class="product-price">
                                                                    <fmt:formatNumber type="number"
                                                                        value="${product.price}" /> $
                                                                </h4>
                                                                <form action="/add-product-to-cart/${product.id}"
                                                                    method="post">
                                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                                        value="${_csrf.token}" />
                                                                    <button type="submit"
                                                                        class="primary-btn order-submit"><i
                                                                            class="fa fa-shopping-cart"></i> Add to
                                                                        cart</button>
                                                                </form>
                                                                <a class="primary-btn order-submit"
                                                                    href="/publicProducts/${product.id}">
                                                                    Buy Now</a>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <!-- /product -->
                                                </c:forEach>
                                            </div>
                                            <div id="slick-nav-1" class="products-slick-nav"></div>
                                        </div>
                                        <!-- /tab -->
                                    </div>
                                </div>
                            </div>
                            <!-- Products tab & slick -->
                        </div>
                        <!-- /row -->
                    </div>
                    <!-- /container -->
                </div>
                <!-- /SECTION -->

                <!-- SECTION -->
                <div class="section">
                    <!-- container -->
                    <div class="container">
                        <!-- row -->
                        <div class="row">

                            <!-- section title -->
                            <div class="col-md-12">
                                <div class="section-title">
                                    <h3 class="title">Top selling</h3>
                                    <div class="section-nav">
                                        <ul class="section-tab-nav tab-nav">
                                            <li class="active"><a data-toggle="tab" href="#tab2">Laptops</a></li>
                                            <li><a data-toggle="tab" href="#tab2">Smartphones</a></li>
                                            <li><a data-toggle="tab" href="#tab2">Cameras</a></li>
                                            <li><a data-toggle="tab" href="#tab2">Accessories</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- /section title -->

                            <!-- Products tab & slick -->
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="products-tabs">
                                        <!-- tab -->
                                        <div id="tab2" class="tab-pane fade in active">
                                            <div class="products-slick" data-nav="#slick-nav-2">
                                                <!-- product -->
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
                                                        <h3 class="product-name"><a href="publicProduct.jsp">product
                                                                name goes here</a></h3>
                                                        <h4 class="product-price">400.000đ <del
                                                                class="product-old-price">600.000đ</del></h4>
                                                        <button class="primary-btn order-submit"><i
                                                                class="fa fa-shopping-cart"></i> Add to
                                                            cart</button>
                                                        <button class="primary-btn order-submit"><i class=""></i>
                                                            Buy Now</button>
                                                    </div>
                                                </div>
                                                <!-- /product -->

                                                <!-- product -->
                                                <div class="product">
                                                    <div class="product-img">
                                                        <img src="./img/product07.png" alt="">
                                                        <div class="product-label">
                                                            <span class="new">NEW</span>
                                                        </div>
                                                    </div>
                                                    <div class="product-body">
                                                        <p class="product-category">Category</p>
                                                        <h3 class="product-name"><a href="publicProduct.jsp">product
                                                                name goes here</a></h3>
                                                        <h4 class="product-price">400.000đ <del
                                                                class="product-old-price">600.000đ</del></h4>
                                                        <button class="primary-btn order-submit"><i
                                                                class="fa fa-shopping-cart"></i> Add to
                                                            cart</button>
                                                        <button class="primary-btn order-submit"><i class=""></i>
                                                            Buy Now</button>
                                                    </div>
                                                </div>
                                                <!-- /product -->

                                                <!-- product -->
                                                <div class="product">
                                                    <div class="product-img">
                                                        <img src="./img/product08.png" alt="">
                                                        <div class="product-label">
                                                            <span class="sale">-30%</span>
                                                        </div>
                                                    </div>
                                                    <div class="product-body">
                                                        <p class="product-category">Category</p>
                                                        <h3 class="product-name"><a href="publicProduct.jsp">product
                                                                name goes here</a></h3>
                                                        <h4 class="product-price">400.000đ <del
                                                                class="product-old-price">600.000đ</del></h4>
                                                        <button class="primary-btn order-submit"><i
                                                                class="fa fa-shopping-cart"></i> Add to
                                                            cart</button>
                                                        <button class="primary-btn order-submit"><i class=""></i>
                                                            Buy Now</button>
                                                    </div>
                                                </div>
                                                <!-- /product -->

                                                <!-- product -->
                                                <div class="product">
                                                    <div class="product-img">
                                                        <img src="./img/product09.png" alt="">
                                                    </div>
                                                    <div class="product-body">
                                                        <p class="product-category">Category</p>
                                                        <h3 class="product-name"><a href="publicProduct.jsp">product
                                                                name goes here</a></h3>
                                                        <h4 class="product-price">400.000đ <del
                                                                class="product-old-price">600.000đ</del></h4>
                                                        <button class="primary-btn order-submit"><i
                                                                class="fa fa-shopping-cart"></i> Add to
                                                            cart</button>
                                                        <button class="primary-btn order-submit"><i class=""></i>
                                                            Buy Now</button>
                                                    </div>
                                                </div>
                                                <!-- /product -->

                                                <!-- product -->
                                                <div class="product">
                                                    <div class="product-img">
                                                        <img src="./img/product01.png" alt="">
                                                    </div>
                                                    <div class="product-body">
                                                        <p class="product-category">Category</p>
                                                        <h3 class="product-name"><a href="publicProduct.jsp">product
                                                                name goes here</a></h3>
                                                        <h4 class="product-price">400.000đ <del
                                                                class="product-old-price">600.000đ</del></h4>
                                                        <button class="primary-btn order-submit"><i
                                                                class="fa fa-shopping-cart"></i> Add to
                                                            cart</button>
                                                        <button class="primary-btn order-submit"><i class=""></i>
                                                            Buy Now</button>
                                                    </div>
                                                </div>
                                                <!-- /product -->
                                            </div>
                                            <div id="slick-nav-2" class="products-slick-nav"></div>
                                        </div>
                                        <!-- /tab -->
                                    </div>
                                </div>
                            </div>
                            <!-- /Products tab & slick -->
                        </div>
                        <!-- /row -->
                    </div>
                    <!-- /container -->
                </div>
                <!-- /SECTION -->

                <!-- SECTION -->
                <div class="section">
                    <!-- container -->
                    <div class="container">
                        <!-- row -->
                        <div class="row">
                            <div class="col-md-4 col-xs-6">
                                <div class="section-title">
                                    <h4 class="title">Top selling</h4>
                                    <div class="section-nav">
                                        <div id="slick-nav-3" class="products-slick-nav"></div>
                                    </div>
                                </div>

                                <div class="products-widget-slick" data-nav="#slick-nav-3">
                                    <div>
                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product07.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- /product widget -->

                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product08.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- /product widget -->

                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product09.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- product widget -->
                                    </div>

                                    <div>
                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product01.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- /product widget -->

                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product02.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- /product widget -->

                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product03.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- product widget -->
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-xs-6">
                                <div class="section-title">
                                    <h4 class="title">Top selling</h4>
                                    <div class="section-nav">
                                        <div id="slick-nav-4" class="products-slick-nav"></div>
                                    </div>
                                </div>

                                <div class="products-widget-slick" data-nav="#slick-nav-4">
                                    <div>
                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product04.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- /product widget -->

                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product05.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- /product widget -->

                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product06.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- product widget -->
                                    </div>

                                    <div>
                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product07.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- /product widget -->

                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product08.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- /product widget -->

                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product09.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- product widget -->
                                    </div>
                                </div>
                            </div>

                            <div class="clearfix visible-sm visible-xs"></div>

                            <div class="col-md-4 col-xs-6">
                                <div class="section-title">
                                    <h4 class="title">Top selling</h4>
                                    <div class="section-nav">
                                        <div id="slick-nav-5" class="products-slick-nav"></div>
                                    </div>
                                </div>

                                <div class="products-widget-slick" data-nav="#slick-nav-5">
                                    <div>
                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product01.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- /product widget -->

                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product02.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- /product widget -->

                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product03.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- product widget -->
                                    </div>

                                    <div>
                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product04.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- /product widget -->

                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product05.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- /product widget -->

                                        <!-- product widget -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="./img/product06.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del>
                                                </h4>
                                            </div>
                                        </div>
                                        <!-- product widget -->
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- /row -->
                    </div>
                    <!-- /container -->
                </div>
                <!-- /SECTION -->
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