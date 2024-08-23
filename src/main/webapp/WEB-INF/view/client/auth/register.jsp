<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <meta name="description" content="Responsive Admin & Dashboard Template based on Bootstrap 5">
                <meta name="author" content="AdminKit">
                <meta name="keywords"
                    content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

                <link rel="preconnect" href="https://fonts.gstatic.com">
                <link rel="shortcut icon" href="img/icons/icon-48x48.png" />

                <link rel="canonical" href="pages-sign-up.html" />

                <title>OSS - Sign Up</title>

                <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap"
                    rel="stylesheet">
                <link class="stylesheet" href="/css/light.css" rel="stylesheet">
                <script src="/js/settings.js"></script>
                <style>
                    body {
                        opacity: 0;
                    }

                    /* Màu sắc cho nút Facebook */
                    .facebook {
                        background-color: #3b5998;
                        color: white;
                        border: none;
                    }

                    .facebook:hover {
                        background-color: #2d4373;
                        color: white;
                    }

                    /* Màu sắc cho nút Google */
                    .google-plus {
                        background-color: #db4437;
                        color: white;
                        border: none;
                    }

                    .google-plus:hover {
                        background-color: #c23321;
                        color: white;
                    }
                </style>
                <!-- END SETTINGS -->
                <script async src="https://www.googletagmanager.com/gtag/js?id=UA-120946860-10"></script>
                <script>
                    window.dataLayer = window.dataLayer || [];
                    function gtag() {
                        dataLayer.push(arguments);
                    }
                    gtag('js', new Date());

                    gtag('config', 'UA-120946860-10', { 'anonymize_ip': true });
                </script>
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            </head>

            <body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-layout="default">
                <main class="d-flex w-100 h-100">
                    <div class="container d-flex flex-column">
                        <div class="row vh-100">
                            <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
                                <div class="d-table-cell align-middle">

                                    <div class="text-center mt-4">
                                        <h1 class="h2">Sign Up Now</h1>
                                        <p class="lead">
                                            Login Your Account <a href="http://localhost:8080/SWR/login.jsp">Click
                                                here</a>
                                        </p>
                                    </div>

                                    <div class="card">
                                        <div class="card-body">
                                            <div class="m-sm-4">
                                                <form:form modelAttribute="registerUser" method="post"
                                                    action="/register">
                                                    <c:set var="errorPassword">
                                                        <form:errors path="confirmPassword"
                                                            cssClass="invalid-feedback" />
                                                    </c:set>
                                                    <c:set var="errorEmail">
                                                        <form:errors path="email" cssClass="invalid-feedback" />
                                                    </c:set>
                                                    <c:set var="errorFirstName">
                                                        <form:errors path="firstName" cssClass="invalid-feedback" />
                                                    </c:set>
                                                    <c:set var="errorLastName">
                                                        <form:errors path="lastName" cssClass="invalid-feedback" />
                                                    </c:set>
                                                    <div class="mb-3">
                                                        <label class="form-label">First Name*</label>
                                                        <form:input
                                                            class="form-control form-control-lg ${not empty errorFirstName ? 'is-invalid' : ''}"
                                                            type="text" path="firstName"
                                                            placeholder="Enter your first name." />
                                                        ${errorFirstName}
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Last Name*</label>
                                                        <form:input
                                                            class="form-control form-control-lg ${not empty errorLastName ? 'is-invalid' : ''}"
                                                            type="text" path="lastName"
                                                            placeholder="Enter your last name." />
                                                        ${errorLastName}
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Email*</label>
                                                        <form:input
                                                            class="form-control form-control-lg ${not empty errorEmail ? 'is-invalid' : ''}"
                                                            type="email" path="email" placeholder="Enter your email." />
                                                        ${errorEmail}
                                                    </div>

                                                    <div class="mb-3">
                                                        <label class="form-label">Password*</label>
                                                        <form:input
                                                            class="form-control form-control-lg ${not empty errorPassword ? 'is-invalid' : ''}"
                                                            type="password" path="password"
                                                            placeholder="Enter password." />
                                                        ${errorPassword}
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Confirm Password*</label>
                                                        <form:input class="form-control form-control-lg" type="password"
                                                            path="confirmPassword" placeholder="Confirm password." />
                                                    </div>

                                                    <div class="text-center mt-3">
                                                        <button type="submit" class="btn btn-lg btn-primary">Sign
                                                            up</button>
                                                        <!-- <button type="submit" class="btn btn-lg btn-primary">Sign up</button> -->
                                                    </div>

                                                </form:form>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </main>

                <script src="/js/app.js"></script>
                <script src="https://www.google.com/recaptcha/api.js" async defer></script>
            </body>

            </html>