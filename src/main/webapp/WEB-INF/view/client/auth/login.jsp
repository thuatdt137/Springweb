<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
            <meta name="author" content="AdminKit">
            <meta name="keywords"
                content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

            <link rel="preconnect" href="https://fonts.gstatic.com">
            <link rel="shortcut icon" href="img/icons/icon-48x48.png" />

            <link rel="canonical" href="pages-sign-in.html" />

            <title>Sign In</title>

            <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap"
                rel="stylesheet">

            <!-- Bootstrap CSS -->
            <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

            <!-- Custom CSS -->
            <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
            <script src="js/settings.js"></script>
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
                                    <h1 class="h2">Sign In Now</h1>
                                    <p class="lead">
                                        Sign Up Your Account <a href="/register">Click here</a>
                                    </p>
                                </div>

                                <div class="card">
                                    <div class="card-body">
                                        <div class="m-sm-4">
                                            <form method="post" action="/login">
                                                <c:if test="${param.error != null}">
                                                    <div class="my-2" style="color: red;">Invalid email or password.
                                                    </div>
                                                </c:if>
                                                <c:if test="${param.logout != null}">
                                                    <div class="my-2" style="color: greenyellow;">Logout success.
                                                    </div>
                                                </c:if>
                                                <div class="mb-3">
                                                    <label class="form-label">Email</label>
                                                    <input class="form-control form-control-lg" type="email"
                                                        name="username" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Password</label>
                                                    <input class="form-control form-control-lg" type="password"
                                                        name="password" />
                                                    <small>
                                                        <a href="#" data-toggle="modal"
                                                            data-target="#passwordResetModal">Forgot password?</a>
                                                    </small>
                                                </div>
                                                <div>
                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                        value="${_csrf.token}" />
                                                </div>

                                                <div class="text-center mt-3">
                                                    <button type="submit" class="btn btn-lg btn-primary">Sign
                                                        in</button>
                                                    <!-- <button type="submit" class="btn btn-lg btn-primary">Sign in</button> -->
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <!-- Bootstrap JS -->
            <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

            <script src="/js/app.js"></script>
        </body>

        </html>