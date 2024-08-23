<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

                <title>OSS - List Laptop</title>

                <!-- Google font -->
                <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

                <!-- Bootstrap -->
                <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />

                <!-- Slick -->
                <link type="text/css" rel="stylesheet" href="/css/slick.css" />
                <link type="text/css" rel="stylesheet" href="/css/slick-theme.css" />

                <!-- nouislider -->
                <link type="text/css" rel="stylesheet" href="/css/nouislider.min.css" />
                <style>
                    .primary-btn {
                        width: 100%;
                        /* Đảm bảo nút chiếm toàn bộ chiều rộng của phần tử cha */
                        margin-bottom: 10px;
                        /* Khoảng cách giữa các nút */
                    }
                </style>
                <!-- Font Awesome Icon -->
                <link rel="stylesheet" href="/css/font-awesome.min.css">

                <!-- Custom stlylesheet -->
                <link type="text/css" rel="stylesheet" href="/css/style.css" />

                <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
                <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
                <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

            </head>

            <body>
                <jsp:include page="../layout/header1.jsp" />
                <jsp:include page="../layout/navigation.jsp" />
                <!-- BREADCRUMB -->
                <div id="breadcrumb" class="section">
                    <!-- container -->
                    <div class="container">
                        <!-- row -->
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="breadcrumb-tree">
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">All Categories</a></li>
                                    <li><a href="#">Accessories</a></li>
                                    <li class="active">Headphones (227,490 Results)</li>
                                </ul>
                            </div>
                        </div>
                        <!-- /row -->
                    </div>
                    <!-- /container -->
                </div>
                <!-- /BREADCRUMB -->

                <!-- SECTION -->
                <div class="section">
                    <!-- container -->
                    <div class="container">
                        <!-- row -->
                        <div class="row">
                            <!-- ASIDE -->
                            <div id="aside" class="col-md-3">
                                <!-- aside Widget -->
                                <div class="aside">
                                    <h3 class="aside-title">Categories</h3>
                                    <div class="checkbox-filter">

                                        <div class="input-checkbox">
                                            <input type="checkbox" id="category-1">
                                            <label for="category-1">
                                                <span></span>
                                                Laptops
                                                <small>(120)</small>
                                            </label>
                                        </div>

                                        <div class="input-checkbox">
                                            <input type="checkbox" id="category-2">
                                            <label for="category-2">
                                                <span></span>
                                                Smartphones
                                                <small>(740)</small>
                                            </label>
                                        </div>

                                        <div class="input-checkbox">
                                            <input type="checkbox" id="category-3">
                                            <label for="category-3">
                                                <span></span>
                                                Cameras
                                                <small>(1450)</small>
                                            </label>
                                        </div>

                                        <div class="input-checkbox">
                                            <input type="checkbox" id="category-4">
                                            <label for="category-4">
                                                <span></span>
                                                Accessories
                                                <small>(578)</small>
                                            </label>
                                        </div>

                                        <div class="input-checkbox">
                                            <input type="checkbox" id="category-5">
                                            <label for="category-5">
                                                <span></span>
                                                Laptops
                                                <small>(120)</small>
                                            </label>
                                        </div>

                                        <div class="input-checkbox">
                                            <input type="checkbox" id="category-6">
                                            <label for="category-6">
                                                <span></span>
                                                Smartphones
                                                <small>(740)</small>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <!-- /aside Widget -->

                                <!-- aside Widget -->
                                <div class="aside">
                                    <h3 class="aside-title">Price</h3>
                                    <div class="price-filter">
                                        <div id="price-slider"></div>
                                        <div class="input-number price-min">
                                            <input id="price-min" type="number">
                                            <span class="qty-up">+</span>
                                            <span class="qty-down">-</span>
                                        </div>
                                        <span>-</span>
                                        <div class="input-number price-max">
                                            <input id="price-max" type="number">
                                            <span class="qty-up">+</span>
                                            <span class="qty-down">-</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- /aside Widget -->

                                <!-- aside Widget -->
                                <div class="aside">
                                    <h3 class="aside-title">Brand</h3>
                                    <div class="checkbox-filter">
                                        <div class="input-checkbox">
                                            <input type="checkbox" id="brand-1">
                                            <label for="brand-1">
                                                <span></span>
                                                SAMSUNG
                                                <small>(578)</small>
                                            </label>
                                        </div>
                                        <div class="input-checkbox">
                                            <input type="checkbox" id="brand-2">
                                            <label for="brand-2">
                                                <span></span>
                                                LG
                                                <small>(125)</small>
                                            </label>
                                        </div>
                                        <div class="input-checkbox">
                                            <input type="checkbox" id="brand-3">
                                            <label for="brand-3">
                                                <span></span>
                                                SONY
                                                <small>(755)</small>
                                            </label>
                                        </div>
                                        <div class="input-checkbox">
                                            <input type="checkbox" id="brand-4">
                                            <label for="brand-4">
                                                <span></span>
                                                SAMSUNG
                                                <small>(578)</small>
                                            </label>
                                        </div>
                                        <div class="input-checkbox">
                                            <input type="checkbox" id="brand-5">
                                            <label for="brand-5">
                                                <span></span>
                                                LG
                                                <small>(125)</small>
                                            </label>
                                        </div>
                                        <div class="input-checkbox">
                                            <input type="checkbox" id="brand-6">
                                            <label for="brand-6">
                                                <span></span>
                                                SONY
                                                <small>(755)</small>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <!-- /aside Widget -->

                                <!-- aside Widget -->
                                <div class="aside">
                                    <h3 class="aside-title">Top selling</h3>
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product01.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                    goes
                                                    here</a></h3>
                                            <h4 class="product-price">400.000đ <del
                                                    class="product-old-price">600.000đ</del></h4>
                                        </div>
                                    </div>

                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product02.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                    goes
                                                    here</a></h3>
                                            <h4 class="product-price">400.000đ <del
                                                    class="product-old-price">600.000đ</del></h4>
                                        </div>
                                    </div>

                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="./img/product03.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Category</p>
                                            <h3 class="product-name"><a href="publicProduct.jsp">product name
                                                    goes
                                                    here</a></h3>
                                            <h4 class="product-price">400.000đ <del
                                                    class="product-old-price">600.000đ</del></h4>
                                        </div>
                                    </div>
                                </div>
                                <!-- /aside Widget -->
                            </div>
                            <!-- /ASIDE -->

                            <!-- STORE -->
                            <div id="store" class="col-md-9">
                                <!-- store top filter -->
                                <div class="store-filter clearfix">
                                    <div class="store-sort">
                                        <label>
                                            Sort By:
                                            <select class="input-select">
                                                <option value="0">Popular</option>
                                                <option value="1">Position</option>
                                            </select>
                                        </label>

                                        <label>
                                            Show:
                                            <select class="input-select">
                                                <option value="0">20</option>
                                                <option value="1">50</option>
                                            </select>
                                        </label>
                                    </div>
                                    <ul class="store-grid">
                                        <li class="active"><i class="fa fa-th"></i></li>
                                        <li><a href="#"><i class="fa fa-th-list"></i></a></li>
                                    </ul>
                                </div>
                                <!-- /store top filter -->

                                <!-- store products -->
                                <div class="row">
                                    <!-- product -->
                                    <div class="col-md-4 col-xs-6">
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/product01.png" alt="">
                                                <div class="product-label">
                                                    <span class="sale">-30%</span>
                                                    <span class="new">NEW</span>
                                                </div>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product
                                                        name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del></h4>
                                                <button class="primary-btn order-submit"><i
                                                        class="fa fa-shopping-cart"></i> Add to cart</button>
                                                <button class="primary-btn order-submit"><i class=""></i> Buy
                                                    Now</button>
                                            </div>

                                        </div>
                                    </div>
                                    <!-- /product -->

                                    <!-- product -->
                                    <div class="col-md-4 col-xs-6">
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/product02.png" alt="">
                                                <div class="product-label">
                                                    <span class="new">NEW</span>
                                                </div>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product
                                                        name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del></h4>
                                                <button class="primary-btn order-submit"><i
                                                        class="fa fa-shopping-cart"></i> Add to cart</button>
                                                <button class="primary-btn order-submit"><i class=""></i> Buy
                                                    Now</button>
                                            </div>

                                        </div>
                                    </div>
                                    <!-- /product -->

                                    <div class="clearfix visible-sm visible-xs"></div>

                                    <!-- product -->
                                    <div class="col-md-4 col-xs-6">
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/product03.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product
                                                        name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del></h4>
                                                <button class="primary-btn order-submit"><i
                                                        class="fa fa-shopping-cart"></i> Add to cart</button>
                                                <button class="primary-btn order-submit"><i class=""></i> Buy
                                                    Now</button>
                                            </div>

                                        </div>
                                    </div>
                                    <!-- /product -->

                                    <div class="clearfix visible-lg visible-md"></div>

                                    <!-- product -->
                                    <div class="col-md-4 col-xs-6">
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/product04.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product
                                                        name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del></h4>
                                                <button class="primary-btn order-submit"><i
                                                        class="fa fa-shopping-cart"></i> Add to cart</button>
                                                <button class="primary-btn order-submit"><i class=""></i> Buy
                                                    Now</button>
                                            </div>

                                        </div>
                                    </div>
                                    <!-- /product -->

                                    <div class="clearfix visible-sm visible-xs"></div>

                                    <!-- product -->
                                    <div class="col-md-4 col-xs-6">
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/product05.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product
                                                        name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del></h4>
                                                <button class="primary-btn order-submit"><i
                                                        class="fa fa-shopping-cart"></i> Add to cart</button>
                                                <button class="primary-btn order-submit"><i class=""></i> Buy
                                                    Now</button>
                                            </div>

                                        </div>
                                    </div>
                                    <!-- /product -->

                                    <!-- product -->
                                    <div class="col-md-4 col-xs-6">
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/product06.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product
                                                        name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del></h4>
                                                <button class="primary-btn order-submit"><i
                                                        class="fa fa-shopping-cart"></i> Add to cart</button>
                                                <button class="primary-btn order-submit"><i class=""></i> Buy
                                                    Now</button>
                                            </div>

                                        </div>
                                    </div>
                                    <!-- /product -->

                                    <div class="clearfix visible-lg visible-md visible-sm visible-xs"></div>

                                    <!-- product -->
                                    <div class="col-md-4 col-xs-6">
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/product07.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product
                                                        name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del></h4>
                                                <button class="primary-btn order-submit"><i
                                                        class="fa fa-shopping-cart"></i> Add to cart</button>
                                                <button class="primary-btn order-submit"><i class=""></i> Buy
                                                    Now</button>
                                            </div>

                                        </div>
                                    </div>
                                    <!-- /product -->

                                    <!-- product -->
                                    <div class="col-md-4 col-xs-6">
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/product08.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product
                                                        name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del></h4>
                                                <button class="primary-btn order-submit"><i
                                                        class="fa fa-shopping-cart"></i> Add to cart</button>
                                                <button class="primary-btn order-submit"><i class=""></i> Buy
                                                    Now</button>
                                            </div>

                                        </div>
                                    </div>
                                    <!-- /product -->

                                    <div class="clearfix visible-sm visible-xs"></div>

                                    <!-- product -->
                                    <div class="col-md-4 col-xs-6">
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/product09.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">Category</p>
                                                <h3 class="product-name"><a href="publicProduct.jsp">product
                                                        name
                                                        goes here</a></h3>
                                                <h4 class="product-price">400.000đ <del
                                                        class="product-old-price">600.000đ</del></h4>
                                                <button class="primary-btn order-submit"><i
                                                        class="fa fa-shopping-cart"></i> Add to cart</button>
                                                <button class="primary-btn order-submit"><i class=""></i> Buy
                                                    Now</button>
                                            </div>

                                        </div>
                                    </div>
                                    <!-- /product -->
                                </div>
                                <!-- /store products -->

                                <!-- store bottom filter -->
                                <div class="store-filter clearfix">
                                    <span class="store-qty">Showing 20-100 products</span>
                                    <ul class="store-pagination">
                                        <li class="active">1</li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                    </ul>
                                </div>
                                <!-- /store bottom filter -->
                            </div>
                            <!-- /STORE -->
                        </div>
                        <!-- /row -->
                    </div>
                    <!-- /container -->
                </div>
                <!-- /SECTION -->

                <!-- NEWSLETTER -->
                <div id="newsletter" class="section">
                    <!-- container -->
                    <div class="container">
                        <!-- row -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="newsletter">
                                    <p>Sign Up for the <strong>NEWSLETTER</strong></p>
                                    <form>
                                        <input class="input" type="email" placeholder="Enter Your Email">
                                        <button class="newsletter-btn"><i class="fa fa-envelope"></i>
                                            Subscribe</button>
                                    </form>
                                    <ul class="newsletter-follow">
                                        <li>
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-instagram"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-pinterest"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- /row -->
                    </div>
                    <!-- /container -->
                </div>
                <!-- /NEWSLETTER -->

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