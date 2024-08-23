<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

                <title>OSS - Manage User</title>

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

                    gtag('config', 'UA-120946860-10', {
                        'anonymize_ip': true
                    });
                </script>
                <!-- Bootstrap CSS (necessary for the modal) -->
                <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
            </head>

            <body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-layout="default">
                <div class="wrapper">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div class="main">
                        <jsp:include page="../layout/header.jsp" />
                        <main class="content">
                            <div class="container-fluid p-0">
                                <div class="row">
                                    <div class="flex">
                                        <div class="tab-content">
                                            <div class="tab-pane fade show active" id="productdetail" role="tabpanel">
                                                <div class="card">
                                                    <form:form modelAttribute="updateProduct"
                                                        action="/admin/product/update" method="post"
                                                        enctype="multipart/form-data">
                                                        <div class="card-header">
                                                            <h5 class="card-title mb-0">New Product</h5>
                                                            <form:hidden path="id" />
                                                            <div class="row mt-4">
                                                                <div class="row mb-3">
                                                                    <div class="col-md-4 mb-3 text-center">
                                                                        <img id="productPreview" alt="Product Image"
                                                                            class="img-thumbnail mb-2"
                                                                            style="max-width: 200px;"
                                                                            src="${updateProduct.image}">
                                                                        <br>
                                                                        <label for="productFile"
                                                                            class="form-label"><a>Choose
                                                                                from...</a></label>
                                                                        <input type="file" class="form-control d-none"
                                                                            id="productFile" accept="image/*"
                                                                            onchange="previewImage(event)"
                                                                            name="productFile">
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <div class="row mb-3">
                                                                            <div class="col-md-6">
                                                                                <c:set var="errorName">
                                                                                    <form:errors path="name"
                                                                                        cssClass="invalid-feedback" />
                                                                                </c:set>
                                                                                <label for="name"
                                                                                    class="form-label">Product
                                                                                    Name</label>
                                                                                <form:input
                                                                                    class="form-control ${not empty errorName ? 'is-invalid' : ''}"
                                                                                    path="name" />
                                                                                ${errorName}
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <c:set var="errorPrice">
                                                                                    <form:errors path="price"
                                                                                        cssClass="invalid-feedback" />
                                                                                </c:set>
                                                                                <label for="price"
                                                                                    class="form-label">Price</label>
                                                                                <form:input
                                                                                    class="form-control ${not empty errorPrice ? 'is-invalid' : ''}"
                                                                                    path="price" />
                                                                                ${errorPrice}
                                                                            </div>
                                                                        </div>
                                                                        <div class="row mb-3">
                                                                            <div class="col-md-6">
                                                                                <c:set var="errorQuantity">
                                                                                    <form:errors path="quantity"
                                                                                        cssClass="invalid-feedback" />
                                                                                </c:set>
                                                                                <label for="quantity"
                                                                                    class="form-label">Quantity</label>
                                                                                <form:input
                                                                                    class="form-control ${not empty errorQuantity ? 'is-invalid' : ''}"
                                                                                    path="quantity" />
                                                                                ${errorQuantity}
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <label for="factory"
                                                                                    class="form-label">Factory</label>
                                                                                <form:select class="form-select"
                                                                                    path="factory">
                                                                                    <form:option value="APPLE">Apple
                                                                                    </form:option>
                                                                                    <form:option value="HP">Hp
                                                                                    </form:option>
                                                                                    <form:option value="DELL">Dell
                                                                                    </form:option>
                                                                                    <form:option value="OPPO">Oppo
                                                                                    </form:option>
                                                                                    <form:option value="ACER">Acer
                                                                                    </form:option>
                                                                                    <form:option value="ASUS">Asus
                                                                                    </form:option>
                                                                                    <form:option value="LENOVO">Lenovo
                                                                                    </form:option>
                                                                                    <form:option value="SAMSUNG">Samsung
                                                                                    </form:option>
                                                                                    <form:option value="NOKIA">Nokia
                                                                                    </form:option>
                                                                                    <form:option value="XIAOMI">Xiaomi
                                                                                    </form:option>
                                                                                    <form:option value="HUAWEI">Huawei
                                                                                    </form:option>
                                                                                    <form:option value="MICROSOFT">
                                                                                        Microsoft
                                                                                    </form:option>
                                                                                </form:select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row mb-3">
                                                                            <div class="col-md-6">
                                                                                <label for="target"
                                                                                    class="form-label">Target</label>
                                                                                <form:select class="form-select"
                                                                                    path="target">
                                                                                    <form:option value="OFFICE">Office
                                                                                    </form:option>
                                                                                    <form:option
                                                                                        value="GAMING-GRAPHIC-DESIGN">
                                                                                        Gaming - Graphic Design
                                                                                    </form:option>
                                                                                    <form:option value="BUSINESS">
                                                                                        Business
                                                                                    </form:option>
                                                                                    <form:option value="SLIM">Slim
                                                                                    </form:option>
                                                                                    <form:option value="ENTERTAINMENT">
                                                                                        Entertainment
                                                                                    </form:option>
                                                                                </form:select>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <label for="category"
                                                                                    class="form-label">Category</label>
                                                                                <form:select class="form-select"
                                                                                    path="category.id" id="category"
                                                                                    items="${categories}" itemValue="id"
                                                                                    itemLabel="name" />
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 mb-3">
                                                                    <c:set var="errorShortDesc">
                                                                        <form:errors path="shortDesc"
                                                                            cssClass="invalid-feedback" />
                                                                    </c:set>
                                                                    <label for="shortDesc" class="form-label">Short
                                                                        Description</label>
                                                                    <form:textarea
                                                                        class="form-control ${not empty errorShortDesc ? 'is-invalid' : ''}"
                                                                        path="shortDesc" rows="2" />
                                                                    ${errorShortDesc}
                                                                </div>
                                                                <div class="col-md-12 mb-3">
                                                                    <c:set var="errorDetailDesc">
                                                                        <form:errors path="detailDesc"
                                                                            cssClass="invalid-feedback" />
                                                                    </c:set>
                                                                    <label for="detailDesc" class="form-label">Detail
                                                                        Description</label>
                                                                    <form:textarea
                                                                        class="form-control ${not empty errorDetailDesc ? 'is-invalid' : ''}"
                                                                        path="detailDesc" rows="4" />
                                                                    ${errorDetailDesc}
                                                                </div>
                                                            </div>
                                                            <button type="submit"
                                                                class="btn btn-primary me-2">Save</button>
                                                            <a href="/admin/product"
                                                                class="btn btn-secondary">Cancel</a>
                                                        </div>
                                                    </form:form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="/js/app.js"></script>
                <script>
                    $(document).ready(() => {
                        const productFile = $("#productFile");
                        productFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#productPreview").attr("src", imgURL);
                            $("#productPreview").css({ "display": "block" });
                            $("#productPreview").css({ "margin-left": "auto" });
                            $("#productPreview").css({ "margin-right": "auto" });
                        });
                    });
                </script>
            </body>

            </html>