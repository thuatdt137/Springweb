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
                                <div class="col-md-12">
                                    <h3 class="breadcrumb-header">Shopping Cart</h3>
                                    <ul class="breadcrumb-tree">
                                        <li><a href="/">Home</a></li>
                                        <li class="active">Cart</li>
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

                                <div class="col-md-12">
                                    <a href="/" class="btn btn-link"><strong>Choose other
                                            products</strong></a>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">Picture</th>
                                                <th scope="col">Product</th>
                                                <th scope="col">Unit Price</th>
                                                <th scope="col">Quantity</th>
                                                <th scope="col">Total Price</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${cartDetails}" var="cartDetail" varStatus="status">
                                                <tr>
                                                    <td>
                                                        <img src="${cartDetail.product.image}" alt="" width="70px">
                                                    </td>
                                                    <td>
                                                        <h4 class="product-name"><a
                                                                href="/publicProducts/${cartDetail.product.id}"
                                                                style="text-transform: uppercase">${cartDetail.product.name}</a>
                                                        </h4>
                                                        <a>${cartDetail.product.category.name};
                                                            ${cartDetail.product.quantity} available</a>
                                                    </td>
                                                    <td>
                                                        <fmt:formatNumber type="number"
                                                            value="${cartDetail.product.price}" /> $
                                                    </td>
                                                    <td>
                                                        <div class="input-group quantity mt-4" style="width: 100px;">
                                                            <div class="input-group-btn">
                                                                <button
                                                                    class="btn btn-sm btn-minus rounded-circle bg-light border-0">
                                                                    <i class="fa fa-minus"></i>
                                                                </button>
                                                            </div>
                                                            <input type="text"
                                                                class="form-control form-control-sm text-center border-0"
                                                                value="${cartDetail.quantity}"
                                                                data-cart-detail-id="${cartDetail.id}"
                                                                data-cart-detail-price="${cartDetail.price}"
                                                                data-cart-detail-index="${status.index}">
                                                            <div class="input-group-btn">
                                                                <button
                                                                    class="btn btn-sm btn-plus rounded-circle bg-light border-0">
                                                                    <i class="fa fa-plus"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0" data-cart-detail-id="${cartDetail.id}">
                                                            <fmt:formatNumber type="number"
                                                                value="${cartDetail.price * cartDetail.quantity}" /> $
                                                        </p>

                                                    </td>
                                                    <td>
                                                        <form method="post"
                                                            action="/delete-cart-product/${cartDetail.id}">
                                                            <input type="hidden" name="${_csrf.parameterName}"
                                                                value="${_csrf.token}" />
                                                            <button type="submit" class="btn btn-danger"><i
                                                                    class="fa fa-trash danger"></i></button>
                                                        </form>

                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <div>
                                    <c:choose>
                                        <c:when test="${sessionScope.sum == 0}">
                                            <div><strong>There are no products in the cart.</strong></div>
                                        </c:when>
                                        <c:otherwise>
                                            <form:form action="/confirm-checkout" method="post" modelAttribute="cart">
                                                <input type="hidden" name="${_csrf.parameterName}"
                                                    value="${_csrf.token}" />
                                                <div style="display: none;">
                                                    <c:forEach var="cartDetail" items="${cart.cartDetails}"
                                                        varStatus="status">
                                                        <div class="mb-3">
                                                            <div class="form-group">
                                                                <label>Id:</label>
                                                                <form:input class="form-control" type="text"
                                                                    value="${cartDetail.id}"
                                                                    path="cartDetails[${status.index}].id" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Quantity:</label>
                                                                <form:input class="form-control" type="text"
                                                                    value="${cartDetail.quantity}"
                                                                    path="cartDetails[${status.index}].quantity" />
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                                <div class="col-md-10">
                                                    <button type="submit"
                                                        class="primary-btn order-submit">Checkout</button>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="order-col">
                                                        <div><strong>SUB TOTAL</strong></div>
                                                        <div><strong class="order-total" style="color: #518BE1;"
                                                                data-cart-total-price="${totalPrice}">
                                                                <fmt:formatNumber type="number" value="${totalPrice}" />
                                                                $
                                                            </strong>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form:form>

                                        </c:otherwise>

                                    </c:choose>
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
                    <script src="./js/main.js"></script>
                    <i class="bi bi-trash3"></i>
                    <script>
                        $('.quantity button').on('click', function () {
                            let change = 0;
                            var button = $(this);
                            var oldValue = parseFloat(button.parent().parent().find('input').val()) || 1;
                            var newVal;

                            if (button.hasClass('btn-plus')) {
                                newVal = oldValue + 1;
                                change = 1;
                            } else {
                                if (oldValue > 1) {
                                    newVal = oldValue - 1;
                                    change = -1;
                                } else {
                                    newVal = 1;
                                }
                            }

                            const input = button.parent().parent().find('input');
                            input.val(newVal);


                            //set form index
                            const index = input.attr("data-cart-detail-index");
                            var elString = `cartDetails` + index + `.quantity`;
                            const el = document.getElementById(elString);
                            console.log(el);
                            $(el).val(newVal);




                            // Lấy giá và ID
                            const price = parseFloat(input.attr("data-cart-detail-price")) || 0;
                            const id = input.attr("data-cart-detail-id");

                            console.log("Old Value: ", oldValue);
                            console.log("New Value: ", newVal);
                            console.log("Price per unit: ", price);
                            console.log("Input id: ", id);

                            var idd = `p[data-cart-detail-id='` + id + `']`;

                            const priceElement = $(idd);
                            if (priceElement.length) {
                                const newPrice = price * newVal;
                                console.log("New Total Price: ", newPrice);
                                priceElement.text(formatCurrency(newPrice.toFixed(2)) + " $");
                            } else {
                                console.log("Price element not found for ID: ", id);
                            }

                            const totalPriceElement = $(`strong[data-cart-total-price]`);

                            if (totalPriceElement && totalPriceElement.length) {
                                const currentTotal = totalPriceElement.first().attr("data-cart-total-price");
                                let newTotal = +currentTotal;
                                if (change === 0) {
                                    newTotal = +currentTotal;
                                } else {
                                    newTotal = change * (+price) + (+currentTotal);
                                }

                                change = 0;

                                totalPriceElement?.each(function (index, element) {
                                    $(totalPriceElement[index]).text(formatCurrency(newTotal.toFixed(2)) + " $");

                                    $(totalPriceElement[index]).attr("data-cart-total-price", newTotal);
                                });
                            }

                        });

                        function formatCurrency(value) {
                            const formatter = new Intl.NumberFormat('en-EN', {
                                style: 'decimal',
                                minimumFractionDigits: 0,
                            });

                            return formatter.format(value);
                        }

                    </script>
                </body>

                </html>