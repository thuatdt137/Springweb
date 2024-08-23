<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

                    <title>Electro - HTML Ecommerce Template</title>
                    <style>
                        .btn.btn-link {
                            float: right;
                        }
                    </style>
                    <!-- Google font -->
                    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

                    <!-- Bootstrap -->
                    <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />

                    <!-- Slick -->
                    <link type="text/css" rel="stylesheet" href="/css/slick.css" />
                    <link type="text/css" rel="stylesheet" href="/css/slick-theme.css" />

                    <!-- nouislider -->
                    <link type="text/css" rel="stylesheet" href="/css/nouislider.min.css" />

                    <!-- Font Awesome Icon -->
                    <link rel="stylesheet" href="/css/font-awesome.min.css">

                    <!-- Custom stlylesheet -->
                    <link type="text/css" rel="stylesheet" href="/css/style.css" />
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
                                <div class="col-md-12 mt-5">
                                    <div class="alert alert-success">Thank you for your order, the order has been
                                        confirmed successfully.</div>
                                    <div class="mt-4">
                                        <i class="fa fa-arrow-left"></i>
                                        <a href="/" id="back-to-cart">Back to HomePage</a>
                                    </div>
                                </div>
                            </div>
                            <!-- /row -->
                        </div>
                        <!-- /container -->
                    </div>
                    <!-- /BREADCRUMB -->

                    <jsp:include page="../layout/footer1.jsp" />

                    <!-- jQuery Plugins -->
                    <script src="/js/jquery.min.js"></script>
                    <script src="/js/bootstrap.min.js"></script>
                    <script src="/js/slick.min.js"></script>
                    <script src="/js/nouislider.min.js"></script>
                    <script src="/js/jquery.zoom.min.js"></script>
                    <script src="./js/main.js"></script>
                    <i class="bi bi-trash3"></i>
                </body>

                </html>