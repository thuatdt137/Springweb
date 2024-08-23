<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

                <link rel="canonical" href="tables-bootstrap.html" />

                <title>TShop - Manage User - User Details</title>

                <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
                <!-- Bootstrap JS and dependencies -->
                <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
                <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap"
                    rel="stylesheet">
                <link class="stylesheet" href="/css/light.css" rel="stylesheet">
                <script src="/js/settings.js"></script>
                <style>
                    body {
                        opacity: 0;
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
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#avatarPreview").attr("src", imgURL);
                            $("#avatarPreview").css({ "display": "block" });
                        });
                    });
                </script>
            </head>

            <body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-layout="default">
                <div class="wrapper">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div class="main">
                        <jsp:include page="../layout/header.jsp" />
                        <main class="content">
                            <div class="container">
                                <h1 class="h3 mb-3">Create User</h1>
                                <div class="row">
                                    <form:form class="card" method="post" action="/admin/user/create"
                                        modelAttribute="newUser">
                                        <div class="card-header">
                                            <h4 class="modal-title"></h4>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-md-6">
                                                <c:set var="errorName">
                                                    <form:errors path="fullName" cssClass="invalid-feedback" />
                                                </c:set>
                                                <label for="fullName">Full Name*</label>
                                                <form:input
                                                    class="form-control ${not empty errorName ? 'is-invalid' : ''}"
                                                    path="fullName" />
                                                ${errorName}
                                            </div>
                                            <div class="form-group col-md-6">
                                                <c:set var="errorEmail">
                                                    <form:errors path="email" cssClass="invalid-feedback" />
                                                </c:set>
                                                <label for="email">Email*</label>
                                                <form:input
                                                    class="form-control ${not empty errorEmail ? 'is-invalid' : ''}"
                                                    path="email" />
                                                ${errorEmail}
                                            </div>
                                            <div class="form-group col-md-6">
                                                <c:set var="errorPassword">
                                                    <form:errors path="password" cssClass="invalid-feedback" />
                                                </c:set>
                                                <label for="password">Password</label>
                                                <form:input
                                                    class="form-control ${not empty errorPassword ? 'is-invalid' : ''}"
                                                    path="password" type="password" />
                                                ${errorPassword}
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="role">Role</label>
                                                <form:select class="form-select" path="role.id" id="role"
                                                    items="${roles}" itemValue="id" itemLabel="name" />
                                            </div>
                                        </div>

                                        <div class="card-footer">
                                            <a class="btn btn-outline-secondary col-1" href="/admin/user">Back</a>
                                            <button class="btn btn-success col-1" type="submit">Save</button>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>

                <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
                <script src="/js/app.js"></script>
            </body>

            </html>