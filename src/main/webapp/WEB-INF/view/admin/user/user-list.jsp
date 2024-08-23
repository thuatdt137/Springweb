<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

                <title>Manage User - TShop</title>

                <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
                <!-- Bootstrap JS and dependencies -->
                <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
                <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap"
                    rel="stylesheet">
                <link class="stylesheet" href="/css/light.css" rel="stylesheet">
                <script src="/js/settings.js"></script>
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
                            <div class="container-fluid p-0">
                                <h1 class="h3 mb-3">Manage Account</h1>
                                <div class="row">
                                    <div class="card">
                                        <div class="card-header">
                                            <form class="d-inline-block">
                                                <div class="input-group input-group-navbar">
                                                    <select class="form-select" id="filterRole">
                                                        <option value="">All Role</option>
                                                        <option value="admin">Sale staff</option>
                                                        <option value="user">User</option>
                                                        <option value="guest">Guest</option>
                                                    </select>
                                                </div>
                                            </form>
                                            <form class="d-inline-block">
                                                <div class="input-group input-group-navbar">
                                                    <select class="form-select" id="filterStatus">
                                                        <option value="">All Status</option>
                                                        <option value="active">Active</option>
                                                        <option value="inactive">Inactive</option>
                                                    </select>
                                                </div>
                                            </form>
                                            <form class="d-inline-block">
                                                <div class="input-group input-group-navbar">
                                                    <input type="text" class="form-control" placeholder="Search…"
                                                        aria-label="Search" id="searchInput">
                                                    <button class="btn" type="button" id="searchButton">
                                                        <i class="align-middle" data-feather="search"></i>
                                                    </button>
                                                </div>
                                            </form>
                                            <a type="button" class="btn btn-square btn-success float-right"
                                                href="/admin/user/create">
                                                New Account
                                            </a>
                                        </div>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Full Name</th>
                                                    <th>Email</th>
                                                    <th>Mobile</th>
                                                    <th><select class="form-select border-0" required>
                                                            <c:forEach items="${roles}" var="role">
                                                                <option value="${role.id}">${role.name}</option>
                                                            </c:forEach>
                                                        </select></th>
                                                    <th>Status</th>
                                                    <th>Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${users}" var="user">

                                                    <tr>
                                                        <td>${user.id}</td>
                                                        <td>${user.fullName}</td>
                                                        <td>${user.email}</td>
                                                        <td>${user.phone}</td>
                                                        <th>${user.role.name}</th>
                                                        <th>${user.status == 0 ? "Inactive":"Active"}</th>
                                                        <td class="table-action">
                                                            <a href="/admin/user/${user.id}"><i class="align-middle"
                                                                    data-feather="eye"></i></a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination pagination-sm">
                                        <li class="page-item"><a class="page-link" href="#"><i
                                                    class="fas fa-angle-left"></i></a></li>
                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item active"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                                        <li class="page-item"><a class="page-link" href="#"><i
                                                    class="fas fa-angle-right"></i></a></li>
                                    </ul>
                                </nav>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />

                    </div>
                </div>

                <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
                <script src="/js/app.js"></script>
                <script>
                    $(document).ready(function () {
                        $('#datatables-responsive').DataTable();
                    });

                    function confirmDelete(userId) {
                        if (confirm('Are you sure you want to delete this user?')) {
                            window.location.href = '/admin/user/delete/' + userId;
                        }
                    }
                </script>
            </body>

            </html>