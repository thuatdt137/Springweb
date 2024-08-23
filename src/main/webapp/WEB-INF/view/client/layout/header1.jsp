<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>

        <body>
            <!-- HEADER -->
            <header>
                <!-- MAIN HEADER -->
                <div id="header">
                    <!-- container -->
                    <div class="container">
                        <!-- row -->
                        <div class="row">
                            <!-- LOGO -->
                            <div class="col-md-3">
                                <div class="header-logo">
                                    <a href="/" class="logo">
                                        <img src="./img/logo.png" alt="">
                                    </a>
                                </div>
                            </div>
                            <!-- /LOGO -->

                            <!-- SEARCH BAR -->
                            <div class="col-md-5">
                                <div class="header-search">
                                    <form action="publicProducts.jsp">
                                        <input class="input" placeholder="Search here"
                                            style="border-radius: 40px 0 0 40px;">
                                        <button class="search-btn">Search</button>
                                    </form>
                                </div>
                            </div>
                            <!-- /SEARCH BAR -->


                            <!-- ACCOUNT -->
                            <div class="col-md-4 clearfix">
                                <div class="header-ctn">

                                    <c:choose>
                                        <c:when test="${not empty pageContext.request.userPrincipal}">
                                            <!-- Cart -->
                                            <div class="dropdown">
                                                <a href="/cart" class="dropdown-toggle" data-toggle="dropdown"
                                                    aria-expanded="true">
                                                    <i class="fa fa-shopping-cart"></i>
                                                    <span>Your Cart</span>
                                                    <div class="qty">${sessionScope.sum}</div>
                                                </a>
                                            </div>
                                            <!-- /Cart -->

                                            <!-- My Account -->
                                            <div class="dropdown">
                                                <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"
                                                    data-bs-toggle="dropdown" type="button" id="dropdownMenuButton1">
                                                    <i class="fa fa-user-o"></i>
                                                    <span>My Account</span>
                                                </a>
                                                <ul class="dropdown-menu cart-dropdown"
                                                    aria-labelledby="dropdownMenuButton1" style="width: 130px">
                                                    <li class="d-flex align-items-center flex-column"
                                                        style="min-width: 50px;">
                                                        <img style="width: 30px; height: 30px; border-radius: 50%; overflow: hidden;"
                                                            src="${sessionScope.avatar}" />
                                                        <span class="text-center my-3">
                                                            <c:out value="${sessionScope.fullName}" />
                                                        </span>

                                                    </li>
                                                    <li><a class="dropdown-item" href="#">Action</a></li>
                                                    <li><a class="dropdown-item" href="#">Action</a></li>
                                                    <form method="post" action="/logout" class="dropdown-item">
                                                        <input type="hidden" name="${_csrf.parameterName}"
                                                            value="${_csrf.token}" />
                                                        <button style="outline: none;">Logout</button><br>
                                                    </form>
                                                </ul>
                                            </div>

                                            <!-- /My Account -->
                                        </c:when>
                                        <c:otherwise>
                                            <!-- My Account -->
                                            <div class="logo">
                                                <a href="signUp.jsp">Sign Up</a>
                                            </div>
                                            <div class="logo">
                                                <a href="/login">Sign In</a>
                                            </div>
                                            <!-- /My Account -->
                                        </c:otherwise>
                                    </c:choose>

                                    <!-- Menu Toogle -->
                                    <div class="menu-toggle">
                                        <a href="#">
                                            <i class="fa fa-bars"></i>
                                            <span>Menu</span>
                                        </a>
                                    </div>
                                    <!-- /Menu Toogle -->
                                </div>
                            </div>
                            <!-- /ACCOUNT -->
                        </div>
                        <!-- row -->
                    </div>
                    <!-- container -->
                </div>
                <!-- /MAIN HEADER -->
            </header>
            <!-- /HEADER -->
        </body>

        </html>