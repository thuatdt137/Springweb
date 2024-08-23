<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                    <link rel="canonical" href="tables-bootstrap.html" />

                    <title>Manage Product - TShop</title>

                    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
                        rel="stylesheet">
                    <!-- Bootstrap JS and dependencies -->
                    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
                    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap"
                        rel="stylesheet">
                    <link class="stylesheet" href="/css/light.css" rel="stylesheet">
                    <script src="/js/settings.js"></script>
                </head>

                <body data-theme="default" data-layout="fluid" data-sidebar-position="left"
                    data-sidebar-layout="default">



                    <div class="wrapper">
                        <jsp:include page="../layout/sidebar.jsp" />
                        <div class="main">
                            <jsp:include page="../layout/header.jsp" />

                            <main class="content">
                                <div class="container-fluid p-0">
                                    <h1 class="h3 mb-3">Manage Products</h1>

                                    <div class="row">
                                        <div class="card">
                                            <div class="card-header d-flex justify-content-between">
                                                <form class="d-inline-block">
                                                    Order detail with id = ${id}
                                                </form>
                                            </div>
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>Product</th>
                                                        <th>Name</th>
                                                        <th>Price</th>
                                                        <th>Quantity</th>
                                                        <th>Total Price</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="productTableBody">
                                                    <c:forEach items="${orderDetails}" var="orderDetail">
                                                        <tr>
                                                            <td><img src="${orderDetail.product.image}"
                                                                    style="width: 100px;" /></td>
                                                            <td>${orderDetail.product.name}</td>
                                                            <td>
                                                                <fmt:formatNumber type="number"
                                                                    value="${orderDetail.price}" /> đ
                                                            </td>
                                                            <td>${orderDetail.quantity}</td>
                                                            <td>
                                                                <fmt:formatNumber type="number"
                                                                    value="${orderDetail.price * orderDetail.quantity}" />
                                                                đ
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
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
                            </main>
                            <jsp:include page="../layout/footer.jsp" />
                        </div>
                    </div>

                    <script src="/js/app.js"></script>
                    <script>
                        function deleteProduct(productId) {
                            // Implement your delete product logic here
                            alert('Delete product with ID: ' + productId);
                        }
                    </script>
                </body>

                </html>